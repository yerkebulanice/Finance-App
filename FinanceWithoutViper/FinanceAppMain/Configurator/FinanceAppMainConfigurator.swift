//
//  FinanceAppMainFinanceAppMainConfigurator.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class FinanceAppMainModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FinanceAppMainViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: FinanceAppMainViewController) {

        let router = FinanceAppMainRouter()

        let presenter = FinanceAppMainPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FinanceAppMainInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

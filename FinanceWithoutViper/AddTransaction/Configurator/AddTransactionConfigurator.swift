//
//  AddTransactionAddTransactionConfigurator.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddTransactionModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AddTransactionViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AddTransactionViewController) {

        let router = AddTransactionRouter()

        let presenter = AddTransactionPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AddTransactionInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

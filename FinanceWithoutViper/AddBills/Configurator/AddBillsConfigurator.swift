//
//  AddBillsAddBillsConfigurator.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddBillsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AddBillsViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AddBillsViewController) {

        let router = AddBillsRouter()

        let presenter = AddBillsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AddBillsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

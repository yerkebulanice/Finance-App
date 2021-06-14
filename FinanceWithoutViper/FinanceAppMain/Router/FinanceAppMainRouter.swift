//
//  FinanceAppMainFinanceAppMainRouter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//
import UIKit
class FinanceAppMainRouter: FinanceAppMainRouterInput {
    func addTransaction(controller: UIViewController) {
        let newController = AddTransactionModuleInitializer().viewController()
        newController.modalPresentationStyle = .fullScreen
        controller.present(newController, animated: true, completion: nil)
    }
}

//
//  AddTransactionAddTransactionRouter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//
import UIKit
class AddTransactionRouter: AddTransactionRouterInput {
    func closeTransaction(controller: UIViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}

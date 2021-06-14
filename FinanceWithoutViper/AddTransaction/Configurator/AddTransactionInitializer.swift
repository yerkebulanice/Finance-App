//
//  AddTransactionAddTransactionInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddTransactionModuleInitializer: NSObject {

    func viewController() -> UIViewController {
        let vc =  getVCFromStoryboard()
        let configurator = AddTransactionModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        return vc
    }
    
    private func getVCFromStoryboard() -> AddTransactionViewController {
        let storyboard = UIStoryboard(name: "AddTransaction", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(identifier: "AddTransactionViewController") as! AddTransactionViewController
        return vc
    }

}

//
//  RegistrationRegistrationRouter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//
import UIKit
class RegistrationRouter: RegistrationRouterInput {
    func openSignUp(controller: UIViewController) {
        let newController = LoginModuleInitializer().viewController()
        controller.navigationController?.pushViewController(newController, animated: true)
    }
    
    func openMainPage(controller: UIViewController) {
        let newController = FinanceAppMainModuleInitializer().viewController()
        newController.modalPresentationStyle = .fullScreen
        controller.present(newController, animated: true, completion: nil)
    }
    
}

//
//  LoginLoginInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class LoginModuleInitializer: NSObject {

    func viewController() -> UIViewController {
        let vc =  getVCFromStoryboard()
        let configurator = LoginModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        return vc
    }
    
    private func getVCFromStoryboard() -> LoginViewController {
        let storyboard = UIStoryboard(name: "Login", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        return vc
    }

}

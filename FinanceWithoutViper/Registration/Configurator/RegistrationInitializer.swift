//
//  RegistrationRegistrationInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class RegistrationModuleInitializer: NSObject {

    func viewController() -> UIViewController {
        let vc =  getVCFromStoryboard()
        let configurator = RegistrationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        return vc
    }
    
    private func getVCFromStoryboard() -> RegistrationViewController {
        let storyboard = UIStoryboard(name: "Registration", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(identifier: "RegistrationViewController") as! RegistrationViewController
        return vc
    }

}

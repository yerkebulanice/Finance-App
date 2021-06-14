//
//  FinanceAppMainFinanceAppMainInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class FinanceAppMainModuleInitializer: NSObject {

    func viewController() -> UIViewController {
        let vc =  getVCFromStoryboard()
        let configurator = FinanceAppMainModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        return vc
    }
    
    private func getVCFromStoryboard() -> FinanceAppMainViewController {
        let storyboard = UIStoryboard(name: "FinanceAppMain", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(identifier: "FinanceAppMainViewController") as! FinanceAppMainViewController
        return vc
    }

}

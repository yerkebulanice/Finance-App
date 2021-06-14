//
//  ProfileProfileInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class ProfileModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var profileViewController: ProfileViewController!

    override func awakeFromNib() {

        let configurator = ProfileModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: profileViewController)
    }

}

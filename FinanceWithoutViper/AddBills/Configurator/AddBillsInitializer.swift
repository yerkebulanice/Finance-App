//
//  AddBillsAddBillsInitializer.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddBillsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var addbillsViewController: AddBillsViewController!

    override func awakeFromNib() {

        let configurator = AddBillsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: addbillsViewController)
    }

}

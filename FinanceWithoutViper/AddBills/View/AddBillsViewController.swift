//
//  AddBillsAddBillsViewController.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddBillsViewController: UIViewController, AddBillsViewInput {

    var output: AddBillsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: AddBillsViewInput
    func setupInitialState() {
    }
}

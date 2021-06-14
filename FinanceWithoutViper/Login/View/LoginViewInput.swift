//
//  LoginLoginViewInput.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//
import UIKit
protocol LoginViewInput: class {

    /**
        @author Kapitan
        Setup initial state of the view
    */

    func setupInitialState()
    func getController() -> UIViewController
}

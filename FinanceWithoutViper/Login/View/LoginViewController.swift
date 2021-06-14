//
//  LoginLoginViewController.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var output: LoginViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registration"
        output.viewIsReady()
    }

    @IBAction func signUpButtonPressed(_ sender: Any) {
        output?.close()
    }
    @IBAction func logInButtonPressed(_ sender: Any) {
        output?.close()
    }
}

extension LoginViewController: LoginViewInput {
    func getController() -> UIViewController {
        return self
    }
    
    // MARK: LoginViewInput
    func setupInitialState() {
    }
}

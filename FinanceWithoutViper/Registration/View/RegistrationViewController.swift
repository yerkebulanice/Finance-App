//
//  RegistrationRegistrationViewController.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    var output: RegistrationViewOutput!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        output.viewIsReady()
    }

    @IBAction func signUpButtonPressed(_ sender: Any) {
        output?.openSignUp()
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        output?.openMainPage()
    }
}

extension RegistrationViewController: RegistrationViewInput {
    // MARK: RegistrationViewInput
    func setupInitialState() {
    }
    func getController() -> UIViewController {
        return self
    }
}

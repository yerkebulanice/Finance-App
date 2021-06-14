//
//  LoginLoginRouter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//
import UIKit
class LoginRouter: LoginRouterInput {
    func goToLoginAfterSignUp(controller: UIViewController) {
        controller.navigationController?.popViewController(animated: true)
    }
}

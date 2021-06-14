//
//  LoginLoginPresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class LoginPresenter: LoginModuleInput, LoginInteractorOutput {

    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

    func viewIsReady() {

    }
}

extension LoginPresenter: LoginViewOutput {
    func close() {
        router.goToLoginAfterSignUp(controller: view.getController())
    }
}

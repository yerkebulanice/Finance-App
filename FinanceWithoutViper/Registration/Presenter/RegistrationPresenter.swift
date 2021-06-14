//
//  RegistrationRegistrationPresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class RegistrationPresenter: RegistrationModuleInput, RegistrationInteractorOutput {

    weak var view: RegistrationViewInput!
    var interactor: RegistrationInteractorInput!
    var router: RegistrationRouterInput!

    func viewIsReady() {

    }
}

extension RegistrationPresenter: RegistrationViewOutput {
  
    func openSignUp() {
        router.openSignUp( controller: view.getController())
    }
    
    func openMainPage() {
        router.openMainPage(controller: view.getController())
    }
    
}

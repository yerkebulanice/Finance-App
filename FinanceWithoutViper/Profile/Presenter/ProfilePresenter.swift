//
//  ProfileProfilePresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class ProfilePresenter: ProfileModuleInput, ProfileViewOutput, ProfileInteractorOutput {

    weak var view: ProfileViewInput!
    var interactor: ProfileInteractorInput!
    var router: ProfileRouterInput!

    func viewIsReady() {

    }
}

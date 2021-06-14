//
//  AddBillsAddBillsPresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 14/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class AddBillsPresenter: AddBillsModuleInput, AddBillsViewOutput, AddBillsInteractorOutput {

    weak var view: AddBillsViewInput!
    var interactor: AddBillsInteractorInput!
    var router: AddBillsRouterInput!

    func viewIsReady() {

    }
}

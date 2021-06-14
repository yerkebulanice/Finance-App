//
//  FinanceAppMainFinanceAppMainPresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class FinanceAppMainPresenter: FinanceAppMainModuleInput, FinanceAppMainInteractorOutput {

    weak var view: FinanceAppMainViewInput!
    var interactor: FinanceAppMainInteractorInput!
    var router: FinanceAppMainRouterInput!

    func viewIsReady() {

    }
}
 
extension FinanceAppMainPresenter: FinanceAppMainViewOutput {
    func addTransaction() {
        router.addTransaction(controller: view.getController())
    }
}

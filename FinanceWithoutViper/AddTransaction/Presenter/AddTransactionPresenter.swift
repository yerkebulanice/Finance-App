//
//  AddTransactionAddTransactionPresenter.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

class AddTransactionPresenter: AddTransactionModuleInput,  AddTransactionInteractorOutput {

    weak var view: AddTransactionViewInput!
    var interactor: AddTransactionInteractorInput!
    var router: AddTransactionRouterInput!

    func viewIsReady() {

    }
}

extension AddTransactionPresenter: AddTransactionViewOutput {
    func close() {
        router.closeTransaction(controller: view.getController())
    }
    
    
}

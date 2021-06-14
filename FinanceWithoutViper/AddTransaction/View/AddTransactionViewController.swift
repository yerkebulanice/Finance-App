//
//  AddTransactionAddTransactionViewController.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 13/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {

    var output: AddTransactionViewOutput!
    @IBOutlet weak var incomeAndCostsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var incomeTableView: UITableView!
    @IBOutlet weak var costsTableView: UITableView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        costsTableView.isHidden = false
        configureTableViews()
    }

    func configureTableViews() {
        incomeTableView.delegate = self
        incomeTableView.dataSource = self
        costsTableView.delegate = self
        costsTableView.dataSource = self
    }
    
    @IBAction func closeTransactionButtonPressed(_ sender: Any) {
        output.close()
    }
    @IBAction func incomeAndCostsSegmentedControlTouched(_ sender: Any) {
        if(costsTableView.isHidden == false) {
            costsTableView.isHidden = true
            incomeTableView.isHidden = false
        } else {
            costsTableView.isHidden = false
            incomeTableView.isHidden = true
        }
    }
}

extension AddTransactionViewController: AddTransactionViewInput {
    // MARK: AddTransactionViewInput
    func setupInitialState() {
    }
    
    func getController() -> UIViewController {
        return self
    }
}

extension AddTransactionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == incomeTableView {
            return 8
        } else {
            return 8
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == incomeTableView {
            return UITableViewCell()
        } else {
            return UITableViewCell()
        }
    }
}

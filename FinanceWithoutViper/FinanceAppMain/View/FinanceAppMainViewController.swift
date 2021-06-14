//
//  FinanceAppMainFinanceAppMainViewController.swift
//  FinanceWithoutViper
//
//  Created by Kapitan on 12/06/2021.
//  Copyright © 2021 ios developer. All rights reserved.
//

import UIKit

class FinanceAppMainViewController: UIViewController {

    var output: FinanceAppMainViewOutput!

    @IBOutlet weak var billsTableView: UITableView!
    @IBOutlet weak var transactionsTableView: UITableView!
    @IBOutlet weak var profileAvatarButton: UIButton!
    @IBOutlet weak var transactionsAndAddButtonView: UIView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        configureRadiuses()
        tableViewConfigure()
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    @IBAction func openProfile(_ sender: Any) {
    }
    
    @IBAction func addTransaction(_ sender: Any) {
        print("works")
        output?.addTransaction()
    }
    
    func configureRadiuses() {
        transactionsAndAddButtonView.layer.masksToBounds = true
        transactionsAndAddButtonView.layer.cornerRadius = 8
        profileAvatarButton.layer.cornerRadius = 14
        profileAvatarButton.layer.masksToBounds = true
        billsTableView.layer.cornerRadius = 8
        billsTableView.layer.masksToBounds = true
        transactionsTableView.layer.cornerRadius = 8
        transactionsTableView.layer.masksToBounds = true
    }

    func tableViewConfigure() {
        billsTableView.delegate = self
        billsTableView.dataSource = self
        billsTableView.register(UINib(nibName: BillsCell.identifier, bundle: Bundle(for: BillsCell.self)), forCellReuseIdentifier: BillsCell.identifier)
        billsTableView.register(UINib(nibName: BillsAddCell.identifier, bundle: Bundle(for: BillsAddCell.self)), forCellReuseIdentifier: BillsAddCell.identifier)
        transactionsTableView.delegate = self
        transactionsTableView.dataSource = self
        transactionsTableView.register(UINib(nibName: TransactionsCell.identifier, bundle: Bundle(for: TransactionsCell.self)), forCellReuseIdentifier: TransactionsCell.identifier)
    }
    
}

extension FinanceAppMainViewController: FinanceAppMainViewInput {
    // MARK: FinanceAppMainViewInput
    func setupInitialState() {
    }
    
    func getController() -> UIViewController {
        return self
    }
}

extension FinanceAppMainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == billsTableView {
            return 3
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == billsTableView {
            if indexPath.row == 2 {
                let cell = billsTableView.dequeueReusableCell(withIdentifier: BillsAddCell.identifier, for: indexPath) as! BillsAddCell
                return cell
            } else {
                let cell = billsTableView.dequeueReusableCell(withIdentifier: BillsCell.identifier, for: indexPath) as! BillsCell
                return cell
            }
        } else {
            let cell = transactionsTableView.dequeueReusableCell(withIdentifier: TransactionsCell.identifier, for: indexPath) as! TransactionsCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == billsTableView {
            return 45
        } else {
            return 45
        }
    }
    
}

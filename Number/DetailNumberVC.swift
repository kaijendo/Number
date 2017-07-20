//
//  DetailNumbersVC.swift
//  Number
//
//  Created by Kai Jendo on 7/14/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class DetailNumbersVC: UIViewController {
    //MARK: - Properties
    /// Variables
    var dataServices = DataServices.shared
    var selected: Int?
    
    /// IBOutlet
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBAction func abtnSave(_ sender: UIBarButtonItem) {
        if selected == nil {
            appendNumber()
        } else {
            editNumber(at: selected ?? 0)
            self.navigationController?.popViewController(animated: true)
        }
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showUI(at: selected)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK: - Private Function
extension DetailNumbersVC {
    fileprivate func appendNumber() {
        guard let sNumber = txtNumber.text , let number = Int(sNumber) else {
            return
        }
        let newNumber = Number(sNumber: number)
            dataServices.appendNumber(number: newNumber)
    }
    fileprivate func editNumber(at index: Int) {
        guard let sNumber = txtNumber.text, let number = Int(sNumber) else {
            return
        }
        let newNumber = Number(sNumber: number, sDate: Date())
        dataServices.editNumber(number: newNumber, at: index)
    }
    fileprivate func showUI(at index: Int?) {
        if index != nil {
            txtNumber.text = "\(dataServices.numbers[index ?? 0].sNumber ?? 0)"
        }
    }
}

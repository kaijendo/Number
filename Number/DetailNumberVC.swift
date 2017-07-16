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
        }
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension DetailNumbersVC {
    fileprivate func appendNumber() {
        guard let sNumber = txtNumber.text else {
            return
        }
        let newNumber = Int(sNumber)
            dataServices.appendNumber(number: newNumber ?? 0)
        
    }
    
    fileprivate func editNumber(at index: Int) {
        guard let sNumber = txtNumber.text else {
            return
        }
        let newNumber = Int(sNumber)
        dataServices.editNumber(number: newNumber ?? 0, at: index)
    }
    fileprivate func showUI(at index: Int?) {
        if index != nil {
            txtNumber.text = "\(dataServices.numbers[index ?? 0])"
        }
    }

}

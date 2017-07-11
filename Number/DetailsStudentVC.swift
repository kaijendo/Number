//
//  DetailsStudentVC.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class DetailsStudentVC: UIViewController {
//MARK: - Properties
    /// IBOutlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtClass: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var lblCount: UILabel!
    
    @IBAction func aGestureTapImage(_ sender: Any) {
        
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

extension DetailsStudentVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}

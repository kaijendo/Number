//
//  ListStudentsVC.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class ListStudentsVC: UIViewController {
    //MARK: - Properties
    /// IBOutlet
    @IBOutlet weak var tblStudents: UITableView!
    @IBOutlet weak var lblNotification: UILabel! {
        lblNotification
    }
    /// Variables
    var _notification: String?
    var students: [Student]?
    var dataServices: DataServices?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

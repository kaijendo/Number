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
    /// Variables
    var _notification: String?
    var students: [Student]?
    var dataServices: DataServices?
    
    /// IBOutlets
    @IBOutlet weak var tblStudents: UITableView!
    @IBOutlet weak var lblNotification: UILabel! {
        didSet {
        lblNotification.isHidden = true
        }
        willSet {
            if dataServices?.student.count != 0 {
                lblNotification.isHidden = false
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tblStudents.dataSource = DataSource()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - Private Function
extension ListStudentsVC {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

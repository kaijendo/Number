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
    var state: Int = 0
    /// IBOutlets
    @IBOutlet weak var tblStudents: UITableView!
    @IBOutlet weak var lblNotification: UILabel! {
        didSet {
        lblNotification.isHidden = true
        }
    }
    @IBOutlet weak var mySwitch: UIBarButtonItem!

    /// IBAction
    @IBAction func aSwitch(_ sender: UIBarButtonItem) {
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
/// Prepare to selete to details VC
extension ListStudentsVC {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case "Edit":
            guard let detailsStudentVC = segue.destination as? DetailsStudentVC else {
                fatalError("Error to create: \(segue.destination)")
            }
            detailsStudentVC.selected = tblStudents.indexPathForSelectedRow?.row
        default:
            return
        }
    }
}

/// Call-back data to ListStudentsVC
extension ListStudentsVC: DetailsStudentDelegate {
    func appendStudent(student: Student?) {
        <#code#>
    }
}

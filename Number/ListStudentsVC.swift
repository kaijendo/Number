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
    var isShowStudent: Bool = false {
        didSet {
            if mySwitch.isOn {
                navigationItem.title = "StudentManagement"
            } else {
                navigationItem.title
                    = "NumberManagement"
            }
        }
    }
    var hasData: Bool = false {
        didSet {
            guard hasData != oldValue else {
                return
            }
            if self.hasData {
                self.tblStudents.tableFooterView = noDataView
                self.tblStudents.isScrollEnabled = false
            } else {
                self.tblStudents.tableFooterView = footer
                self.tblStudents.isScrollEnabled = true
            }
        }
    }
    fileprivate var studentDataSource = DataSource()
    fileprivate var studentDelegate = Delegate()
    fileprivate var numberDataSource = NumberDataSource()
    
    /// IBOutlets
    @IBOutlet weak var tblStudents: UITableView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var noDataView: UIView!
    @IBOutlet weak var footer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mySwitch.isOn = isShowStudent
        self.mySwitch.addTarget(self, action: #selector(changeData(_:)), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tblStudents.reloadData()
        setupUI()
    }
    
    @IBAction func add(_ sender: Any) {
        if mySwitch.isOn {
            performSegue(withIdentifier: "Add", sender: nil)
        } else {
            performSegue(withIdentifier: "AddNumber", sender: nil)
        }
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
        if mySwitch.isOn {
            switch segue.identifier ?? "" {
            case "Edit":
                guard let detailsStudentVC = segue.destination as? DetailsStudentVC else {
                    fatalError("Error to create: \(segue.destination)")
                }
                detailsStudentVC.selected = tblStudents.indexPathForSelectedRow?.row
                break
            default:
                break
            }
        } else {
            switch segue.identifier ?? "" {
            case "EditNumber":
                guard let detailsNumberVC = segue.destination as? DetailNumbersVC else {
                    fatalError("Error to create: \(segue.destination)")
                }
                detailsNumberVC.selected = tblStudents.indexPathForSelectedRow?.row
                break
            default:
                break
            }
        }
    }
    
    fileprivate func setupUI() {
        if mySwitch.isOn {
            hasData = DataServices.shared.students.count == 0
        } else {
            hasData = DataServices.shared.numbers.count == 0
        }
        tblStudents.reloadData()
    }
    @objc fileprivate func changeData(_ sw: UISwitch) {
        self.isShowStudent = sw.isOn
        if isShowStudent {
            tblStudents.dataSource = studentDataSource
            tblStudents.delegate = studentDelegate
        } else {
            tblStudents.dataSource = numberDataSource
        }
        setupUI()
    }
}

//
//  DataSource.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation
import UIKit

class DataSource: NSObject, UITableViewDataSource {
    let dataService = DataServices.shared
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.students.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListStudentsCell", for: indexPath) as! ListStudentsCell
        cell.sName.text = dataService.students[indexPath.row].sName
        cell.sPhone.text = dataService.students[indexPath.row].sPhone
        cell.sClass.text = dataService.students[indexPath.row].sClass
        cell.sImage.image = dataService.students[indexPath.row].sImage
        cell.lblCreate.text = "Created at:" + dataService.students[indexPath.row].sDate
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataService.removeStudent(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

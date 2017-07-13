//
//  NumberDataSource.swift
//  Number
//
//  Created by Kai Jendo on 7/12/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation
import UIKit
class NumberDataSource: NSObject, UITableViewDataSource {
    let dataServices = DataServices.shared
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataServices.numbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListNumbersCell", for: indexPath) as! ListNumbersCell
        cell.lblNumber.text = "\(dataServices.numbers[indexPath.row])"
        return cell
    }
}

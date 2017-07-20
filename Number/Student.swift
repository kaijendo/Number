//
//  Student.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation
import UIKit

class Student {
    var sName: String?
    var sPhone: String?
    var sClass: String?
    var sImage: UIImage?
    var sDate: String
    init?(sName: String, sPhone: String, sClass: String, sImage: UIImage?, sDate: Date = Date()) {
        guard sName != "" else {
            return nil
        }
        guard sPhone != "" else {
            return nil
        }
        guard sClass != "" else {
            return nil
        }

        self.sName = sName
        self.sPhone = sPhone
        self.sClass = sClass
        self.sImage = sImage
        self.sDate = "\(sDate)"
        if sImage == nil {
            self.sImage = UIImage(named: "IMG_Default")
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-M-yyyy, HH:mm"
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        self.sDate = formatter.string(from: sDate)
    }
}

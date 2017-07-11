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
    
    init?(sName: String, sPhone: String, sClass: String, sImage: UIImage?) {
        guard sName == "" else {
            return nil
        }
        guard sPhone == "" else {
            return nil
        }
        guard sClass == "" else {
            return nil
        }

        self.sName = sName
        self.sPhone = sPhone
        self.sClass = sClass
        self.sImage = sImage
        if sImage == nil {
            self.sImage = UIImage(named: "IMG_Default")
        }
    }
}

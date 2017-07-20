//
//  Number.swift
//  Number
//
//  Created by Kai Jendo on 7/19/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation
import UIKit

class Number {
    var sNumber: Int?
    var sDate: String
    init(sNumber: Int, sDate: Date = Date()) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-M-yyyy, HH:mm"
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        self.sNumber = sNumber
        self.sDate = formatter.string(from: sDate)
    }
}

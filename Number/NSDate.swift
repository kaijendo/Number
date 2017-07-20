//
//  NSDate.swift
//  Number
//
//  Created by Kai Jendo on 7/20/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation

extension NSDate {
    func decode(day: Date = Date(), month: Date = Date(), year: Date = Date(), hour: Date = Date(), minute: Date = Date()) {
        let formatter = DateFormatter()
        formatter.dateFormat = "DD-MM-YYYY HH:MM"
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        
    }

}

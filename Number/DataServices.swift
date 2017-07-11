//
//  DataServices.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation

class DataServices {
    
    /// Variables
    static let shared = DataServices()
    private var _student: [Student]!
    var student: [Student] {
        get {
            if _student == nil {
                updateStudent()
                return _student
            }
            return _student
        }
        set {
            _student = newValue
        }
    }
    
    
    /// Private Function
    private func updateStudent() {
        
    }
    
    /// Function
    func appendStudent(student: Student) {
        _student.append(student)
    }
    func editStudent(student: Student, at index: Int) {
        _student[index] = student
    }
    func removeStudent(at index: Int) {
        _student.remove(at: index)
    }
}

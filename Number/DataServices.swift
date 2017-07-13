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
    private var _students: [Student]!
    private var _numbers: [Int]!
    var numbers: [Int] {
        get {
            if _numbers == nil {
                updateNumber()
                return _numbers ?? []
            }
            return _numbers
        }
        set {
            _numbers = newValue
        }
    }
    var students: [Student] {
        get {
            if _students == nil {
                updateStudent()
                return _students ?? []
            }
            return _students
        }
        set {
            _students = newValue
        }
    }
    
    
    /// Private Function
    private func updateStudent() {
        print("O day se update student neu no chua co")
    }
    private func updateNumber() {
        print("O day se update number neu no chua co")
    }
    
    /// Function For Student
    func appendStudent(student: Student?) {
        guard student != nil else { return }
        if _students == nil {
            _students = []
        }
        _students.append(student!)
    }
    func editStudent(student: Student, at index: Int) {
        _students[index] = student
    }
    func removeStudent(at index: Int) {
        _students.remove(at: index)
    }
}

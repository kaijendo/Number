//
//  DataServices.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import Foundation

class DataServices {
    //MARK: - Properties
    /// Variables
    static let shared = DataServices()
    private var _students: [Student]!
    private var _numbers: [Number]!
    var numbers: [Number] {
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
    
    
    //MARK: - Private Function
    private func updateStudent() {
        print("O day se update student neu no chua co")
    }
    private func updateNumber() {
        print("O day se update number neu no chua co")
    }
    
    //MARK: - Function for Student
    func appendStudent(student: Student?)  {
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
    
    //MARK: - Function for Number
    func appendNumber(number: Number?)  {
        guard number != nil else { return }
        if _numbers == nil {
            _numbers = []
        }
        _numbers.append(number!)
    }
    func editNumber(number: Number, at index: Int) {
        _numbers[index] = number
    }
    func removeNumber(at index: Int) {
        _numbers.remove(at: index)
    }
}

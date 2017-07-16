//
//  DetailsStudentVC.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class DetailsStudentVC: UIViewController {
//MARK: - Properties
    /// Variables
    var dataServices = DataServices.shared
    var selected: Int?
    weak var delegation: DetailsStudentDelegate?
    /// IBOutlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtClass: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var lblCount: UILabel!
    
    /// IBActions
    @IBAction func aGestureTapImage(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func abtnSave(_ sender: UIBarButtonItem) {
        if selected == nil {
            appendStudent()
        } else {
            editStudent(at: selected ?? 0)
        }
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showUI(at: selected)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - Configuarge the UIImagePickerControllerDelegate.
extension DetailsStudentVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imagePickerController = UIImagePickerController()
        guard let imageSelected = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Error to select image from library")
        }
        myImage.image = imageSelected
        dismiss(animated: true, completion: nil)
        imagePickerController.delegate = self
    }
}

// MARK: - Private Function
extension DetailsStudentVC {
    fileprivate func appendStudent() {
        guard let sName = txtName.text else {
            return
        }
        guard let sClass = txtClass.text else {
            return
        }
        guard let sPhone = txtPhone.text else {
            return
        }
        guard let image = myImage.image else {
            return
        }
        
        guard let newStudent = Student(sName: sName, sPhone: sPhone, sClass: sClass, sImage: image) else {
            print("khong tao duoc")
            return
        }
        dataServices.appendStudent(student: newStudent)
        
    }
    
    fileprivate func editStudent(at index: Int) {
        guard let sName = txtName.text else {
            return
        }
        guard let sClass = txtClass.text else {
            return
        }
        guard let sPhone = txtPhone.text else {
            return
        }
        guard let image = myImage.image else {
            return
        }
        
        let newStudent = Student(sName: sName, sPhone: sPhone, sClass: sClass, sImage: image)
        dataServices.editStudent(student: newStudent!, at: index)
    }
    fileprivate func showUI(at index: Int?) {
        if index != nil {
            txtName.text = dataServices.students[index ?? 0].sName
            txtClass.text = dataServices.students[index ?? 0].sClass
            txtPhone.text = dataServices.students[index ?? 0].sPhone
            myImage.image = dataServices.students[index ?? 0].sImage
        }
    }
}

//
//  SecondVC.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 28/2/23.
//

import UIKit

class SecondVC: UIViewController {
    
   // public var persons2: [Person] = []
    
    public var per = Person(firstName: "", lastName: "", organization: "", email: "", yourtitle: "", phone: "", image: "")

    @IBOutlet weak var regionTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
   
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var organizationTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var yourTitTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func signInButSecond(_ sender: Any) {
        
        if firstNameTextField.text?.isEmpty ?? true {
            firstNameTextField.layer.borderWidth = 2
            firstNameTextField.layer.borderColor = UIColor.red.cgColor
            firstNameTextField.placeholder = "Заполните пожалуйста"
        }
        if lastNameTextField.text?.isEmpty ?? true {
            lastNameTextField.layer.borderWidth = 2
            lastNameTextField.layer.borderColor = UIColor.red.cgColor
            lastNameTextField.placeholder = "Заполните пожалуйста"
        }
        if organizationTextField.text?.isEmpty ?? true {
            organizationTextField.layer.borderWidth = 2
            organizationTextField.layer.borderColor = UIColor.red.cgColor
            organizationTextField.placeholder = "Заполните пожалуйста"
        }
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Заполните пожалуйста"
        }
        if yourTitTextField.text?.isEmpty ?? true {
            yourTitTextField.layer.borderWidth = 2
            yourTitTextField.layer.borderColor = UIColor.red.cgColor
            yourTitTextField.placeholder = "Заполните пожалуйста"
        }
        if phoneTextField.text?.isEmpty ?? true {
            phoneTextField.layer.borderWidth = 2
            phoneTextField.layer.borderColor = UIColor.red.cgColor
            phoneTextField.placeholder = "Заполните пожалуйста"
        }
        else
        {
            let fourthVC = FourthVC()
           self.navigationController?.pushViewController(fourthVC, animated: true)
            
            per = Person(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, organization: organizationTextField.text!, email: emailTextField.text!, yourtitle: yourTitTextField.text!, phone: phoneTextField.text!, image: "notfoto")
            if fourthVC.persons.isEmpty {
                fourthVC.initData()
            }
            
            fourthVC.persons.append(per)
            
        }
    }
    
    @IBAction func noThanksButSecond(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
}
//    func addarray(firstName: Person, lastName: Person, yourtitle: Person, organiz: String, email: String, phone:String) {
//         firstName = firstNameTextField.text
//        var lname = lastNameTextField.text
//
//
//        var persons2 = Person(firstName: fname, lastName: lname, organization: organiz, email: email, yourtitle: yourtitle, phone: phone, image: "")
//        var array: [Person] = []
//        array.append(persons2)
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }


}

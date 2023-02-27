//
//  ViewController.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 25/2/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButtonview: UIButton!
    
    @IBOutlet weak var forgotPassButtonView: UIButton!
    
    @IBOutlet weak var greateFreeAcButtonView: UIButton!
    
    
    @IBAction func signInButton(_ sender: Any) {
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Заполните пожалуйста"
        }
        if passwordTextField.text?.isEmpty ?? true {
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "Заполните пожалуйста"
        } else
        {
            let successVC = SecondVC()
            navigationController?.pushViewController(successVC, animated: true)

        }
    }
    
    @IBAction func forgotPasswButton(_ sender: Any) {
    }
    
    @IBAction func greateFreeAcButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryTextField.layer.cornerRadius = 5
        countryTextField.layer.borderWidth = 1
        countryTextField.layer.borderColor = UIColor.blue.cgColor
//        countryTextField.clipsToBounds = true
//        countryTextField.largeContentImage = UIImage(systemName: "globe")
//        countryTextField.leftViewMode =

//        UITextField.ViewMode.always
//        countryTextField.leftView?.layer. =
//                UIImage(systemName: "globe")
        //exclamationmark.lock
        
        //
        //at
        //lock
        
//        emailTextField.layer.borderWidth = 1
//        emailTextField.layer.borderColor = ([[UIColor(red: 171.0/255.0, green: 171.0/255.0, blue: 171.0/255.0, alpha: 1.0)]] as! CGColor)
//        emailTextField.layer.cornerRadius = 5
//        emailTextField.clipsToBounds = true
//
//        passwordTextField.layer.borderWidth = 1
//        passwordTextField.layer.borderColor = ([[UIColor(red: 171.0/255.0, green: 171.0/255.0, blue: 171.0/255.0, alpha: 1.0)]] as! CGColor)
//        passwordTextField.layer.cornerRadius = 5
//        passwordTextField.clipsToBounds = true
//
        

        
    }


}


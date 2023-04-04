//
//  ViewController.swift
//  Sign-In
//
//  Created by Calsoft on 02/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    struct credentials {
        
//        var userName = "tanish.kukreja"
//        var userpassword = "12345"
        
    }

  
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var forgetPassword: UILabel!
    @IBOutlet weak var forgetEmail: UITextField!
    
    
    @IBAction func forgetButton(_ sender: Any) {
        
        var n = Int.random(in: 1000...9999)
        
        if(forgetEmail.hasText) {
            let allertTitle = "Status"
            let message = "Otp Sent to your mobile number"
            let alertBox = UIAlertController(title: allertTitle, message: message, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alertBox.addAction(alertAction)
            present(alertBox,animated: true,completion: nil)
            print("Your Otp for verification is : \(n)")
        }
        
            else  {
            let allertTitle = "Status"
            let message = "Enter Email for otp"
            let alertBox = UIAlertController(title: allertTitle, message: message, preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alertBox.addAction(alertAction)

            present(alertBox,animated: true,completion: nil)
        }
    }
    
 
   
    
    @IBAction func signButton(_ sender: Any) {
        
         let user = Email.text
        let password = Password.text
        
        if  (user == "tanish.kukreja" && password == "1234" && Email.hasText && Password.hasText) {
            
            performSegue(withIdentifier: "segue1", sender: credentials())
            print(Email.text!)
            print("Logged in Successfully")
        }
        
        else if(user!.isEmpty && ((password?.isEmpty) != nil)){
            
            let allertTitle = "Status"
            let message = "Enter Credentials"
            let alertBox = UIAlertController(title: allertTitle, message: message, preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alertBox.addAction(alertAction)

            present(alertBox,animated: true,completion: nil)
            print("")

        }
        else{
             
            let allertTitle = "Status"
            let message = "Wrong Password"
            let alertBox = UIAlertController(title: allertTitle, message: message, preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alertBox.addAction(alertAction)

            present(alertBox,animated: true,completion: nil)
             
            print("Wrong Password")
        
        }
        
        
    }
}


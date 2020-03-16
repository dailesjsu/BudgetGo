//
//  LoginViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 3/15/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func onSignInButton(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
         
         PFUser.logInWithUsername(inBackground: username, password: password) {
           (user, error) in
           if user != nil {
             self.performSegue(withIdentifier: "loginSeque", sender: nil)
           } else {
              print("Error: \(error?.localizedDescription)")
         }
         }
        
        
    }
    
    
    @IBAction func onSignUpButton(_ sender: Any) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

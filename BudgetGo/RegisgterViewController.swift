//
//  RegisgterViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 3/16/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse

class RegisgterViewController: UIViewController {
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    @IBOutlet weak var EmailField: UITextField!
    
    
    @IBAction func RegisterButton(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text  
        user.email = EmailField.text
        user.signUpInBackground{ (success, error) in
                   if success {
                       self.performSegue(withIdentifier: "backtologinSeque", sender: nil)
                   } else {
                       print("Error: \(error?.localizedDescription)")
                   }
                   
               }
        
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

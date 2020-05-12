//
//  FeedbackViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 5/10/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse
import Alamofire

class FeedbackViewController: UIViewController {

    @IBOutlet weak var feedbackText: UITextField!
    
    @IBAction func OnsubmitButton(_ sender: Any) {
        let profile = PFObject(className: "Profile")
         profile["feedback"] = feedbackText.text!
         
         profile.saveInBackground{ (success, error) in
             if success{
                 print("saved!")
                 self.dismiss(animated: true, completion: nil)
                 
             }
                 else {
                     print("error")
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

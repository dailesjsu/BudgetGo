//
//  MainFeedViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 3/16/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse
import Alamofire

class MainFeedViewController: UIViewController{
    
    @IBOutlet weak var profileButton: UIButton!
    
    @IBOutlet weak var transactionButton: UIButton!
    
    @IBOutlet weak var DestinationButton: UIButton!
    
    @IBOutlet weak var feedbackButton: UIButton!
    
    
    @IBOutlet weak var avatarView: UIImageView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // let profile = PFObject(className: "Profile")
        //profile["avatar"] = avatarView.image!

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

//
//  TransactionViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 5/10/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse
import Alamofire

class TransactionViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var greeting: UILabel!
    
    @IBOutlet weak var hi: UILabel!
    
    
    @IBOutlet weak var FirstTransaction: UIImageView!
    
    @IBOutlet weak var SecondTransaction: UIImageView!
    
    
    @IBOutlet weak var ThirdTransaction: UIImageView!
    
    var Profile: PFObject!
    var User: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //avatar here
        
    // Profile["Name"] = name.text!
      //  let imageView = Profile["avatar"] as! PFFileObject
      //  let urlString = imageView.url!
      //  let url = URL(string:urlString)!
      //  let data = try? Data(contentsOf: url)
      //  ImageView.layer.cornerRadius = 30
      //  ImageView.image = UIImage(data: data!)
        
        

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

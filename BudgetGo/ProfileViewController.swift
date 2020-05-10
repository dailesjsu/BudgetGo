//
//  ProfileViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 5/10/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class ProfileViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var DOB: UITextField!
    
    
    @IBOutlet weak var PhoneNumber: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    let User = PFUser()
  
    @IBAction func onSubmitButton(_ sender: Any) {
        let profile = PFObject(className: "Profile")
        profile["Name"] = Name.text!
        
        
       // profile["Date of Birth"] = DOB.text!
       // profile["Phone number"] = PhoneNumber.text!
        profile["Email"] = Email.text!
        let imageData = imageView.image!.pngData()
        let file = PFFileObject(data: imageData!)
        
        profile["avatar"] = file
        
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
    
    
    
    @IBAction func onCameraButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
        } else {
            picker.sourceType = .photoLibrary
        }
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        let size = CGSize(width: 300, height: 300)
        
        let scaledImage = image.af_imageScaled(to: size)
              imageView.image = scaledImage
              dismiss(animated: true , completion: nil)
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

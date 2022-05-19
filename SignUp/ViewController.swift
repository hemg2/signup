//
//  ViewController.swift
//  SignUp
//
//  Created by 1 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var ieField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func touchUpSetButton(_ sender: UIButton) {
        
        UserInFormation.shared.name = ieField.text
        //UserInFormation.shared.id = idField.text 이게 맞는데 에러가 뜬다?? 왜 와이?
        UserInFormation.shared.Password = passwordField.text
    }
    
    @IBAction func tapView(_ sender:UITapGestureRecognizer) {
        self.view.endEditing(true)
}
    
  //  let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: ViewController, action: #selector(self.tapView(_:)))
                                                                
 //   self.view.addGestureRecognizer(tapGesture)
}

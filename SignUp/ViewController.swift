//
//  ViewController.swift
//  SignUp
//
//  Created by 1 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func touchUpSetButton(_ sender: UIButton) {
        UserInFormation.shared.id = idField.text
        UserInFormation.shared.password = passwordField.text
    }
    override func viewWillAppear(_ animated: Bool) {
        self.idField.text = UserInFormation.shared.id
        self.passwordField.text = UserInFormation.shared.password
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func tapView(_ sender:UITapGestureRecognizer) {
        self.view.endEditing(true)
}
    
  //  let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: ViewController, action: #selector(self.tapView(_:)))
                                                                
 //   self.view.addGestureRecognizer(tapGesture)
}

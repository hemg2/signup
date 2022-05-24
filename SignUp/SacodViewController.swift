//
//  SacodViewController.swift
//  SignUp
//
//  Created by 1 on 2022/05/17.
//

import UIKit

class SacondViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var nextBtton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkPasswordTextField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func loginTapped(_ sender: Any) {
        UserInFormation.self.shared.id = idTextField.text
        UserInFormation.self.shared.password = passwordTextField.text
    
view.endEditing(true)
}


lazy var imagePicker: UIImagePickerController = {
    let picker: UIImagePickerController = UIImagePickerController()
    picker.sourceType = .photoLibrary
    picker.delegate = self
    return picker
}()

@IBAction func touchUPSelectImageButton(_ sender: UIButton) {
    self.present(self.imagePicker, animated: true, completion: nil)
}

@IBAction func touchUpsetButton(_ sender: UIButton) {
    UserInFormation.shared.id = idTextField.text
    UserInFormation.shared.password = passwordTextField.text
}
@IBAction func tapView(_ sender:UITapGestureRecognizer) {
    self.view.endEditing(true)
}
}

extension SacondViewController: UIImagePickerControllerDelegate {
    func imagePickerControllerDidCancel(_ piker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage {
            self.imageView.image = originalImage
        }
        self.dismiss(animated: true, completion: nil)
    }
}
extension SacondViewController: UITextFieldDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFiede()
        idTextField.delegate = self
        passwordTextField.delegate = self
        checkPasswordTextField.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    private func configureTextFiede() {
        idTextField.delegate = self
        passwordTextField.delegate = self
        checkPasswordTextField.delegate = self
    }
    @objc func handleTap() {
        print("Handle tap was")
        view.endEditing(true)
    }
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SacondViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //    func textFieldDidBeginEditing(_ textField: UITextField) {
    //
    //    }
        func textFieldDidEndEditing(_ textField: UITextField) {
            if passwordTextField.text == checkPasswordTextField.text {
                nextBtton.isEnabled = true
            } else {
                nextBtton.isEnabled = false
            }
    
        }
}

//
//  threeViewController.swift
//  SignUp
//
//  Created by 1 on 2022/05/17.
//

import UIKit

class threeViewController: UIViewController {
    
    @IBOutlet weak var datePicker : UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
        
        let date: Date = self.datePicker.date
        let dateSting: String = self.dateFormatter.string(from: date)
        
        self.dateLabel.text = dateSting
    }
    @IBAction func dismissModal() {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func tapView(_ sender:UITapGestureRecognizer) {
        self.view.endEditing(true)
        
    }
}
/* *@IBAction func poptoprev() {
 self.navigationController?.popViewController(animated: true)
 }*/

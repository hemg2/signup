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
        
        
        let date: Date = self.datePicker.date
        let dateSting: String = self.dateFormatter.string(from: date)
        
        self.dateLabel.text = dateSting
    }
    @IBAction func dismissModal() {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func tapView(_ sender:UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    //가입 버튼 넘기기 디스미스
    @IBAction func touchUpNeatButton (_: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToPrev() {
        self.dismiss(animated: true, completion: nil)
//        UserInFormation.shared.id = " "
//        UserInFormation.shared.password = " "
        self.navigationController?.popViewController(animated: true)
    }
}



//     @IBAction func poptoprev() {
//    self.navigationController?.popViewController(animated: true)
//}


/*모달 푸쉬 팝
 책이 있다 푸쉬 네이게이션 푸쉬 다음페이지 쇼 이지 푸쉬
 팝은 전페이지 (이전페이지)
 모달 보고 있는 책에 새책을 올리는거다 그래서 기존책을 볼수 없다.
 디스미스 위에있는 책을 치우는거다
 모달은 책을 올리는것
 
 네이게이션
 책을 만드는행위
 네이게이션으로 감싸지 않으면 1장짜리다
 네이게이션이 없다면 모달로 계속채워야한다
 푸쉬는 네이게이션이 있어야한다
 
 
 
 델리 게이트
 버튼 활성화  조건 만족 만족하지않으면 비활성
 조건 if 이 맞으면 경우 활성화
 같을경우 == // if 비번 == 확인 비번
 참이면 (버튼.이네이즈.투)
 엘스 버튼 이즈 이네이즈 펄스
 && 아이디에 입력칸이 비어 있지 않을때
 ** 아닐때 !=
 else
 */

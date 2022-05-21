//
//  UserInformation.swift
//  SignUp
//
//  Created by 1 on 2022/05/19.
//

import Foundation

class UserInFormation {
    static let shared: UserInFormation = UserInFormation()
    //쉐어드는 타입 프로퍼티    타입프로퍼티를 호출하면 항상똑같은 인스턴스를 쓸수 있다
    var id: String?
    var password: String?
}

//
//  LoginViewViewModel.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessge = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMessge = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessge = "Please enter valid email."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessge = "Please enter valid email.";
            return false
        }
        return true
    }
}

//
//  RegisterView.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                subtitle: "Start organazing tods",
                angle: -15,
                backgroud: .orange)
            
            Form {
                TextField( "Full Name", text: $viewModel.name )
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }.padding()
            }.offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

//
//  LoginView.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(
                    title: "To Do",
                    subtitle: "Get Things Done",
                    angle: 15,
                    backgroud: .pink)
                
                Form {
                    if !viewModel.errorMessge.isEmpty {
                        Text(viewModel.errorMessge)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Pasword", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login", background: .blue) {
                        viewModel.login()
                    }.padding()
                }.offset(y: -50)
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

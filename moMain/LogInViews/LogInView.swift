//
//  LogInView.swift
//  moMain
//
//  Created by Samvel Torosyan on 19.11.25.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject var logInModels: LogInModels
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            
            Text("LogIn")
                .font(.system(size: 32, weight: .bold))
                .navigationTitle("LogIn")
                .padding(80)
                .foregroundColor(.white)

            
            ZStack {
                Color.white
                    .clipShape(
                        .rect(
                            topLeadingRadius: 50,
                            topTrailingRadius: 50
                        )
                    )
                    .edgesIgnoringSafeArea(.bottom)
                VStack {
                    VStack(alignment: .leading) {
                        CustomTextField(prompt: "example@example.com", text: "Username or Email", val: $username)
                            .padding(.top, 100)

                        CustomPasswordField(prompt: "Введите Password", text: "Password", val: $password)
                    }
                    Spacer()
                    VStack {
                        Button {
                            UserDefaults.standard.set(true, forKey: "isLogin")
                            logInModels.isLogin = true
                        } label: {
                            Text("Log In")
                                .frame(width: 170, height: 36)
                                .background(Color("MainColor"))
                                .cornerRadius(50)
                                .foregroundColor(.white)
                        }
                        Text("Forget password?")
                        NavigationLink(destination: SingUpView()) {
                            Text("Sign Up")
                                .frame(width: 170, height: 36)
                                .background(Color("MainColor"))
                                .cornerRadius(50)
                                .foregroundColor(.white)

                        }
                        Text("Or singup with")
                            .font(.system(size: 10))
                            .padding(.top, 100)

                        CustomWithAppleOrGoogleButton()
                    }

                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("MainColor"))
    }
}

#Preview {
    LogInView()
}

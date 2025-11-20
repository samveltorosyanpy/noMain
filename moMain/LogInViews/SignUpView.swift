//
//  SignUpView.swift
//  moMain
//
//  Created by Samvel Torosyan on 19.11.25.
//

import SwiftUI

struct SingUpView: View {
    @State var date_of_birth: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var password1: String = ""
    @State var password2: String = ""

    var body: some View {
        VStack {
            VStack {
                Text("Sing Up")
                    .font(.system(size: 32, weight: .bold))
                    .navigationTitle("LogIn")
                    .foregroundColor(.white)
                    .padding(80)
            }
            
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
                            .padding(.top, 50)
                        CustomTextField(prompt: "example@example.com", text: "Username or Email", val: $email)
                        CustomPasswordField(prompt: "Введите Password", text: "Password", val: $password1)
                        CustomPasswordField(prompt: "Введите Password", text: "Password", val: $password2)
                    }
                    Spacer()
                    Text("By continuing, you agree to ")
                        .font(.system(size: 10, weight: .light))
                    Text("Terms of Use and Privacy Policy.")
                        .font(.system(size: 10, weight: .light))
                    VStack {
                        NavigationLink(destination: LogInView()) {
                            Text("Sing Up")
                                .frame(width: 170, height: 36)
                                .background(Color("MainColor"))
                                .foregroundColor(.white)
                                .cornerRadius(50)
                        }
                        Text("Or singup with")
                            .font(.system(size: 10))
                        
                    }
                    CustomWithAppleOrGoogleButton()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("MainColor"))
    }
}

#Preview {
    SingUpView()
}

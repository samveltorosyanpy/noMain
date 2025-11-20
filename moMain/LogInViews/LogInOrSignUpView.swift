//
//  LogInOrSignUpView.swift
//  moMain
//
//  Created by Samvel Torosyan on 19.11.25.
//

import SwiftUI

struct LogInOrSignUpView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 110, height: 110)
                    Text("MyFIn")
                        .foregroundColor(Color("Texts"))
                        .font(.system(size: 52.14, weight: .bold))
                    Text("Спасибо за поддержку! Надеюсь, я стану")
                        .font(.system(size: 12, weight: .light))
                    Text("вашим надежным помощником")
                        .font(.system(size: 12, weight: .light))
                    NavigationLink(destination: LogInView()) {
                        Text("LogIn")
                            .frame(width: 170, height: 36)
                            .background(Color("MainColor"))
                            .foregroundColor(.black)
                            .cornerRadius(50)
                    }
                    NavigationLink(destination: SingUpView()) {
                        Text("SingIn")
                            .frame(width: 170, height: 36)
                            .background(Color("MainColor"))
                            .foregroundColor(.black)
                            .cornerRadius(50)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    LogInOrSignUpView()
}

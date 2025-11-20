//
//  HomeContentView.swift
//  moMain
//
//  Created by Samvel Torosyan on 19.11.25.
//

import SwiftUI

struct HomeContentView: View {
    @EnvironmentObject var logInModels: LogInModels

    var body: some View {
        VStack {
            Text("Hello, World!")
            Button {
                UserDefaults.standard.set(false, forKey: "isLogin")
                logInModels.isLogin = false
            } label: {
                Text("Log Out")
                    .frame(width: 170, height: 36)
                    .background(Color("MainColor"))
                    .foregroundColor(.black)
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    HomeContentView()
}

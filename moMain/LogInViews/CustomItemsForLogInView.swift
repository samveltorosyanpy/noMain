//
//  CustomItemsForLogInView.swift
//  moMain
//
//  Created by Samvel Torosyan on 18.11.25.
//

import SwiftUI

func CustomTextField(prompt: String, text: String, val: Binding<String>) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        Text(text)
            .font(.system(size: 14, weight: .bold))
            .padding(.leading, 20)
        TextField(
            "",
            text: val,
            prompt: Text(prompt)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.black.opacity(0.4))
        )
        .padding(.leading, 40)
        .font(.system(size: 18, weight: .regular))
        .frame(width: 350, height: 38)
        .background(Color("InputBackgroudColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color("InputBackgroudColor"))
        )
        .cornerRadius(50)
    }
    .padding(.bottom, 15)
}

func CustomPasswordField(prompt: String, text: String, val: Binding<String>) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        Text(text)
            .font(.system(size: 14, weight: .bold))
            .padding(.leading, 20)
        SecureField(
            "",
            text: val,
            prompt: Text(prompt)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.black.opacity(0.4))
        )
        .padding(.leading, 40)
        .font(.system(size: 18, weight: .regular))
        .frame(width: 350, height: 38)
        .background(Color("InputBackgroudColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color("InputBackgroudColor"))
        )
        .cornerRadius(50)
        .padding(.bottom, 15)
    }
}

func CustomWithAppleOrGoogleButton() -> some View {
    HStack {
        Button(action: {
            // login with Google
        }) {
            Image("google_icon")
                .resizable()
                .frame(width: 32, height: 32)
                .padding()
                .clipShape(Circle())
        }
        
        Button(action: {
            // login with Apple
        }) {
            Image("apple_icon")
                .resizable()
                .frame(width: 32, height: 32)
                .padding()
                .clipShape(Circle())
        }
    }
}

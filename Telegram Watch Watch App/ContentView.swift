//
//  ContentView.swift
//  Telegram Watch Watch App
//
//  Created by SANTAVARAN on 19.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            //Image("Logo")
            //    .resizable(resizingMode: .stretch)
            //    .padding(.all)
            //    .frame(width: 100, height: 100)
            NavigationView {
                VStack{
                    Image("Logo")
                        .resizable(resizingMode: .stretch)
                        .padding(.all)
                        .frame(width: 100, height: 100)
                    NavigationLink {
                        SignInScreen()
                    } label: {
                        Text("Sign in")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SignInScreen: View {
    @State public var phone: String = ""
    var body: some View {
        VStack {
            Text("Enter your phone number").padding(.bottom, 40.0).frame(width: 160.0, height: 70).font(.system(size: 15))
            TextField("ex. +111111111", text: $phone)
            NavigationLink{
                VerificationCodeScreen()
            } label: {
                Text("Submit").border(.secondary)
            }
        }
        let _ = print(phone)
    }
}
struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

struct VerificationCodeScreen: View {
    var body: some View {
        VStack {
            Text("Enter code from SMS").padding(.bottom, 40.0).frame(width: 160.0).font(.system(size: 20))
            TextField("ex. 565656", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
    }
}

struct VerificationCodeScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

struct Test: View {
    var body: some View {
        ZStack {
            Text("Enter code from SMS").padding(.bottom, 40.0).frame(width: 160.0).font(.system(size: 20))
            Text("Enter code from SMS").padding(.bottom, 40.0).frame(width: 160.0).font(.system(size: 20))
            Text("Enter code from SMS").padding(.bottom, 40.0).frame(width: 160.0).font(.system(size: 20))
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

//
//  ContentView.swift
//  LetsChat
//
//  Created by Ashique on 27/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .center, startRadius: 100, endRadius: 470)
            VStack(spacing: 50){
                Text("LetsChat").foregroundColor(.white).font(.system(size: 30.0)).fontWeight(.bold)
                
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Username",
                              text: $username)
                }   .padding()
                .background(Capsule().fill(Color.white))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    if showPassword {
                        TextField("Password",
                                  text: $password)
                    } else {
                        SecureField("Password",
                                    text: $password)
                    }
                    Button(action: { self.showPassword.toggle()}) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.secondary)
                    }
                }   .padding()
                .background(Capsule().fill(Color.white))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Login")
                        .padding()
                    
                }
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
            }   .padding()
            
            
        }.edgesIgnoringSafeArea(.all)
    };
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

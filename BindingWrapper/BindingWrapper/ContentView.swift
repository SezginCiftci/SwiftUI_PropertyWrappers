//
//  ContentView.swift
//  BindingWrapper
//
//  Created by Sezgin Çiftci on 20.05.2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: Property
    @State private var username: String = ""
    @State private var password: String = ""
    
    //MARK: Body
    var body: some View {
        VStack {
            VStack {
                SCTextField(username: $username)
                    .padding(.vertical)
                SCTextField2(password: $password)
            }.padding()
            
            VStack {
                HStack {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Invalid username")
                        .padding(.vertical)
                        .foregroundColor(Color.red)
                } //HStack
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Valid password")
                        .padding(.vertical)
                        .foregroundColor(Color.red)
                } //HStack
            } //GroupBox
        } //VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SCTextField: View {
    //MARK: Property
    @Binding var username: String
    
    //MARK: Body
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.secondary)
                TextField("Username",
                          text: $username)
            } //HStack
            .padding()
            .background(Capsule().fill(Color.white))
            .frame(width: UIScreen.main.bounds.width - 100,
                   height: 50)
            .shadow(radius: 8)
            
        } //VStack
    }
}

struct SCTextField2: View {
    //MARK: Property
    @Binding var password: String
    
    //MARK: Body
    var body: some View {
        HStack {
            Image(systemName: "lock")
                .foregroundColor(.secondary)
            TextField("Password",
                      text: $password)
        }
        .padding()
        .background(Capsule().fill(Color.white))
        .frame(width: UIScreen.main.bounds.width - 100,
               height: 50)
        .shadow(radius: 8)
    }
}

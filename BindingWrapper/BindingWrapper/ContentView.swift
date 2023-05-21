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
            Image("pug")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .cornerRadius(75)
            
            Text("WELCOME")
                .padding(.bottom, 40)
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color.secondary)
            
            SCTextField(textFieldType: .username, text: $username)
            SCInfoText(infoTextType: username.isValid ? .validUsername : .invalidUsername)
            
            SCTextField(textFieldType: .password, text: $password)
            SCInfoText(infoTextType: password.isValid ? .validPassword : .invalidPassword)
            
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
    var textFieldType: SCTextFieldType
    @Binding var text: String
    
    //MARK: Body
    var body: some View {
        VStack {
            HStack {
                Image(systemName: textFieldType.textFieldImageName)
                    .foregroundColor(.secondary)
                switch textFieldType {
                case .username:
                    TextField(textFieldType.textFieldPlaceholder,
                              text: $text)
                case .password:
                    SecureField(textFieldType.textFieldPlaceholder,
                              text: $text)
                }
                
            } //HStack
            .padding()
            .background(Capsule().fill(Color.white))
            .frame(width: UIScreen.main.bounds.width - 100,
                   height: 50)
            .shadow(radius: 8)
        } //VStack
    }
}

struct SCInfoText: View {
    //MARK: Property
    var infoTextType: SCInfoTextType
    
    //MARK: Body
    var body: some View {
        HStack {
            Image(systemName: infoTextType.infoTextImage)
                .foregroundColor(infoTextType.infoTextColor)
            Text(infoTextType.infoText)
                .foregroundColor(infoTextType.infoTextColor.opacity(0.8))
        } //HStack
        .padding(.top, 6)
        .padding(.bottom)
        .padding(.leading, 8)
        .frame(width: UIScreen.main.bounds.width - 100, alignment: .leading)
    }
}

enum SCTextFieldType {
    case username
    case password
    
    var textFieldPlaceholder: String {
        switch self {
        case .username:
            return "Username"
        case .password:
            return "Password"
        }
    }
    
    var textFieldImageName: String {
        switch self {
        case .username:
            return "person"
        case .password:
            return "lock"
        }
    }
}

enum SCInfoTextType {
    case invalidUsername
    case validUsername
    case invalidPassword
    case validPassword
    
    var infoText: String {
        switch self {
        case .invalidUsername:
            return "Invalid Username"
        case .validUsername:
            return "Valid Username"
        case .invalidPassword:
            return "Invalid Password"
        case .validPassword:
            return "Valid Password"
        }
    }
    
    var infoTextImage: String {
        switch self {
        case .invalidUsername, .invalidPassword:
            return "xmark.circle.fill"
        case .validUsername, .validPassword:
            return "checkmark.circle.fill"
        }
    }
    
    var infoTextColor: Color {
        switch self {
        case .invalidUsername, .invalidPassword:
            return .red
        case .validUsername, .validPassword:
            return .green
        }
    }
}

extension String {
    var isValid: Bool {
        let regex = ".*[^A-Za-z0-9].*"
        let testString = NSPredicate(format:"SELF MATCHES %@", regex)
        return testString.evaluate(with: self) && self.count >= 8 && !self.contains(" ")
    }
}

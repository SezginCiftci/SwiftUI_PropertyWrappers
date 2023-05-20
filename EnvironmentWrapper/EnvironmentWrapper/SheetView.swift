//
//  SheetView.swift
//  EnvironmentWrapper
//
//  Created by Sezgin Çiftci on 20.05.2023.
//

import SwiftUI

struct SheetView: View {
    //MARK: Property
    @Environment(\.dismiss) var dismiss
    
    //MARK: Body
    var body: some View {
        Button {
            dismiss()
        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(12)
                    .frame(width: 200, height: 50)
                
                Text("Dismiss View")
                    .font(.system(.title2, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(alignment: .center)
            } //ZStack
        } //Button
    } //Body
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

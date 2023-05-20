//
//  ContentView.swift
//  EnvironmentWrapper
//
//  Created by Sezgin Çiftci on 20.05.2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    @Environment(\.colorScheme) var colorScheme

    @State var isSheetPresented: Bool = false
    @State var text: String = ""
    //MARK: - Body
    var body: some View {
        VStack {

            Image(colorScheme == .dark ? "SezginCiftci" : "SezginCiftci2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: UIScreen.main.bounds.width - 100)
                .cornerRadius(16)
                .shadow(radius: 8)
                .padding()

            Text("Sezgin Çiftçi")
                .font(.system(.title2, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(colorScheme == .light ? Color.indigo : Color.white)
                .padding(.top)
                .frame(alignment: .center)

            Button {
                isSheetPresented = true
            } label: {
                ZStack {
                    Rectangle()
                        .cornerRadius(12)
                        .frame(width: 250, height: 50)
                        .shadow(radius: 8)

                    Text("Present Sheet")
                        .font(.system(.title2, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(alignment: .center)
                }
                .padding(.bottom)
            }//Button
        } //VStack
        .background(Color.white.opacity(0.7))
        .cornerRadius(20)
        .shadow(radius: 12)
        .sheet(isPresented: $isSheetPresented) {
            SheetView()
                .preferredColorScheme(colorScheme == .light ? .dark : .light)
        } //Sheet
    } //Body
}

struct ContentView_Previews: PreviewProvider {
    static let colorScheme: ColorScheme = .light

    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, colorScheme)
    }
}

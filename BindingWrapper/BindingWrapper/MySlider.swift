//
//  MySlider.swift
//  BindingWrapper
//
//  Created by Sezgin Çiftci on 20.05.2023.
//

import SwiftUI

struct MySlider: View {
    //MARK: Property
    @Binding var sliderValue: CGFloat
    var minValue: CGFloat
    var maxValue: CGFloat
    
    //MARK: Body
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MySlider_Previews: PreviewProvider {
    @State var sliderValue: CGFloat = 50.0
    
    static var previews: some View {
        MySlider(sliderValue: sliderValue, minValue: 0, maxValue: 100)
    }
}

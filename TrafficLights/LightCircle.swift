//
//  Light.swift
//  TrafficLights
//
//  Created by Дарья Носова on 16.02.2022.
//

import SwiftUI

struct LightCircle: View {
  let color: Color
  @State var opacity: Double
  
    var body: some View {
        Circle()
        .foregroundColor(color)
        .frame(width: 150, height: 150)
        .opacity(opacity)
        .overlay(Circle() .stroke(Color.white, lineWidth: 2))
        .padding(.top, 20)
        
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
      LightCircle(color: .red, opacity: 0.4)
    }
}

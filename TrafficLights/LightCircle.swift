//
//  Light.swift
//  TrafficLights
//
//  Created by Дарья Носова on 16.02.2022.
//

import SwiftUI

struct LightCircle: View {
  let color: Color
  
    var body: some View {
        Circle()
        .foregroundColor(color)
        .frame(width: 150, height: 150)
        .overlay(Circle() .stroke(Color.white, lineWidth: 3))
        .padding(.top, 20)
        
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
      LightCircle(color: .red)
    }
}

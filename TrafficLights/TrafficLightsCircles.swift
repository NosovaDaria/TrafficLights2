//
//  TrafficLightsCircles.swift
//  TrafficLights
//
//  Created by Дарья Носова on 16.02.2022.
//

import SwiftUI

struct TrafficLightsCircles: View {
    let redOpacity: Double
    let yellowOpacity: Double
    let greenOpacity: Double
  
    var body: some View {
      VStack {
        LightCircle(color: .red, opacity: redOpacity)
        LightCircle(color: .yellow, opacity: yellowOpacity)
        LightCircle(color: .green, opacity: greenOpacity)
      }
    }
}


struct TrafficLightsCircles_Previews: PreviewProvider {
    static var previews: some View {
      TrafficLightsCircles(redOpacity: 0.4, yellowOpacity: 0.4, greenOpacity: 0.4)
    }
}

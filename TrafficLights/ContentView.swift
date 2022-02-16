//
//  ContentView.swift
//  TrafficLights
//
//  Created by Дарья Носова on 16.02.2022.
//

import SwiftUI

enum CurrentLight {
  case red, yellow, green
}

struct ContentView: View {
  
  @State private var currentLight = CurrentLight.red
  let lightIsOff = 0.4
  let lightIsOn = 1.0
  @State var redOpacity = 0.4
  @State var yellowOpacity = 0.4
  @State var greenOpacity = 0.4
  @State private var text = "START"
  
    var body: some View {
      ZStack {
        Color.black
          .ignoresSafeArea()
        VStack {
          TrafficLightsCircles(redOpacity: redOpacity, yellowOpacity: redOpacity, greenOpacity: redOpacity)
            Spacer()
          
          Button(action: {changeLights()}) {
            Text(text)
              .font(.title)
              .bold()
              .foregroundColor(.white)
              .frame(width: 180, height: 60, alignment: .center)
              .border(Color.white, width: 2.0)
              .cornerRadius(6.0)
          }
        }
      }
    }
  func changeLights() {
    text = "NEXT"
    
    switch currentLight {
    case .red:
      redOpacity = lightIsOn
      greenOpacity = lightIsOff
      currentLight = CurrentLight.yellow
    case .yellow:
      redOpacity = lightIsOff
      yellowOpacity = lightIsOn
      currentLight = CurrentLight.green
    default:
      yellowOpacity = lightIsOff
      greenOpacity = lightIsOn
      currentLight = CurrentLight.red
    }
      
  }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}

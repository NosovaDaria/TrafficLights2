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
  
  private let lightIsOff = 0.4
  private let lightIsOn = 1.0
  @State private var currentLight = CurrentLight.red
  @State var redCurrentOpacity = 0.4
  @State var yellowCurrentOpacity = 0.4
  @State var greenCurrentOpacity = 0.4
  @State private var buttonTitle = "START"
  
    var body: some View {
      ZStack {
        Color.gray
          .ignoresSafeArea()
        VStack {
          LightCircle(color: .red, opacity: redCurrentOpacity)
          LightCircle(color: .yellow, opacity: yellowCurrentOpacity)
          LightCircle(color: .green, opacity: greenCurrentOpacity)
          
          Spacer()


          Button(buttonTitle) {
            changeLightColor()
          }
          .buttonStyle(.bordered)
          .font(.title)
          .foregroundColor(.white)
          .frame(width: 180, height: 60, alignment: .center)
          .border(Color.white, width: 3.0)
          .cornerRadius(7.0)
        }
      }
    }
  
  private func changeLightColor() {
    buttonTitle = "NEXT"
    switch currentLight {
    case .red:
      redCurrentOpacity = lightIsOn
      greenCurrentOpacity = lightIsOff
      currentLight = CurrentLight.yellow
    case .yellow:
      redCurrentOpacity = lightIsOff
      yellowCurrentOpacity = lightIsOn
      currentLight = CurrentLight.green
    default:
      yellowCurrentOpacity = lightIsOff
      greenCurrentOpacity = lightIsOn
      currentLight = CurrentLight.red
    }
  }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}

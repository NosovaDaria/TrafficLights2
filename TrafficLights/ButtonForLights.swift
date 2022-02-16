////
////  ButtonForLights.swift
////  TrafficLights
////
////  Created by Дарья Носова on 16.02.2022.
////
//
//import SwiftUI
//
//enum CurrentLight {
//  case red, yellow, green
//}
//
//struct ButtonForLights: View {
//  @State private var currentLight = CurrentLight.red
//  @State private var text = "START"
//  let lightIsOff = 0.4
//  let lightIsOn = 1.0
//  
//    var body: some View {
//      Button(action: {changeLights()}) {
//        Text(text)
//          .font(.title)
//          .bold()
//          .foregroundColor(.white)
//          .frame(width: 180, height: 60, alignment: .center)
//          .border(Color.white, width: 2.0)
//          .cornerRadius(6.0)
//      }
//    }
//  func changeLights() {
//    text = "NEXT"
//    
//    switch currentLight {
//    case .red:
//      TrafficLightsCircles(redOpacity: 1.0, yellowOpacity: 0.4, greenOpacity: 0.4)
//      currentLight = CurrentLight.yellow
//    case .yellow:
//      TrafficLightsCircles(redOpacity: 0.4, yellowOpacity: 1.0, greenOpacity: 0.4)
//      currentLight = CurrentLight.green
//    default:
//      TrafficLightsCircles(redOpacity: 0.4, yellowOpacity: 0.4, greenOpacity: 1.0)
//      currentLight = CurrentLight.red
//    }
//      
//  }
//}
//
//struct ButtonForLights_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonForLights()
//    }
//}

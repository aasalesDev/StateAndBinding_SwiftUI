//
//  ContentView.swift
//  Display&Brightness
//
//  Created by Anderson Sales on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var autoEnabled = true
    @State var trueToneEnabled = true
    @State var brightnessLevel = 50.0
    @State var boldTextEnabled = false
    @State var raiseToWakeEnabled = true
    
    let appearance = "APPEARANCE"
    let brightness = "BRIGHTNESS"
    let footerNote = "Automatically adapt iPhone display based on ambient lightning conditions to make colors appear consistent in different environments"
    
    var body: some View {
        
        Form {
            Section(header: Text(appearance)){
                Image("theme")
                    .resizable()
                    .scaledToFit()
                    .padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
                HStack {
                    Text("Automatic")
                    Spacer()
                    Toggle("", isOn: $autoEnabled)
                }
                HStack {
                    Text("Options")
                    Spacer()
                    Text("Light Until Sunset")
                }
            }
            
            Section {
                HStack {
                    Text("Text Size")
                    Spacer()
                    Image(systemName: "chevron.forward")
                }
                HStack {
                    Text("Bold Text")
                    Spacer()
                    Toggle("", isOn: $boldTextEnabled)
                }
            }
            
            Section(header: Text("BRIGHTNESS"), footer: Text(footerNote)) {
                HStack {
                    Image(systemName: "sun.min.fill")
                    Slider(value: $brightnessLevel, in: 0...100)
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                HStack {
                    Text("True Tone")
                    Spacer()
                    Toggle("", isOn: $trueToneEnabled)
                }
            }
            
            Section {
                HStack {
                    Text("Night Shift")
                    Spacer()
                    Text("Off")
                    Image(systemName: "chevron.forward")
                }
            }
            
            Section {
                HStack {
                    Text("Auto-Lock")
                    Spacer()
                    Text("5 minutes")
                    Image(systemName: "chevron.forward")
                }
                
                HStack {
                    Text("Raise to Wake")
                    Spacer()
                    Toggle("", isOn: $raiseToWakeEnabled)
                }
            }
            
            Section(header: Text("DISPLAY"), footer: Text("Choose a view for iPhone. Larger text shows larger controls. Default shows more content.")) {
                HStack {
                    Text("Display Zoom")
                    Spacer()
                    Text("Larger Text")
                    Image(systemName: "chevron.forward")
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  ToggleStyleIsOnProperty
//
//  Created by ramil on 24.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ToggleStyle_isOn()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ToggleStyle_isOn: View {
    @State private var toggleState = true
    var body: some View {
        VStack(spacing: 20) {
            Text("Toggle Style").font(.largeTitle)
            Text("Is On").font(.title).foregroundColor(.gray)
            Text("You can say the isOn property is the main component of the Toggle. You can customize a toggle to represent this on/off, true/false state.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.purple)
                .layoutPriority(1.0)
                .foregroundColor(.white)
            
            Toggle("", isOn: $toggleState).padding()
            Toggle("", isOn: $toggleState).padding()
        }
    }
}

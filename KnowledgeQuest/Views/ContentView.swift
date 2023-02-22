//
//  ContentView.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Knowledge Quest")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text("Test out your knowledge in science")
                    .foregroundColor(.accentColor)
            }
            PrimaryButton(text: "Let's Start")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        //.background(Color(hue: 0.186, saturation: 0.391, brightness: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

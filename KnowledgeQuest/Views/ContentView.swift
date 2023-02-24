//
//  ContentView.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Knowledge Quest")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text("Test out your knowledge in science")
                        .foregroundColor(.accentColor)
                }
                
                NavigationLink {
                    TriviaView()
                } label: {
                    PrimaryButton(text: "Let's Start")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        }
        //.background(Color(hue: 0.489, saturation: 0.605, brightness: 0.973))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

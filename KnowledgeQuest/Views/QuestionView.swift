//
//  QuestionView.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 23/02/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .lilacTitle()
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 50)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Which of the six main characters on the TV show 'Friends' never got married?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.accentColor)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(Color(hue: 0.489, saturation: 0.605, brightness: 0.973))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

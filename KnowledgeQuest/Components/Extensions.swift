//
//  Extensions.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 22/02/23.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
    }
}

//we can use this func instead of those three lines of code-- but I'm not using it now

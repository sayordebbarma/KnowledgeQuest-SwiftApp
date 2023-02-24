//
//  Answer.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 23/02/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text = AttributedString().self
    var isCorrect = Bool().self
}

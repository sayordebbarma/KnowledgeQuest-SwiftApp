//
//  Trivia.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 25/02/23.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID{
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correct_answer: String
        var incorrect_answers: [String]
        
        //In the &quot;S.T.A.L.K.E.R.&quot; series, which of these items can&#039;t be used to lower the player&#039;s accumulated radiation?
        //AttributedString help us to change to &quot; to readable string
        var formattedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Error occur during formating: \(error)")
                return ""
            }
        }
        
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correct_answer), isCorrect: true)]
                let incorrects = try incorrect_answers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                
                let allAnswers = correct + incorrects
                
                return allAnswers.shuffled()
                
            } catch {
                print("Error setting answer: \(error)")
                return []
            }
        }
        
    }
}

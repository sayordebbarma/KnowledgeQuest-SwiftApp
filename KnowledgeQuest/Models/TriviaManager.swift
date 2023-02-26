//
//  TriviaManager.swift
//  KnowledgeQuest
//
//  Created by Sayor Debbarma on 25/02/23.
//

import Foundation

class TriviaManager: ObservableObject {
    private(set) var Trivia: [Trivia.Result] = []
    @Published private(set) var length = 0
    
    init() {
        Task.init {
            await fetchTrivia()
        }
    }
    
    
    func fetchTrivia() async {
        guard let url = URL(string: "https://opentdb.com/api.php?amount=10") else {fatalError("URL not detected")}
        
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse )?.statusCode == 200 else {fatalError("Error fetching data")}
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase  //this converts correct_answer to camelCase correctAnswer
            //let decodedData = try decoder.decode(Trivia.self, from: data)
            let decodedData = try decoder.decode(Trivia<[TriviaResult]>.self, from: data)
            
            DispatchQueue.main.async {
                self.Trivia = decodedData.results
                self.length = self.Trivia.count
                
            }
        } catch {
            print("Error fetching trivia: \(error)")
        }
    }
}

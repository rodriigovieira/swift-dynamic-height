//
//  Controller.swift
//  FoxboxTest
//
//  Created by Rodrigo Vieira on 31/03/22.
//

import Foundation

private let kURL = "https://api.themoviedb.org/3/movie/popular?api_key=5bbdafbc059e1e7c89b39e1e427a930a"

class Controller: ObservableObject {
    @Published var movies: [MovieModel]?
    
    func fetchMovies(onComplete: @escaping () -> Void) {
        let session = URLSession.shared
        
        session.dataTask(with: URL(string: kURL)!) { data, res, err in
            let decoder = JSONDecoder()
            
            if (data != nil) {
                do {
                    let decodedData =  try decoder.decode(MovieResults.self, from: data!)
                
                    self.movies = decodedData.results
                    
                    DispatchQueue.main.async {
                        onComplete()
                    }
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}

//
//  ViewController.swift
//  FoxboxTest
//
//  Created by German Battiston on 25/03/2022.
//

import UIKit
import Foundation

private let kURL = "https://api.themoviedb.org/3/movie/popular?api_key=5bbdafbc059e1e7c89b39e1e427a930a"

final class ViewController: UIViewController {
    private var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: kURL) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                return
            }
            
            guard let data = data else {
                return
            }

            guard let parsedData = try? JSONSerialization.jsonObject(with: data) as? [String : Any],
                    let results = parsedData["results"] as? [[String : Any]]  else {
                return
            }
            
            // Start here :D
        }.resume()
    }
}

//
//  MovieModel.swift
//  FoxboxTest
//
//  Created by German Battiston on 25/03/2022.
//

import Foundation

struct MovieResults: Decodable {
    let results: [MovieModel]
}

struct MovieModel: Decodable {
    let title: String
    let overview: String
}

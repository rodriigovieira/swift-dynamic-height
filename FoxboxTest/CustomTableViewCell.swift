//
//  CustomTableViewCell.swift
//  FoxboxTest
//
//  Created by Rodrigo Vieira on 29/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    func setMovieValues(movie: MovieModel) {
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

//
//  CustomNewTableViewCell.swift
//  FoxboxTest
//
//  Created by Rodrigo Vieira on 31/03/22.
//

import UIKit

class CustomNewTableViewCell: UITableViewCell {
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        title.text = "EAEAEAE"
        overview.text = "AUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUUAUUU"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

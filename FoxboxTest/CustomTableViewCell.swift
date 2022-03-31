//
//  CustomTableViewCell.swift
//  FoxboxTest
//
//  Created by Rodrigo Vieira on 31/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    let titleLabel = UILabel()
    let overviewLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureLabels()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setLabels(title: String, overview: String) {
        titleLabel.text = "Title: \(title)"
        overviewLabel.text = "Overview: \(overview)"
    }

    func configureLabels() {
        addSubview(titleLabel)
        addSubview(overviewLabel)
        
        overviewLabel.numberOfLines = 0
        
        configureTitleConstraints()
        configureOverviewConstraints()
    }
    
    func configureTitleConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20).isActive = true
        trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    func configureOverviewConstraints() {
        overviewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        overviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        overviewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        trailingAnchor.constraint(equalTo: overviewLabel.trailingAnchor, constant: 20).isActive = true
        overviewLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20).isActive = true
        overviewLabel.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: 20).isActive = true
    }
}

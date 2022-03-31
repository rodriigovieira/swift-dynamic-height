//
//  RootViewController.swift
//
//
//  Created by Rodrigo Vieira on 25/03/2022.
//

import UIKit
import Foundation


final class RootViewController: UIViewController {
    let tableView = UITableView()
    var controller = Controller()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        controller.fetchMovies(onComplete: self.tableView.reloadData)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        let storyboard = UIStoryboard(name: "SecondTableView/Storyboard", bundle: nil)
//        let newVC = storyboard.instantiateViewController(withIdentifier: "viewController")
//
//        self.present(newVC, animated: true)
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 50
        
        tableView.delegate = self
        tableView.dataSource = self
        
        configureTableViewConstraints()
    }
    
    func configureTableViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension RootViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        let title = controller.movies?[indexPath.row].title ?? "No title"
        let overview = controller.movies?[indexPath.row].overview ?? "No overview"
        cell.setLabels(title: title, overview: overview)

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.movies?.count ?? 0
    }
}

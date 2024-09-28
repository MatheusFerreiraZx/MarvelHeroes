//
//  HomeViewController.swift
//  MarvelHeroes
//
//  Created by Matheus Ferreira on 28/09/24.
//

import UIKit

class HomeViewController: UIViewController {
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHomeView()
    }
    
    private func setupHomeView() {
        view.addSubview(homeView)
        homeView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: view.topAnchor),
            homeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

//
//  ProfileViewController.swift
//  DemoUnitTesting
//
//  Created by Hajra Masood on 03/12/2025.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let nameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello World"
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: 22, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
    }

    private func setupViews() {
        view.addSubview(nameLabel)

        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

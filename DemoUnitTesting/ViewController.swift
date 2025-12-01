//
//  ViewController.swift
//  DemoUnitTesting
//
//  Created by Hajra Masood on 03/07/2025.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let tl = UILabel()
        tl.text = "Hello"
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.font = UIFont.systemFont(ofSize: 24)
        return tl
    }()
    private let changeButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Change Text", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return btn
    }()
    private let viewModel = TextUpdater()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(titleLabel)
        view.addSubview(changeButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            changeButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc private func buttonTapped() {
        let newText = viewModel.updateText()
        titleLabel.text = newText
    }
}



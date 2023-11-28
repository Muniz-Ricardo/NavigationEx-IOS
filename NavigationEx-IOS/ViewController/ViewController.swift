//
//  ViewController.swift
//  NavigationEx-IOS
//
//  Created by Ricardo on 28/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("next scene", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "", size: 14)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
    }

    private func setupUI() {
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.addTarget(self, action: #selector(navUp), for: .touchUpInside)
        
        setHierarchy()
        setConstraint()
    }
    
    private func setHierarchy() {
        self.view.addSubview(button)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            self.button.widthAnchor.constraint(equalToConstant: 200),
            self.button.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    @objc func navUp() {
        let svController = SecondViewController()
        self.present(svController, animated: true, completion: nil)
    }
}


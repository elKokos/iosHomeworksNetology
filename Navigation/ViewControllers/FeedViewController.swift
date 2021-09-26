//
//  FeedViewController.swift
//  Navigation
//
//  Created by Akmal Astanov on 25.08.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        let showButton = UIButton()
        view.addSubview(showButton)
        
        showButton.layer.borderColor = UIColor.black.cgColor
        showButton.layer.borderWidth = 1
        showButton.layer.cornerRadius = 10
        
        showButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            showButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showButton.widthAnchor.constraint(equalToConstant: 100),
            showButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        showButton.setTitle("Show post", for: .normal)
        showButton.setTitleColor(.red, for: .normal)
        showButton.setTitleColor(.orange, for: .highlighted)
        showButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        
    }
    
    @objc func showPost() {
        let postViewController = PostViewController()
        postViewController.text = "MyFirstPost"
        navigationController?.pushViewController(postViewController, animated: true)
    }
}

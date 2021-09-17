//
//  InfoViewController.swift
//  Navigation
//
//  Created by Akmal Astanov on 15.09.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        // create button
        let saveButton = UIButton()
        view.addSubview(saveButton)
        
        saveButton.layer.borderColor = UIColor.black.cgColor
        saveButton.layer.borderWidth = 1
        saveButton.layer.cornerRadius = 10
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            saveButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.widthAnchor.constraint(equalToConstant: 100),
            saveButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        saveButton.setTitle("Save post", for: .normal)
        saveButton.setTitleColor(.red, for: .normal)
        saveButton.setTitleColor(.orange, for: .highlighted)
        saveButton.addTarget(self, action: #selector(savePost), for: .touchUpInside)
    }
    
    @objc func savePost() {
        let alert = UIAlertController(title: "Do you really want to save it?",
                                      message: .none,
                                      preferredStyle: .alert)
        
        let saveActionAlert = UIAlertAction(title: "Save",
                                            style: .default) {_ in
            print("The post saved")
            self.dismiss(animated: true)
        }
        
        let cancelActionAlert = UIAlertAction(title: "Cancel",
                                              style: .cancel) { _ in
            print("Cancel")
        }
        
        alert.addAction(saveActionAlert)
        alert.addAction(cancelActionAlert)
        
        present(alert, animated: true, completion: nil)
    }
}


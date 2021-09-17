//
//  PostViewController.swift
//  Navigation
//
//  Created by Akmal Astanov on 15.09.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = text
        view.backgroundColor = .darkGray
        
        configureBarButtonItem()
    }
    
    
    private func configureBarButtonItem() {
        // create and add bar button item
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                      target: self,
                                      action: #selector(createNewPost))
    }
    
    
    // segue to infoViewController
    @objc func createNewPost() {
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true, completion: nil)
    }
    
    
}

//
//  ViewController.swift
//  StackView
//
//  Created by Uladzislau Daratsiuk on 10/7/18.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let view1 = MainViews()
    let view2 = MainViews()
    let view3 = MainViews()
    
    lazy var stackView: UIStackView = {
       let sv = UIStackView(arrangedSubviews: [view1, view2, view3])
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.spacing = 20
        sv.distribution = .fillEqually
        return sv
    }()
    
    fileprivate func setupView(){
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            stackView.heightAnchor.constraint(equalToConstant: view.frame.height/2)
            
            ])
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }


}


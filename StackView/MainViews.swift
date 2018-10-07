//
//  MainViews.swift
//  StackView
//
//  Created by Uladzislau Daratsiuk on 10/7/18.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainViews: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .blue
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

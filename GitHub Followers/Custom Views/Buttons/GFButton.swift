//
//  GFButton.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 19/04/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    convenience init(backgroundColour: UIColor, title: String) {
        self.init(frame: .zero)
        
        self.backgroundColor = backgroundColour
        self.setTitle(title, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(backgroundColour: UIColor, title: String) {
        self.backgroundColor = backgroundColour
        setTitle(title, for: .normal)
    }
}

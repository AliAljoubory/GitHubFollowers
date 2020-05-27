//
//  UITableView.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 26/05/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}

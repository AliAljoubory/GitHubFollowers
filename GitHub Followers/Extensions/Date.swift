//
//  Date.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 18/05/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

extension Date {
    
    func converToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}

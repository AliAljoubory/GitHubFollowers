//
//  User.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 21/04/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

struct User: Codable {
    
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let followers: Int
    let following: Int
    let createdAt: Date
}

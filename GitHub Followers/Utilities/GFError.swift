//
//  GFError.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 08/05/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

enum GFError: String, Error {
    
    case invalidRequest = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data recieved from the server is invalid. Please try again."
    case unableToFavourite = "Unable to favourite this user. Please try again later."
    case alreadyInFavourites = "You've already added this user into your favourites."
}

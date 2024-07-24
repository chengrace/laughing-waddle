//
//  User.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

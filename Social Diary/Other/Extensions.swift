//
//  Extensions.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import Foundation

// this extension allows us to enter users to the firebase database as a dictionary
extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
        
    }
}

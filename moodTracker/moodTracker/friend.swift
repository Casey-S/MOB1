//
//  friend.swift
//  moodTracker
//
//  Created by MacBook Pro  on 10/3/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

enum Mood: String {
    case angry = "😡"
    case medium = "😑"
    case happy = "😁"
}

class Friend {
    
    init(name: String, mood: Mood = .happy) {
        self.name = name
        self.mood = mood
    }
    
    let name: String
    var mood: Mood
}

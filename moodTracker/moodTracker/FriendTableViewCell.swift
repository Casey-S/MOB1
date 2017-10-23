//
//  FriendTableViewCell.swift
//  moodTracker
//
//  Created by MacBook Pro  on 10/4/17.
//  Copyright © 2017 Make School. All rights reserved.
//


import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var moodTableViewController: MoodTableViewController!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
 
    static let happyString = "Far out, man."
    static let madString = "You threw a ringer for a ringer!"
    static let mehString = "Well, that's just, like, your opinion, man."
    static let moodDescriptions: [Mood: String] = [
        Mood.happy: happyString,
        Mood.medium: mehString,
        Mood.angry: madString
    ]
    
    
    var friend: Friend! {
        didSet {
            nameLabel.text = friend.name
            moodDescriptionLabel.text = FriendTableViewCell.moodDescriptions[friend.mood]
            moodButton.setTitle(friend.mood.rawValue, for: .normal)
        }
    }
    
   
    @IBAction func moodButtonPressed(_ sender: AnyObject) {
        moodTableViewController.updateFriend(friend: friend)
    }
    
    
}

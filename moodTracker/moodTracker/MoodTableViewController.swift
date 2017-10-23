//
//  MoodTableViewController.swift
//  moodTracker
//
//  Created by MacBook Pro  on 10/4/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class MoodTableViewController: UITableViewController {
    
    var friends: [Friend] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        let friend = friends[indexPath.row]
        cell.friend = friend
        cell.moodTableViewController = self
        return cell
    }
    
    
    
    func updateFriend(friend: Friend) {
        let mood = nextMood(mood: friend.mood)
        friend.mood = mood
        tableView.reloadData()
    }
    
    func addFriend(friend: Friend) {
        friends.append(friend)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addFriendViewController = segue.destination as! AddFriendViewController
        addFriendViewController.moodTableViewController = self
    }
    
    
    
    func nextMood(mood: Mood) -> Mood {
        switch mood {
        case .angry: return .medium
        case .medium: return .happy
        case .happy: return .angry
        }
    }
}

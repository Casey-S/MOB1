//
//  AddFriendViewController.swift
//  moodTracker
//
//  Created by MacBook Pro  on 10/4/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit


class AddFriendViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moodSegmentedControl: UISegmentedControl!
    
    var moodTableViewController: MoodTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        let friend = createFriendFromUI()
        moodTableViewController.addFriend(friend: friend)
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        presentingViewController?.dismiss(animated: true)
    }
    
    
    
    private func createFriendFromUI() -> Friend {
        let name = nameTextField.text!
        let mood: Mood
        switch moodSegmentedControl.selectedSegmentIndex {
        case 0: mood = .happy
        case 1: mood = .medium
        case 2: mood = .angry
        default: mood = .happy
        }
        return Friend(name: name, mood: mood)
    }
    
    
}

//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["😭": "ugly crying", "😃": "happy", "🥰": "loving", "😡": "angry"]
    var customMessages: [String : String] = [:]
    "ugly crying": ["cheer up buttercup", "take a deep breathe", "do you need to talk?"]
    "happy": ["cool", "have a great day", "that's awesome!"]
    "loving": ["I luv you", "Yay", "That's cool"]
    "angry": ["Calm down", "Don't be mad", "Chill out"]
    for (index, element) in emojis () {
        customMessages[element] = emojis[index]
    }
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages()[emojis[selectedEmotion!]!]?[0]
        let alertController = UIAlertController(title: "Ok", message: "\(emojiMessage)", preferredStyle: UIAlertController.Style.alert)
        for (key, value) in emojis {
            print("\(value)")
        }; alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


// message pops up saying yay!! Have an amazing day!
}

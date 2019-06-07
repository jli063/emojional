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
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Ok", message: "Yay, have an amazing day", preferredStyle: UIAlertController.Style.alert)
        for (key, value) in emojis {
            print("\(value)")
        }; alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


// message pops up saying yay!! Have an amazing day!
}

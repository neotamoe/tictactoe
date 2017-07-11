//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Neota Moe on 7/10/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 // x
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    @IBAction func action(_ sender: AnyObject) {
        if (gameState[sender.tag-1] == 0) {
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1) {
                sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                activePlayer = 1
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


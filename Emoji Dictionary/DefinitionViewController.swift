//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Harsha Rao on 1/27/17.
//  Copyright © 2017 Harsha Rao. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        //    var emojis = ["😀","😬","😂","😡","😎","😅","😱","😍","😇","👻"]
        
        if emoji == "😀"{
            definitionLabel.text = "A standard smiley face"
        }
        
        if emoji == "😬"{
            definitionLabel.text = "A worried face"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Harsha Rao on 1/27/17.
//  Copyright © 2017 Harsha Rao. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var originYearLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        categoryLabel.text = emoji.category
        originYearLabel.text = "Origin year is \(emoji.originYear)"
        definitionLabel.text = emoji.definition
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

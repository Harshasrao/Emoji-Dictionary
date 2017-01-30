//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Harsha Rao on 1/26/17.
//  Copyright © 2017 Harsha Rao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView! //our tableview
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let passedEmoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: passedEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.originYear = 2003
        emoji1.category = "Smiley category"
        emoji1.definition = "What? This is a standard smiley face"
    
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😱"
        emoji2.originYear = 2015
        emoji2.category = "Smiley category"
        emoji2.definition = "A smiley face based off the art piece 'The Scream'"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👻"
        emoji3.originYear = 2011
        emoji3.category = "Costume category"
        emoji3.definition = "A smiley face pretending to be a ghost"
        
        return [emoji1, emoji2, emoji3]
    
    }
    
}


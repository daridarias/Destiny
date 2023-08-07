//
//  ViewController.swift
//  Destini
//
//  Created by Дарья Сотникова on 06.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel?
    @IBOutlet weak var choice1Button: UIButton?
    @IBOutlet weak var choice2Button: UIButton?
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle ?? "")
        updateUI()
    }
    
    func updateUI() {
        storyLabel?.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button?.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice1Button?.titleLabel?.minimumScaleFactor = 0.5
        choice1Button?.titleLabel?.adjustsFontSizeToFitWidth = true
        
        choice2Button?.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
        choice2Button?.titleLabel?.minimumScaleFactor = 0.5
        choice2Button?.titleLabel?.adjustsFontSizeToFitWidth = true
    }
}


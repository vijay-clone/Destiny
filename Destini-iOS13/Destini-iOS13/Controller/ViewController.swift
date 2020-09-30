//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUi(storyNumber: 0 )
 
        
    }
    
    
    @IBAction func choicePressed(_ sender: UIButton) {
        let buttonSelected = sender.currentTitle!
        
        let storyName = storyBrain.storyUpdate(button: buttonSelected)
        updateUi(storyNumber: storyName)
       
    }
    
    
    func updateUi(storyNumber: Int){
        storyLabel.text = storyBrain.storyData[storyNumber].title
        choice1Button.setTitle(storyBrain.storyData[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyData[storyNumber].choice2, for: .normal)
        
    }
    
    
}



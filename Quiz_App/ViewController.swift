//
//  ViewController.swift
//  Quiz_App
//
//  Created by Kullanici on 2.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var questionNumber = 0
    let quiz : [String] = ["Four plus two equals to six.","Five minus 1 equals to four.", "Nine divided by three equals to three."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber]
        
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        questionLabel.text = quiz[questionNumber]
    }
    

}


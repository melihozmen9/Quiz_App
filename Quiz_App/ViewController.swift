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
    let quiz : [[String]] = [["Four plus two equals to six.","True"],["Five minus 1 equals to four.","True"], ["Nine divided by three equals to two.","False"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber][0]
      
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        if questionNumber < quiz.count-1 {
        questionNumber += 1
        } else {
            questionNumber = 0
            questionLabel.text = "Quiz Finished. Thank you for participation."
        }
        questionLabel.text = quiz[questionNumber][0]
    }
    

}


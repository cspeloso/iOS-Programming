//
//  ViewController.swift
//  Quiz
//
//  Created by Timothy Henry on 12/17/18.
//  Copyright © 2018 Timothy Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet var questionLabel: UILabel!
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var currentQuestionLabelCenterXConstraint: NSLayoutConstraint!
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabelCenterXConstraint: NSLayoutConstraint!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //questionLabel.text = questions[currentQuestionIndex]
        currentQuestionLabel.text = questions[currentQuestionIndex]
    }


    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        //questionLabel.text = question
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    func animateLabelTransitions() {
        
        let animationClosure = { () -> Void in
            //self.questionLabel.alpha = 1
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
        }
        
        //UIView.animate(withDuration: 0.5, animations: animationClosure)
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
                        self.currentQuestionLabel.alpha = 0
                        self.nextQuestionLabel.alpha = 1
        },
                       completion: { _ in
                        swap(&self.currentQuestionLabel,
                             &self.nextQuestionLabel)
        })
    
    
    
    
    }

    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        //set labels initial alpha
        nextQuestionLabel.alpha = 0
    }
    
    
}


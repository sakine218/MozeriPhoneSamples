//
//  ViewController.swift
//  Anzan
//
//  Created by Sakine Nishibayashi on 2019/11/23.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var rightNumberLabel: UILabel!
    @IBOutlet var leftNumberLabel: UILabel!
    @IBOutlet var operatorLabel: UILabel!
    @IBOutlet var answerTextField: UITextField!
    
    var leftNumber: Int = 0
    var rightNumber: Int = 0
    var operatorIndex: Int = 0
    var correctNumber: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initNumbers()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        answerTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.userNumber = Int(answerTextField.text!)
        resultViewController.correctNumber = correctNumber
    }
    
    @IBAction func checkAnswerButtonPressed() {
        performSegue(withIdentifier: "toResult", sender: nil)
    }
    
    func initNumbers() {
        answerTextField.text = ""
        leftNumber = Int.random(in: 1...999)
        leftNumberLabel.text = String(leftNumber)
        rightNumber = Int.random(in: 1...999)
        rightNumberLabel.text = String(rightNumber)
        operatorIndex = Int.random(in: 0...3)
        
        if operatorIndex == 0 {
            operatorLabel.text = "+"
            correctNumber = leftNumber + rightNumber
        } else if operatorIndex == 1 {
            operatorLabel.text = "-"
            correctNumber = leftNumber - rightNumber
        } else if operatorIndex == 2 {
            operatorLabel.text = "×"
            correctNumber = leftNumber * rightNumber
        } else {
            operatorLabel.text = "÷"
            correctNumber = leftNumber / rightNumber
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }


}


//
//  ResultViewController.swift
//  Anzan
//
//  Created by Sakine Nishibayashi on 2019/11/23.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var correctAnswerLabel: UILabel!
    @IBOutlet var resultImageView: UIImageView!
    var userNumber: Int!
    var correctNumber: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctAnswerLabel.text = String(correctNumber)
        if userNumber == correctNumber {
            resultImageView.image = UIImage(named: "correct")
        } else {
            resultImageView.image = UIImage(named: "incorrect")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func restartButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

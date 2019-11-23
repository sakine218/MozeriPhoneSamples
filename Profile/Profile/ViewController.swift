//
//  ViewController.swift
//  Profile
//
//  Created by Sakine Nishibayashi on 2019/11/23.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tapNameButton() {
        label.text = "とびすけ"
        
        imageView.image = UIImage(named: "tobisuke.png")
    }

}


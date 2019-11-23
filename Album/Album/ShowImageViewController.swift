//
//  ShowImageViewController.swift
//  Album
//
//  Created by Sakine Nishibayashi on 2019/11/23.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var imageName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named: imageName)
    }
    
    @IBAction func backButton() {
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

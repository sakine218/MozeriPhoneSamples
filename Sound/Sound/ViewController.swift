//
//  ViewController.swift
//  Sound
//
//  Created by Sakine Nishibayashi on 2019/11/23.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit
import AVFoundation // 音楽を鳴らしたいときに必要

class ViewController: UIViewController {
    
    // Main.storyboardで作成したボタンをコードでも扱うために記述しているよ
    @IBOutlet var button: UIButton!
    
    // 音楽を鳴らす源の役割を担っているよ
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBeginButton() {
        // 音を鳴らすためのコード
        let path = Bundle.main.path(forResource: "guitar", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.play()
        // ボタンが押されている間は、画像が猫に変わるためのコード
        button.setImage(UIImage(named: "musician_cat.png"), for: .normal)
        
        print("tap begin")
    }
    
    @IBAction func tapEndButton() {
        button.setImage(UIImage(named: "guitar.png"), for: .normal)
        
        print("tap end")
    }

}


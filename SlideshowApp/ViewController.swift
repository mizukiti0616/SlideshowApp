//
//  ViewController.swift
//  SlideshowApp
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 mizuki.amano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func Nextpage(_ sender: Any) {
        imageIndex += 1;
        if imageIndex > 2 {
            imageIndex = 0
        }
       
        Image.image = UIImage(named: imageNames[imageIndex])    }
    @IBAction func Backpage(_ sender: Any) {
        imageIndex2 -= 1;
        if imageIndex2 < 0 {
            imageIndex2 = 2
        }
        Image.image = UIImage(named: imageNames[imageIndex2])
    }
    @IBAction func Slideshow(_ sender: Any) {
        if timer == nil {
            // タイマーを動かすコード
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
            
        else {
            // タイマーを止めるコード
            timer?.invalidate()
            timer = nil
        }
   
    }
    @IBOutlet weak var Image: UIImageView!
    
    var timer_sec: Float = 0
    var timer: Timer?
    var imageIndex2 = 0
    var imageIndex = 1
    let imageNames = ["mig.jpg", "panda.jpg", "Chiken.jpg"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Image.image = UIImage(named: "mig.jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateTimer(timer: Timer) {
        self.timer_sec += 1
        imageIndex += 1;
        if imageIndex > 2 {
            imageIndex = 0
        }
         Image.image = UIImage(named: imageNames[imageIndex])    }
        
    }




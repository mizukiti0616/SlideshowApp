//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by apple on 2017/12/28.
//  Copyright © 2017年 mizuki.amano. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var Image: UIImageView!
    
     var name : UIImage!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let result = name
        Image.image = result
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

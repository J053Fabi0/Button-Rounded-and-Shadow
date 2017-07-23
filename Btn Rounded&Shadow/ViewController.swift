//
//  ViewController.swift
//  Btn Rounded&Shadow
//
//  Created by Jose Fabio_ on 22/07/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainButton: UIButton!
    
    @IBOutlet var opacityLabel: UILabel!
    @IBOutlet var radiusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeOpacity(_ sender: UISlider) {
        mainButton.layer.shadowOpacity = sender.value
        opacityLabel.text = String(sender.value)
    }
    
    @IBAction func changeRadious(_ sender: UISlider) {
        mainButton.layer.shadowRadius = CGFloat(sender.value)
        radiusLabel.text = String(sender.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


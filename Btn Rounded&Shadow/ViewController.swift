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
    
    @IBOutlet var redRGBALabel: UILabel!
    @IBOutlet var greenRGBALabel: UILabel!
    @IBOutlet var blueRGBALabel: UILabel!
    
    @IBOutlet var redRGBASlider: UISlider!
    @IBOutlet var greenRGBASlider: UISlider!
    @IBOutlet var blueRGBASlider: UISlider!
    
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
    
    @IBAction func changeRedRGBA(_ sender: UISlider) {
        mainButton.backgroundColor = UIColor.init(  red: CGFloat(sender.value/255),
                                                  green: CGFloat(greenRGBASlider.value/255),
                                                   blue: CGFloat(blueRGBASlider.value/255),
                                                  alpha: 1)
        
        redRGBALabel.text = String(Int(sender.value))
    }
    
    @IBAction func changeGreenRGBA(_ sender: UISlider) {
        mainButton.backgroundColor = UIColor.init(  red: CGFloat(redRGBASlider.value/255),
                                                  green: CGFloat(sender.value/255),
                                                   blue: CGFloat(blueRGBASlider.value/255),
                                                  alpha: 1)
        
        greenRGBALabel.text = String(Int(sender.value))
    }
    
    @IBAction func changeBlueRGBA(_ sender: UISlider) {
        mainButton.backgroundColor = UIColor.init(  red: CGFloat(redRGBASlider.value/255),
                                                  green: CGFloat(greenRGBASlider.value/255),
                                                   blue: CGFloat(sender.value/255),
                                                  alpha: 1)
        
        blueRGBALabel.text = String(Int(sender.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


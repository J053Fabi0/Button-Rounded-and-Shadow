//
//  RoundButton.swift
//  Btn Rounded&Shadow
//
//  Created by Jose Fabio_ on 22/07/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    override func didMoveToWindow() {
        self.backgroundColor = UIColor.init(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        self.setTitleColor(UIColor.black, for: .normal)
        self.setTitleColor(UIColor.white, for: .highlighted)
        
        self.layer.cornerRadius = self.frame.height/2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 15
    }
}

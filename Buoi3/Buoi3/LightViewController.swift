//
//  LightViewController.swift
//  Buoi3
//
//  Created by Thuy on 10/23/20.
//  Copyright © 2020 Cong Thanh. All rights reserved.
//

import UIKit

class LightViewController: UIViewController {
    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    @IBOutlet weak var isOnButton: UIButton!
    
    var isOn: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isOnSwitch.isOn = false
        isOn = true
        bulbImageView.image = UIImage(named: "bulbOff")
        isOnButton.setTitle("Bật den", for: .normal)
    }
    
    @IBAction func turnOffBulb(_ sender: UISwitch) {
        print(sender.isOn)
        if sender.isOn {
            bulbImageView.image = UIImage(named: "bulbOn")
            isOnButton.setTitle("Tắt đèn", for: .normal)
        }
        else {
            bulbImageView.image = UIImage(named: "bulbOff")
            isOnButton.setTitle("Bật đèn", for: .normal)
        }
    }
    
    @IBAction func onPress(_ sender: Any) {
        if isOn {
            isOnSwitch.isOn = false
            isOnButton.setTitle("Bật đèn", for: .normal)
            bulbImageView.image = UIImage(named: "bulbOff")
        } else {
            isOnSwitch.isOn = true
            isOnButton.setTitle("Tắt đèn", for: .normal)
            bulbImageView.image = UIImage(named: "bulbOn")
        }
        isOn = !isOn
    }

}

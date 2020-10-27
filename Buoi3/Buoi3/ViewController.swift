//
//  ViewController.swift
//  Buoi3
//
//  Created by Thuy on 10/23/20.
//  Copyright © 2020 Cong Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var violetView: UIView!
    
    let myView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
        view.layer.cornerRadius = view.bounds.height/2
        view.clipsToBounds = true
        return view
    } ()
    
    let myView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.purple
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return view
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //thay doi kich thuoc cua GreenView
        greenView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        redView.frame = CGRect(x: 200, y: 600, width: 100, height: 300)
        violetView.frame = CGRect(x: 200, y: 200, width: 300, height: 300)
        violetView.center.x = redView.center.x
        
        print(greenView.bounds)
        greenView.alpha = 0.8
        redView.layer.cornerRadius = 10
        
        //them myView vao superview
        view.addSubview(myView)
        myView.frame.origin.y = violetView.frame.maxY + 20
        
        myView.addSubview(myView2)
    }


}


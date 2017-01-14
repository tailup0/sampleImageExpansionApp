//
//  ViewController.swift
//  sampleImageExpansionApp
//
//  Created by Muneharu Onoue on 2017/01/14.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    var timer: Timer!
    var isBigNow = false


    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 7.0, repeats: true, block: self.doSomething)
        timer.fire()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doSomething(tm: Timer) {
        if isBigNow {
            isBigNow = false
            reduction()
        } else {
            isBigNow = true
            expansion()
        }
    }
    
    func expansion() {
        let ms = CGAffineTransform(scaleX: 3, y: 3) //3倍に拡大
        UIView.animate(withDuration: 6.9) {
            self.img.transform = ms
        }
    }
    
    func reduction() {
        let ms = CGAffineTransform(scaleX: 1, y: 1) //元の大きさ
        UIView.animate(withDuration: 6.9) {
            self.img.transform = ms
        }
    }


}


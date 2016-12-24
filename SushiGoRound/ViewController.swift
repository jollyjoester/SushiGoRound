//
//  ViewController.swift
//  SushiGoRound
//
//  Created by NanashimaHideyuki on 12/25/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapped(_:)))
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    func tapped(_ sender: UITapGestureRecognizer) {
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let rand = CGFloat(arc4random_uniform(100)) / 100
        
        let sushi = UILabel(frame: CGRect(x: screenWidth, y: screenHeight * rand, width: 44, height: 44))
        sushi.font = UIFont(name: "HelveticaNeue", size: 36)
        sushi.text = "🍣"
        
        view.addSubview(sushi)
        
        UIView.animate(withDuration: 3, delay: 0, options: [.curveLinear], animations: { () -> Void in
            sushi.center = CGPoint(x: -sushi.bounds.size.width / 2, y: sushi.center.y)
        }, completion: { (Bool) -> Void in
            sushi.removeFromSuperview()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


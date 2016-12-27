//
//  TodayViewController.swift
//  SushiGoRoundTodayExtension
//
//  Created by NanashimaHideyuki on 12/25/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TodayViewController.tapped(_:)))
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        (0...2).forEach {
            let sushi = UILabel(frame: CGRect(x: view.bounds.size.width, y: 33, width: 44, height: 44))
            sushi.text = "🍣"
            view.addSubview(sushi)
            
            UIView.animate(withDuration: 3, delay: TimeInterval($0), options: [.curveLinear, .repeat], animations: { () -> Void in
                sushi.center = CGPoint(x: 0, y: sushi.center.y)
            }, completion: nil)
        }
    }
    
    func tapped(_  sender: UITapGestureRecognizer) {
        let url = URL(string: "sushigoround://")!
        self.extensionContext?.open(url, completionHandler: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
}

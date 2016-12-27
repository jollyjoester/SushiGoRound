//
//  NotificationViewController.swift
//  SushiGoRoundContentExtension
//
//  Created by NanashimaHideyuki on 12/25/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        (0...2).forEach {
            let sushi = UILabel(frame: CGRect(x: view.bounds.size.width, y: 33, width: 44, height: 44))
            sushi.text = "🍣"
            view.addSubview(sushi)
            
            UIView.animate(withDuration: 3, delay: TimeInterval($0), options: [.curveLinear, .repeat], animations: { () -> Void in
                sushi.center = CGPoint(x: 0, y: sushi.center.y)    
            }, completion: nil)
        }

    }
    
    func didReceive(_ notification: UNNotification) {
        
    }

}

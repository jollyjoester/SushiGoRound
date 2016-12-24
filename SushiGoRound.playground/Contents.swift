//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let view = UIView(frame: CGRect(x: 0, y:0, width:320, height:44))
view.backgroundColor = UIColor.black

PlaygroundPage.current.liveView = view

(0...2).forEach {
    let sushi = UILabel(frame: CGRect(x: 320, y: 0, width: 44, height: 44))
    sushi.text = "🍣"
    
    view.addSubview(sushi)
    
    UIView.animate(withDuration: 3, delay: TimeInterval($0), options: [.curveLinear, .repeat], animations: { () -> Void in
        sushi.center = CGPoint(x: 0, y: sushi.center.y)
        
    }, completion: nil)
}

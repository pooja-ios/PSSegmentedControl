//
//  PSSegmentedControl.swift
//  PSSegmentedControl
//
//  Created by pooja sharma on 06/03/20.
//  Copyright © 2020 pooja sharma. All rights reserved.
//

import UIKit

class PSSegmentedControl: UIView {

    var titles = [String]()
    var titleColor = UIColor.black
    var normalBackgroundColor = UIColor.yellow
    var selectedBackgroundColor = UIColor.blue
    var selectedIndex = 0
    var cornerRadius = 0
    var borderWidth:CGFloat = 0
    var font = UIFont.systemFont(ofSize: 15)
    var selectedOverlay  = UIView(frame: .zero)
    
    func create() {
        
        self.backgroundColor = normalBackgroundColor
        self.layer.cornerRadius = CGFloat(cornerRadius)
        
        let container = UIView(frame: CGRect(x: borderWidth, y: borderWidth, width: self.frame.width-(borderWidth*2), height: self.frame.height-(borderWidth*2)))
        self.addSubview(container)
        
        selectedOverlay.layer.cornerRadius = CGFloat(cornerRadius)
        selectedOverlay.backgroundColor = selectedBackgroundColor
        container.addSubview(selectedOverlay)
        
        let segmentWidth = container.frame.width/CGFloat(titles.count)
        for number in 0...titles.count-1 {
            let segment = UIButton.init(type: .custom)
            segment.frame = CGRect(x: segmentWidth*CGFloat(number), y: 0, width: segmentWidth, height: container.frame.height)
            segment.setTitle(titles[number], for: .normal)
            segment.setTitleColor(titleColor, for: .normal)
            segment.titleLabel?.font = font
            if number == selectedIndex {
                selectedOverlay.frame = segment.frame
            }
            segment.addTarget(self, action: #selector(segmentSelected), for: .touchUpInside)
            segment.tag = number
            container.addSubview(segment)
        }
    }
    
    @objc func segmentSelected(sender: UIButton) {
        let tag = sender.tag
        selectedIndex = tag
        UIView.animate(withDuration: 0.2) {
            self.selectedOverlay.frame = sender.frame
        }
    }
}

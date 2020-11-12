//
//  ViewController.swift
//  PSSegmentedControl
//
//  Created by pooja sharma on 06/03/20.
//  Copyright © 2020 pooja sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let segmentControl = PSSegmentedControl.init(frame: CGRect(x: 50, y: 100, width: self.view.frame.width - 100, height: 40))
        segmentControl.titles = ["First", "Second", "Third"]
        segmentControl.font = UIFont.italicSystemFont(ofSize: 15)
        segmentControl.titleColor = .black
        segmentControl.normalBackgroundColor = .yellow
        segmentControl.selectedBackgroundColor = UIColor.blue
        segmentControl.cornerRadius = 0
        segmentControl.borderWidth = 0
        segmentControl.create()
        self.view.addSubview(segmentControl)
    }


}


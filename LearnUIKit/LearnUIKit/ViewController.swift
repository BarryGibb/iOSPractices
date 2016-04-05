//
//  ViewController.swift
//  LearnUIKit
//
//  Created by 凉鱼 on 16/3/31.
//  Copyright © 2016年 凉鱼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentsBar: UISegmentedControl!
    
    @IBOutlet weak var inputTextFiled: UITextField!
    
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //DO Something
    }

    @IBAction func addSegmentsItems(sender: AnyObject) {
        
        
            segmentsBar.insertSegmentWithTitle(inputTextFiled.text, atIndex: segmentsBar.numberOfSegments, animated: true)
       
    }


    @IBAction func changeBackgroundColor(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.whiteColor()
        case 1:
            self.view.backgroundColor = UIColor.blackColor()
        case 2:
            self.view.backgroundColor = UIColor.darkGrayColor()
        case 3:
            self.view.backgroundColor = UIColor.yellowColor()
        default:
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
}


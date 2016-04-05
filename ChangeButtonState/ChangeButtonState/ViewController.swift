//
//  ViewController.swift
//  ChangeButtonState
//
//  Created by 凉鱼 on 16/3/31.
//  Copyright © 2016年 凉鱼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiledInput: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func submitButton(sender: AnyObject) {
        if ((textFiledInput.text?.isEmpty) != nil) {
            labelResult.text = textFiledInput.text
        }

    }
    
    
}


//
//  ViewController.swift
//  coordinateConvertRealPlace
//
//  Created by 凉鱼 on 16/3/31.
//  Copyright © 2016年 凉鱼. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var convertResultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func reverseGeocode(){
        var geocoder = CLGeocoder()
        var p:CLPlacemark?
        var currentLocation = CLLocation(latitude: 32.029171, longitude: 118.788231)
        geocoder.reverseGeocodeLocation(currentLocation, completionHandler: {
            (placemarks:[AnyObject]!, error:NSError!) -> Void in
            //强制转成简体中文
            var array = NSArray(object: "zh-hans")
            NSUserDefaults.standardUserDefaults().setObject(array, forKey: "AppleLanguages")
            //显示所有信息
            if error != nil {
                //println("错误：\(error.localizedDescription))")
                self.textView.text = "错误：\(error.localizedDescription))"
                return
            }
            let pm = placemarks as! [CLPlacemark]
            if pm.count > 0{
                p = placemarks[0] as? CLPlacemark
                //println(p) //输出反编码信息
                self.textView.text = p?.name
            } else {
                println("No placemarks!")
            }
        })
    }
    
}


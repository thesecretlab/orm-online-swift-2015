//
//  ViewController.swift
//  SwiftInApps
//
//  Created by Jon Manning on 21/11/2015.
//  Copyright © 2015 Secret Lab. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

@objc class Car : NSObject {
    
    static let sharedCar = Car(color:UIColor.blackColor())
    
    var color : UIColor?
    
    init(color: UIColor) {
        self.color = color
    }
    
}


@objc class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTapped(sender: AnyObject) {
        
        
        
        label.text = "Button Was Tapped!"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let objCClass = MyObjCClass()
        objCClass.doSomethingInObjectiveC()
        
        
        Alamofire.request(.GET, "https://httpbin.org/get").responseString { (response) -> Void in
            
            if let data = response.data {
                
                
                let json = JSON(data: data)
                
                let hostName = json["headers"]["Host"].string
                
                NSLog("Host is \(hostName)")
                
            }
            
        }
        
        print(Alamofire.request(.GET, "https://httpbin.org/get").debugDescription)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


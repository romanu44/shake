//
//  ViewController.swift
//  sacudir
//
//  Created by Rodrigo Márquez on 11/3/17.
//  Copyright © 2017 Rodrigo Márquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var letrero: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            if letrero.text == "NO"{
            letrero.text = "SI"
            }
            if letrero.text == "SI"{
                letrero.text = "NO"
            }
        }
    }

    @IBAction func limpia() {
        letrero.text = "NO"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


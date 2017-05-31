//
//  ViewController.swift
//  hw3
//
//  Created by 黃健維 on 5/12/17.
//  Copyright © 2017 ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var city : String = ""
    var airport : String = ""
    var IATA : String = ""
    var country : String = ""
    var IATAText :String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.airportFullName.text = airport
        self.cityNameDetail.text = city
        self.countryNameDetail.text = country
        self.imagenameDetail.image = UIImage(named :"\(IATA)")
        print(IATA)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var airportFullName: UITextView!

    @IBOutlet weak var cityNameDetail: UILabel!
    @IBOutlet weak var countryNameDetail: UILabel!
    
    @IBOutlet weak var imagenameDetail: UIImageView!
    
    
}


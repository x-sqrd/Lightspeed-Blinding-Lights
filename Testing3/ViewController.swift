//
//  ViewController.swift
//  Testing3
//
//  Created by Ayush Nayak on 4/6/20.
//  Copyright © 2020 x-squared. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onGoButton(_ sender: Any) {
        performSegue(withIdentifier: "From1to2", sender: self)
    }
    

    @IBAction func ToCredits(_ sender: Any) {
        performSegue(withIdentifier: "ToCredits", sender: self)
    }
}


//
//  ViewController2.swift
//  Testing3
//
//  Created by Ayush Nayak on 4/6/20.
//  Copyright © 2020 x-squared. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueToFileSelection(_ sender: Any) {
        performSegue(withIdentifier: "HardcodeToFileSelect", sender: self)
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

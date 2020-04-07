//
//  ViewController3.swift
//  Testing3
//
//  Created by Ayush Nayak on 4/6/20.
//  Copyright © 2020 x-squared. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func BackButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


    @IBAction func openFiles(_ sender: Any) {
        
        let documentPicker = UIDocumentPickerViewController(documentTypes: [kUTTypePlainText as String], in: .import)
        documentPicker.delegate = self
        documentPicker.allowsMultipleSelection = false
        present(documentPicker, animated: true, completion: nil)
    } // WORKS!!!
    
    @IBAction func createTestFile(_ sender: Any) {
        let file = "\(UUID().uuidString).txt"
        let contents = "Hello World and Hello Ayush!"
        
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = dir.appendingPathComponent(file)
        
        do {
            try contents.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        
        catch {
            print("Error \(error)")
        }
    }
}


extension ViewController3: UIDocumentPickerDelegate {
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        // Code to do stuff with the selected File

            
        
    }
}

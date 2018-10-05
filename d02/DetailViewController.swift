//
//  DetailViewController.swift
//  d02
//
//  Created by Zenande GODONGWANA on 2018/10/04.
//  Copyright © 2018 Zenande GODONGWANA. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var dateInput: UIDatePicker!
    
    @IBOutlet weak var textInput: UITextView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let todaysDate = Date()
        dateInput.minimumDate = todaysDate
        // Do any additional setup after loading the view.
    }
    
    func createNote()  {
        if let name = nameInput.text {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy"
            let dateString = formatter.string(from: dateInput.date)
            Data.append((name, dateString, textInput.text!))
        }
    }

    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "backSegue" && nameInput.text! != "") {
            if let _ = segue.destination as? ViewController {
                createNote()
            }
        }
    }
    
//    @IBAction func doneButton(_ sender: UIBarButtonItem) {
//
//        //createNote()
//
//        performSegue(withIdentifier: "backSegue", sender: self)
//
//    }
}

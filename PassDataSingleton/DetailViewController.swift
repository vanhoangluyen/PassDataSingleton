//
//  ViewController.swift
//  PassDataSingleton
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    var index: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if index != nil {
           inputTextField.text = String(DataService.shared.numbers[index ?? 0])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        if let indexPath = index {
            DataService.shared.numbers[indexPath] = Int(inputTextField.text ?? "") ?? 0
        } else {
            DataService.shared.insertData(Int(inputTextField.text ?? "") ?? 0)
        }
        navigationController?.popToRootViewController(animated: true)
    }
}


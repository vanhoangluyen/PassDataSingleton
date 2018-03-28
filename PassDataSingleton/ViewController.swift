//
//  ViewController.swift
//  PassDataSingleton
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var receiveData: UITextField!
    
    var index: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if index != nil {
           receiveData.text = String(DataService.shared.numbers[index ?? 0])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveAction(_ sender: UIButton) {
        if let data = Int(receiveData.text ?? "") {
            DataService.shared.numbers[index ?? 0] = data
        }
        dismiss(animated: true, completion: nil)
    }
}


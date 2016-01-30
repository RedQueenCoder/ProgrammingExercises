//
//  ViewController.swift
//  Exercise1:SayingHello
//
//  Created by Janie Clayton-Hasz on 1/30/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterName(sender: AnyObject) {
        if let name = nameField.text {
            let nameString:String = nameFunction(name)
            helloLabel.text = nameString
        }
    }
}

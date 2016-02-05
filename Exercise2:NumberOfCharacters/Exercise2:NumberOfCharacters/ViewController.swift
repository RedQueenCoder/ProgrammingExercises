//
//  ViewController.swift
//  Exercise2:NumberOfCharacters
//
//  Created by Janie Clayton-Hasz on 2/5/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stringInputField: UITextField!
    @IBOutlet weak var stringInputLabel: UILabel!
    @IBOutlet weak var numberOfCharactersLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterButton(sender: AnyObject) {
        
        let result = inputStringAndCharacterCount(stringInputField.text!)
        stringInputLabel.text = result.0
        numberOfCharactersLabel.text = result.1
        
    }
    

}


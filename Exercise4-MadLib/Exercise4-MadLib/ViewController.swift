//
//  ViewController.swift
//  Exercise4-MadLib
//
//  Created by Janie Clayton-Hasz on 3/1/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var adverbTextField: UITextField!
    
    @IBOutlet weak var outputTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterButton(sender: AnyObject) {
        let userInput:[String:String] = [
            "noun":nounTextField.text!,
            "verb":verbTextField.text!,
            "adjective":adjectiveTextField.text!,
            "adverb":adverbTextField.text!
        ]
        
        outputTextView.text = output(userInput)
    }

}


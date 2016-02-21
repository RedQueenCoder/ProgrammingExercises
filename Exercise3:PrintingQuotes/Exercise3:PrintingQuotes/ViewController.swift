//
//  ViewController.swift
//  Exercise3:PrintingQuotes
//
//  Created by Janie Clayton-Hasz on 2/21/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteTextView: UITextView!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var responseTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        quoteTextView.text = quoteText()
        responseTextView.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerQuestion(sender: AnyObject) {
        let response = answerTextField.text
        
        if let noResponse = isResponseEmpty(response!) {
            responseTextView.text = noResponse
        } else {
            responseTextView.text = responseOutput(
                isResponseCorrect: response!.isCorrectAnswer,
                response: response!
            )
        }
    }
    

}


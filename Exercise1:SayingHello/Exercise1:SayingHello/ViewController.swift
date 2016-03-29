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
        guard let name = nameField.text else { return }
        
        do {
            let nameString:String = try nameFunction(name)
            helloLabel.text = nameString
            nameField.resignFirstResponder()
        } catch let error as InputFieldError {
            let errorMessage = error.rawValue
            let alert = UIAlertController(
                title: "Name Field Error",
                message: errorMessage,
                preferredStyle: UIAlertControllerStyle.Alert)
            let dismissAlertAction = UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.Default,
                handler: nil)
            alert.addAction(dismissAlertAction)
            self.presentViewController(alert, animated: true, completion: nil)
        } catch _ {
            assertionFailure("Unexpected Error Type!!!")
        }
        
    }
}

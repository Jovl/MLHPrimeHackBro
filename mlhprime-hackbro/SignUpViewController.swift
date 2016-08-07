//
//  SignUpViewController.swift
//  mlhprime-hackbro
//
//  Created by Marisa Gomez on 8/6/16.
//  Copyright © 2016 Marisa Gomez. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    var user: User = User()
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var accountNumber: UITextField!
    @IBOutlet weak var routingNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(sender: AnyObject) {
        
    }

    @IBAction func cancel(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}

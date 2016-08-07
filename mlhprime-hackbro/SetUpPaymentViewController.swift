//
//  SetUpPaymentViewController.swift
//  mlhprime-hackbro
//
//  Created by Marisa Gomez on 8/6/16.
//  Copyright © 2016 Marisa Gomez. All rights reserved.
//
import UIKit

class SetUpPaymentViewController: UIViewController {
    var user: User = User()
    var payments: [Payment] = [Payment]()
    
    @IBOutlet weak var paymentName: UITextField!
    @IBOutlet weak var paymentAmount: UITextField!
    @IBOutlet weak var typePicker: UIPickerView!
    @IBOutlet weak var paymentFrequency: UIPickerView!
    @IBOutlet weak var sunday: UIButton!
    @IBOutlet weak var monday: UIButton!
    @IBOutlet weak var tuesday: UIButton!
    @IBOutlet weak var wednesday: UIButton!
    @IBOutlet weak var thursday: UIButton!
    @IBOutlet weak var friday: UIButton!
    @IBOutlet weak var saturday: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func selectDay(sender: AnyObject) {
        let button: UIButton = sender as! UIButton
        
        if (button.selected) {
            button.backgroundColor = UIColor.whiteColor()
            button.titleLabel?.textColor = UIColor.init(red: 4, green: 108, blue: 0, alpha: 0)
        } else {
            button.backgroundColor = UIColor.cyanColor()
            button.titleLabel?.textColor = UIColor.whiteColor()
        }
    }
    
//    @IBAction func cancel(sender: AnyObject) {
//        self.dismissViewControllerAnimated(false) { }
//    }
    
//    @IBAction func saveNewPayment(sender: AnyObject) {
//        
//    }
    
    func pushNewPayment() {
        
    }
}

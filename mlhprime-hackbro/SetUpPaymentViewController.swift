//
//  SetUpPaymentViewController.swift
//  mlhprime-hackbro
//
//  Created by Marisa Gomez on 8/6/16.
//  Copyright © 2016 Marisa Gomez. All rights reserved.
//
import UIKit

class SetUpPaymentViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var user: User = User()
    var payments: [Payment] = [Payment]()
    var numbers: [Int] = [Int]()
    var frequency: [String] = [String]()
    
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
        
        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10]
        frequency = ["Daily", "Weekly", "Biweekly", "Monthly", "Yearly"]
        
        typePicker.delegate = self
        typePicker.dataSource = self
        paymentFrequency.delegate = self
        paymentFrequency.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pickerView == typePicker) {
            return numbers.count
        } else {
            return frequency.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView == typePicker) {
            return String(numbers[row])
        } else {
            return frequency[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(false)
    }
    
    @IBAction func saveNewPayment(sender: AnyObject) {
        
    }
    
    func pushNewPayment() {
        
    }
}

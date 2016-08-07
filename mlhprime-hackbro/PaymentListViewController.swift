//
//  PaymentListViewController.swift
//  mlhprime-hackbro
//
//  Created by Marisa Gomez on 8/6/16.
//  Copyright © 2016 Marisa Gomez. All rights reserved.
//

import UIKit

class PaymentListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var user: User = User()
    var payments: [Payment] = [Payment]()
    
    @IBOutlet weak var paymentlist: UITableView!
    @IBOutlet weak var editView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let payment: Payment = Payment()
        payment.name = "Netflix"
        
        payments.append(payment)
        
        paymentlist.delegate = self
        paymentlist.dataSource = self
        
        paymentlist.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return payments.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = paymentlist.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.payments[indexPath.row].name
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
       
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete" , handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            self.paymentlist.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Bottom)
            self.payments.removeAtIndex(indexPath.row)
        })
        delete.backgroundColor = UIColor.redColor()
        
        let edit = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Edit" , handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            self.editView.hidden = false
        })
        edit.backgroundColor = UIColor.greenColor()
        
        return [delete, edit]
    }
}

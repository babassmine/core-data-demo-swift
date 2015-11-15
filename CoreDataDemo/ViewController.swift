//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Abass Sesay on 11/15/15.
//  Copyright © 2015 Abass Sesay. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func find(sender: AnyObject) {
        
    }
    
    @IBAction func save(sender: AnyObject) {
        let entityDescription = NSEntityDescription.entityForName("Contact", inManagedObjectContext: managedObjectContext)
        
        let contact = Contact(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)
        contact.name = nameField.text
        contact.address = addressField.text
        contact.phone = phoneField.text
        
        do{
            try managedObjectContext.save()
            nameField.text = ""
            addressField.text = ""
            phoneField.text = ""
            statusLabel.text = "Contact Saved"
        }catch let error as NSError {
            statusLabel.text = error.localizedFailureReason
        }
    }
    

}


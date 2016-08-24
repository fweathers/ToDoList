//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Felicia Weathers on 8/3/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var itemText: UITextField!
    
    @IBAction func addItemButtonTapped(sender: UIButton) {
        
        toDoList.append(itemText.text!)
        
        itemText.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        itemText.resignFirstResponder()
        
        return true
    }

}


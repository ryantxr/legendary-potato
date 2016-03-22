//
//  ViewController.swift
//  data-share
//
//  Created by ryan teixeira on 3/21/16.
//  Copyright © 2016 Ryan Teixeira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showDetail" {
            print("detail segue")
            let destinationController = segue.destinationViewController as! DetailViewController
            destinationController.helloText = helloTextField.text
        }
    }


}


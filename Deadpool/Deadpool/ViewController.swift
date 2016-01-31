//
//  ViewController.swift
//  Deadpool
//
//  Created by MScZJN on 1/23/16.
//  Copyright © 2016 MScZJN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func cancelToViewController(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func backToViewController(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


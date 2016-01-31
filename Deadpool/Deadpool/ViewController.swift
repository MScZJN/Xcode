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
    
    @IBAction func passwordService(){
        let myalert = UIAlertView()
        myalert.title = "Forgot Password"
        myalert.message = "What can I say?! Congratulation! 你们年轻人呐，还是要努力提高自己的姿势水平!"
        myalert.addButtonWithTitle("忍了")
        myalert.show()
    }
    
    @IBAction func logOut() {
        let myalert = UIAlertView()
        myalert.title = "Warning"
        myalert.message = "Are you ABSOLUTELY sure you wanna leave this crazy app? Go back kid, next time I will kick your ass."
        myalert.addButtonWithTitle("Roger that")
        myalert.show()
    }

}


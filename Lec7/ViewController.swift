//
//  ViewController.swift
//  Lec7
//
//  Created by hackeru on 29 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlertDialog(_ sender: UIButton) {
        // Discuss View Controller -> present them, pass them some info
        //*** init UIAlertDialogController
        let alertCtrl = UIAlertController (title: "Lunch Is Ready", message: "Are You Sure?", preferredStyle: .alert)
        
        //*** init an ACTION Button (we need Positive and Negetive Buttons)
        let yes = UIAlertAction(title: "Yes!", style: UIAlertActionStyle.default) { (btn) in
            print("Ok was Clicked")
        }
        
        let no = UIAlertAction(title: "No!, Abort", style: UIAlertActionStyle.cancel) { (btn) in
            print("MIssiles Lunch Aborted")
        }
        //*** assign the POSITIVE BUtton we've just created to the DialogController
        alertCtrl.addAction(yes)
        alertCtrl.addAction(no)
        
        //*** present it- when a ViewController wants to present another ViewController
        self.present(alertCtrl, animated: true)
        // not neccesry to write self
        // the last argument , completion, actually allows us to write some code to be excuted after completion of the presentation of the viewController
        
        
        
        
        
        //
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


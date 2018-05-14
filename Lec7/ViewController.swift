//
//  ViewController.swift
//  Lec7
//
//  Created by hackeru on 29 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    
    
    // *** we gave an id to the segue
    // ** we want to prepere to the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //********************************   way #1
        // An Ugly Verstion
        /*
         //---------------
         
         // this action will be called when the segue is on (we pressed the correct button)
         
         // get the text from the textField
         let adress = textFieldAdress.text
         
         // id the segue being performed
         if (segue.identifier == "adressSegue"){
         print("Good Segue")
         //cast the destination ViewController
         let dest = segue.destination as! ViewControllerCustom
         // if we just write dest.adress = adress we'll get a problem because of the optional
         // so we wrap it with a "if let condition"
         if let txt = adress{
         dest.adress = txt
         }
         
         }
         //---------------
         */
        // End Of Ugly Vesrstion
        
        
        
        
        
        /*
        
        //optinal binding - good but potiatally can result with nested if, ugly code, look abouve
        if let add = textFieldAdress.text {
            // we also need to do a if condition to make sure the correct sague
        }
        
        */
        
        
        //********************************   way #2
        // Beutifull approcah
        /*
        
        guard segue.identifier == "adressSegue" else {
            return
        }
        // if we ot so far -> segue.identifier is definatlly "adressSegue"
        
        guard let dest = segue.destination as? ViewControllerCustom else {
            return
        }
        // if we got so far, the destatiation is indeed of type ViewControllerCustom
        
        guard let txt = textFieldAdress.text else {
            return
        }
        dest.adress = txt
        
        */
        //*******************************
        
        
        
        
        //********************************   way #3
        // most most beutifull wat
        guard let dest = segue.destination as? ViewControllerCustom,
            segue.identifier == "adressSegue",
            let txt = textFieldAdress.text,
            let ageTxt = textFieldAge.text else {
            return
        }
        dest.adress = txt
        dest.age = ageTxt
        
        
        //********************************
        
        
        
        
        
        
    }
    
    
    
    
    
    
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
        
        //*** assign the POSITIVE \ Negetive BUttons we've just created to the DialogController
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


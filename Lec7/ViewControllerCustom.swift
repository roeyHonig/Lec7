//
//  ViewControllerCustom.swift
//  Lec7
//
//  Created by hackeru on 29 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class ViewControllerCustom: UIViewController {
    
    // this is where i want to get the adress data from the ViewController
    var adress: String = ""
    @IBOutlet weak var customDataLabel: UILabel!
    
    
    var age: String = ""
    @IBOutlet weak var ageLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // assign the text from the previous ViewController to the Label
        customDataLabel.text = adress
        ageLabel.text = age
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

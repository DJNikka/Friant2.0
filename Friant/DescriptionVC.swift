//
//  DescriptionVC.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/27/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController {

    
    @IBOutlet weak var nameLbl2: UILabel!
   
    
    var friant: Friant!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl2.text = "friant.name"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        
        
        dismiss(animated: false, completion: nil)
    }
  

}


//segmented control defaults to tab views while parsing the name title 
//or
//removing the header entirely from the details tab and bringing up a larger text field for easier read

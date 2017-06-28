//
//  FriantDetailVC.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/21/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class FriantDetailVC: UIViewController {


    var friant: Friant!

    @IBOutlet weak var nameLbl: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  

        nameLbl.text = friant.name
        
        //nameLbl.text = "\(friant.name)" is more explicit but unnecessary
        
    }
   

    @IBAction func goPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "go", sender: self)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DescriptionVC
        
        destVC.nameToDisplay = nameLbl.text!
    }
    
    

    @IBAction func backBtnPressed(_ sender: Any) {
    
    
    
     dismiss(animated: true, completion: nil)

    }
}

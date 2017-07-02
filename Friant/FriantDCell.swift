//
//  FriantDLabel.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/28/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class FriantDCell: UICollectionViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    
    var friantD: FriantD!
    
    
    func configureCell(friantD: FriantD) {
        
        self.friantD = friantD
        
        nameLbl.text = self.friantD.symbol.capitalized
    }
    
}

//
//  FriantD.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/28/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import Foundation


class FriantD {

    private var _symbol: String!
    private var _furnitureId: Int!

    var symbol: String {
        
        return _symbol
    }
    var furnitureId: Int {
        return _furnitureId
        
    }
    
    init(symbol: String, furnitureId: Int) {
        
        self._symbol = symbol
        self._furnitureId = furnitureId
    }
    
}

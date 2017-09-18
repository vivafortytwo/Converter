//
//  UnitConverter.swift
//  Converter
//
//  Created by MacCynthia on 2017-08-14.
//  Copyright © 2017 MacCynthia. All rights reserved.
//

import UIKit

class UnitConverter{
 
    func degreesFahrenheit(degreesCelsius: Int) -> Int {
        return Int(1.8 * Float(degreesCelsius) + 32)
    }

}

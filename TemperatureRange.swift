//
//  Temperature Range.swift
//  Converter
//
//  Created by MacCynthia on 2017-08-14.
//  Copyright © 2017 MacCynthia. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    let values = (-100...100).map{$0}
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
}

//
//  ViewController.swift
//  Converter
//
//  Created by MacCynthia on 2017-08-14.
//  Copyright © 2017 MacCynthia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var TemperatureLabel: UILabel!
    @IBOutlet weak var TempPicker: UIPickerView!
    @IBOutlet var TempRange: TemperatureRange!
    
    private let converter = UnitConverter()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celsiusValue = TempRange.values[row]
        return "\(celsiusValue)℃"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayConvertedTempForRow(row: row)
    }
    
    func displayConvertedTempForRow(row: Int){
        let degreesCelsius = TempRange.values[row]
        TemperatureLabel.text = "\(converter.degreesFahrenheit(degreesCelsius: degreesCelsius))℉"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


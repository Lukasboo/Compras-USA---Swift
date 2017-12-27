//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Ricardo Corrales on 27/12/17.
//  Copyright © 2017 Ricardo Corrales. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("abrindo settings view controller")
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfDolar.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfDolar.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)
    }
    
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}

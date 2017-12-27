//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Ricardo Corrales on 26/12/17.
//  Copyright © 2017 Ricardo Corrales. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        lbRealDescription.text = "Valor sem impostos (dólar\(dolar))"
    }
    
}


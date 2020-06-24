//
//  ViewController.swift
//  Temperatur Converter
//
//  Created by apap on 08/06/20.
//  Copyright © 2020 apap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTemperature: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func convertTemperature(_ sender: UIButton) {
        let input = txtTemperature.text!
        if input == ""{
            let alertController = UIAlertController(title: "Error", message: "Please input a number", preferredStyle: .alert)
            present(alertController, animated: true, completion: nil)
        }
        if sender.titleLabel?.text == "Celcius to Farenheit"{
            let celcius = Float(input)!
            let farenheit = celcius * 9 / 5 + 32
            lblResult.text = "Result = \(farenheit) F"
        } else if sender.titleLabel?.text == "Farenheit to Celcius"{
            let farenheit = Float(input)!
            let celcius = (farenheit - 32) * 5 / 9
            lblResult.text = "Result = \(celcius) C"
        }
    }
    @IBAction func textFieldDoneEditing(_ sender: Any) {
        txtTemperature.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtTemperature.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


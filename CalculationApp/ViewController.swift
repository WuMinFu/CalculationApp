//
//  ViewController.swift
//  CalculationApp
//
//  Created by mac on 2018/8/2.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var sum = 0.00
    
    @IBAction func calculationSegmented(_ sender: UISegmentedControl) {
        if firstNumberTextField.text != "",secondNumberTextField.text != ""{
            Calculation(symbol: sender.selectedSegmentIndex, number1: firstNumberTextField.text!,number2: secondNumberTextField.text!)
            answerLabel.text = "答案：\(String(format: "%0.2f", sum))"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func Calculation(symbol:Int,number1:String,number2:String){
        
        switch symbol {
        case 0:
            sum = Double(number1)!+Double(number2)!
        case 1:
            sum = Double(number1)!-Double(number2)!
        case 2:
            sum = Double(number1)!*Double(number2)!
        case 3:
            sum = Double(number1)!/Double(number2)!
        default:
            break
        }
        
    }

}


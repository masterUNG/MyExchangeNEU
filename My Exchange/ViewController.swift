//
//  ViewController.swift
//  My Exchange
//
//  Created by MacPro on 5/31/2558 BE.
//  Copyright (c) 2558 EWTC Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var douMoney:Double = 0
    let douFactor:Double = 0.029683
    var douAnswer:Double = 0
    var strAnswer:String = ""
    
    
    
    @IBOutlet weak var answerLabel: UILabel!        
    
    @IBOutlet weak var moneyTextField: UITextField!
    
    
    @IBAction func exchangeButton(sender: AnyObject) {
        
        getValueFromTextField()
        
        calculateAnswer()
        
        showAnswer()
        
    }   // exchangeButton
    
    //Show Answer
    func showAnswer()->Void{
    
        strAnswer = NSString(format: "%.2f", douAnswer) as String
        answerLabel.text = strAnswer + " USD"
    
    }   //ShowAnswer
    
    //Calculate Answer
    func calculateAnswer()->Void{
    
        douAnswer = douMoney * douFactor
    
    }   //calculate
    
    //Get Value from TextField
    func getValueFromTextField()->Void{
    
        douMoney = NSString(string: moneyTextField.text).doubleValue
        
        println("Money ==> \(douMoney)")
    
    }   // getValue
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   // Main Class


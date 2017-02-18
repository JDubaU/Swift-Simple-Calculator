//
//  ViewController.swift
//  Freaking Udemy App 3
//
//  Created by Jake Wojtas on 2/5/17.
//  Copyright © 2017 Jake Wojtas. All rights reserved.
//
/*  Done:
Fix errors when a user types in a non int answer X
Remove the 21 kid picture after it is displayed X
Add somesort of varaible that deals when all of the booleans above are false X
Make the buttons highlight when pressed and un-highlight when not pressed X

To Do List:
Placeholder Text
Link view controllers and make a new one
 


*/


import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var operationShower: UILabel!
    @IBOutlet weak var addBool: UIButton!
    @IBOutlet weak var subBool: UIButton!
    @IBOutlet weak var mulBool: UIButton!
    @IBOutlet weak var divBool: UIButton!

    
    var addition = false
    var subtraction = false
    var multiplication = false
    var division = false
    
    
    @IBAction func addBool(_ sender: UIButton) {
        operationShower.text = "+"
        addition = true
        subtraction = false
        multiplication = false
        division = false
        sender.backgroundColor = UIColor.cyan
        subBool.backgroundColor = UIColor.white
        mulBool.backgroundColor = UIColor.white
        divBool.backgroundColor = UIColor.white
    }
    
    @IBAction func subBool(_ sender: UIButton) {
        operationShower.text = "-"
        addition = false
        subtraction = true
        multiplication = false
        division = false
        sender.backgroundColor = UIColor.cyan
        addBool.backgroundColor = UIColor.white
        mulBool.backgroundColor = UIColor.white
        divBool.backgroundColor = UIColor.white
        
    }
    @IBAction func mulBool(_ sender: UIButton) {
        operationShower.text = "*"
        addition = false
        subtraction = false
        multiplication = true
        division = false
        sender.backgroundColor = UIColor.cyan
        addBool.backgroundColor = UIColor.white
        subBool.backgroundColor = UIColor.white
        divBool.backgroundColor = UIColor.white
    }
    @IBAction func divBool(_ sender: UIButton) {
        operationShower.text = "/"
        addition = false
        subtraction = false
        multiplication = false
        division = true
        sender.backgroundColor = UIColor.cyan
        addBool.backgroundColor = UIColor.white
        subBool.backgroundColor = UIColor.white
        mulBool.backgroundColor = UIColor.white
    }
   
 
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var twentyOneKid: UIImageView!
    @IBOutlet weak var titleOfCalculator: UILabel!
    
    let imageView = UIImageView(frame: CGRect(x: 67, y: 511, width: 240, height: 128))
    let image = UIImage(named: "21kid.jpg")
    
    
    @IBAction func calcButton(_ sender: UIButton){
        imageView.image = nil
        
        if (Double(text1.text!) != nil) && (Double(text2.text!) != nil) {
            if addition {
                if (text1.text == "9") && (text2.text == "10") {
                    imageView.image = image
                    self.view.addSubview(imageView);
                    calcLabel.text = "21"
                } else {
                    calcLabel.text = "The Answer is \(Double(text1.text!)! + Double(text2.text!)!)"
                }
            } else if (subtraction) {
                calcLabel.text = "The Answer is \(Double(text1.text!)! - Double(text2.text!)!)"
            } else if (multiplication) {
                calcLabel.text = "The Answer is \(Double(text1.text!)! * Double(text2.text!)!)"
            } else if (division) {
                calcLabel.text = "The Answer is \(Double(text1.text!)! / Double(text2.text!)!)"
            } else {
                calcLabel.text = "You didn't indicate an operator"
            }
        } else {
            calcLabel.text = "Please enter valid numbers"
        }
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    }


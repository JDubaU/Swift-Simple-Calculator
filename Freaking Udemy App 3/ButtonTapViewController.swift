//
//  ButtonTapViewController.swift
//  Freaking Udemy App 3
//
//  Created by Jake Wojtas on 2/9/17.
//  Copyright © 2017 Jake Wojtas. All rights reserved.
//
// To Do List:
// How to rename a Github Repo and Xcode proj

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}


class ButtonTapViewController: UIViewController {
    
    var tapCount = 0
    var raveCount = 0
    var fiftyHit = false
    @IBOutlet weak var coolLabel: UILabel!
    @IBOutlet weak var resetBackgroundButton: UIButton!
    @IBOutlet weak var changeBackgroundButton: UIButton!
    @IBOutlet weak var raveGif: UIImageView!
    @IBOutlet weak var moveCalcButton: UIButton!
    

    
    
    
    
    @IBAction func resetBackgroundButton(_ sender: UIButton) {
        if (fiftyHit) {
            self.view.backgroundColor = UIColor.white
        }
    }
   
    
    @IBAction func changeBackgroundButton(_ sender: Any) {
        if (fiftyHit) {
            self.view.backgroundColor = .randomColor()
            raveCount += 1
            if raveCount >= 7 {
            }
            if raveCount >= 15 {
                moveCalcButton.isHidden = false
            }
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        coolLabel.text = "Keep Pressing"
        print("Button has been tapped")
        tapCount += 1
        print(tapCount)
        
        if tapCount >= 10 {
            coolLabel.text = "You pressed the button 10 times, thank you"
        }
        
        if tapCount >= 30 {
            coolLabel.text = "You pressed the button 30 times, alright that's enough"
        }
        
        if tapCount >= 50 {
            coolLabel.text = "You hit the button 50 times, NOW I AM MAD"
            self.view.backgroundColor = UIColor.red
            fiftyHit = true
            if fiftyHit {
                resetBackgroundButton.isHidden = false
                changeBackgroundButton.isHidden = false
            }
        }
    }
    
    @IBAction func moveCalcButton(_ sender: UIButton) {
        performSegue(withIdentifier: "doorCalculator", sender:"" )
    }
    
    

  
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBackgroundButton.isHidden = true
        changeBackgroundButton.isHidden = true
        moveCalcButton.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

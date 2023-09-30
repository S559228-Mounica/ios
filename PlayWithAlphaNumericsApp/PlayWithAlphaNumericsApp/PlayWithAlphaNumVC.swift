//
//  ViewController.swift
//  PlayWithAlphaNumericsApp
//
//  Created by Mounica Seelam on 9/9/23.
//

import UIKit

class PlayWithAlphaNumVC: UIViewController {

    
    @IBOutlet weak var headerLBL: UILabel!
    
    @IBOutlet weak var secondStrTF: UITextField!
    @IBOutlet weak var firstStrTF: UITextField!
    
    @IBOutlet weak var firstNumLBL: UILabel!
    
    @IBOutlet weak var secondNumLBL: UILabel!
    @IBOutlet var optionsSWCH: [UISwitch]!
    
    @IBOutlet var numbersStepper: [UIStepper]!
    
    @IBOutlet weak var messageTV: UITextView!

    
    @IBOutlet var stringAndPatternBTN: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.headerLBL.text = String(format: "%@\nPlay with AlphaNumerics™️", "\u{0c38}\u{0c4d}\u{0c35}\u{0c3e}\u{0c17}\u{0c24}\u{0c02}")
        
        self.optionsSWCH[0].isOn=false
        self.optionsSWCH[1].isOn=false
        
        self.numbersStepper[0].isEnabled = false
        self.numbersStepper[1].isEnabled = false
        
        self.stringAndPatternBTN[0].isEnabled = false
        self.stringAndPatternBTN[1].isEnabled = false

        self.firstStrTF.isEnabled = false
        self.secondStrTF.isEnabled = false
        
        messageTV.isScrollEnabled = true
        messageTV.isUserInteractionEnabled = true
    }

    @IBAction func numberSWCH(_ sender: UISwitch) {
        if sender.isOn{
            self.numbersStepper[0].isEnabled = true
            self.numbersStepper[1].isEnabled = true
            
            self.stringAndPatternBTN[0].isEnabled = true
        }
        else{
            self.numbersStepper[0].isEnabled = false
            self.numbersStepper[1].isEnabled = false
            
            self.stringAndPatternBTN[0].isEnabled = false
        }
        
    }
    
   
    @IBAction func stringSWCH(_ sender: UISwitch) {
        if sender.isOn{
            self.firstStrTF.isEnabled = true
            
            self.secondStrTF.isEnabled = true
            // self.optionsSWCH[0].isOn=false
            self.stringAndPatternBTN[1].isEnabled = true
            //self.stringAndPatternBTN[0].isEnabled = false
        }
        else{
            self.firstStrTF.isEnabled = false
            
            self.secondStrTF.isEnabled = false
            self.stringAndPatternBTN[1].isEnabled = false
        }
    }
    
    @IBAction func firstNumStepper(_ sender: UIStepper) {
        self.firstNumLBL.text = String(Int(sender.value))
    }
    
    @IBAction func secondNumStepper(_ sender: UIStepper) {
        self.secondNumLBL.text = String(Int(sender.value))
    }
    
    
    @IBAction func generatePattern(_ sender: UIButton) {

       //var ch1 : Int = Int(self.firstNumLBL)
        let val1 = Int(self.firstNumLBL.text!) ?? 0
        let val2 = Int(self.secondNumLBL.text!) ?? 0
        if val1 == 0{
            self.messageTV.text = "First number is invalid. Please provide a value greater than zero."

        }
        else if val2 == 0{
            self.messageTV.text = "Second number is invalid. Please provide a value greater than zero."
        }
        else{
            messageTV.contentSize = CGSizeMake(messageTV.frame.size.width, messageTV.frame.size.height)
            self.messageTV.text = ""
            let rows = 1...val1
            let cols = 1...val2
            for i in rows{
                for j in cols{
                    if i == 1 || i == val1 || j==1 || j==val2{
                        self.messageTV.text += "❄️"
                    }
                    else if i%2 == 0{
                        if j%2 == 0{
                            self.messageTV.text += "🎅"
                        }
                        else{
                            self.messageTV.text += "🎄"
                        }
                    }
                    else{
                        if j%2 == 1{
                            self.messageTV.text += "🎅"
                        }
                        else{
                            self.messageTV.text += "🎄"
                        }
                    }
                }
                self.messageTV.text += "\n"
               // messageTV.isScrollEnabled = true
                    //messageTV.isUserInteractionEnabled = true
            }
            
        }
    }
    
    @IBAction func manipulateStrings(_ sender: UIButton) {
        if self.firstStrTF.text! == ""{
            self.messageTV.text = "First string value is invalid. Please provide at least one character."
        }
        else if self.secondStrTF.text! == ""{
            self.messageTV.text = "Second string value is invalid. Please provide at least one character."
        }else{
            var twostrings = "\(self.firstStrTF.text!)\(self.secondStrTF.text!)"
            
            var countVowel = 0
            var countConsonant = 0
            
            let myVowel = "aeious"
            let myconsonant = "bcdfghijklmnpqrtvwxyz"
            
            let myString = twostrings.lowercased()
            
            for i in myString{
                if myVowel.contains(i){
                    countVowel += 1
                }
                else if myconsonant.contains(i){
                    countConsonant += 1
                }
            }
            
            var answer = """
Concatenation of two strings results in \"\(twostrings)\".
Number of vowels in \"\(twostrings)\" is \(countVowel).
Number of consonants in \"\(twostrings)\" is \(countConsonant).
Number of unique characters in \"\(twostrings)\" is \(Set(twostrings).count).
The reversal of \"\(twostrings)\" results in \"\(String(twostrings.reversed()))\".
"""
            
            self.messageTV.text = answer
        }
    }
    @IBAction func onReset(_ sender: UIButton) {
        self.optionsSWCH[0].isOn = false

        self.optionsSWCH[1].isOn = false

        self.numbersStepper[0].isEnabled = false

        self.numbersStepper[1].isEnabled = false

        self.stringAndPatternBTN[0].isEnabled = false

        self.stringAndPatternBTN[1].isEnabled = false

        self.firstStrTF.isEnabled = false

        self.secondStrTF.isEnabled = false

        self.firstNumLBL.text = "0"

        self.secondNumLBL.text = "0"
        self.messageTV.text = ""
        self.firstStrTF.text! = ""
        self.secondStrTF.text! = ""
        
        //self.numbersStepper[0]=0
        //self.firstNumLBL.text = String(Int(0))
        self.numbersStepper[0].value=0
        self.numbersStepper[1].value=0
    }
}


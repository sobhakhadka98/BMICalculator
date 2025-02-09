//
//  ViewController.swift
//  BMICalculator
//
//  Created by Sobha Khadka on 2025-01-31.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var heightUnits = ["cm", "in"];
    var weightUnits = ["kg", "pounds"];
    
    var selectedHeightUnit : String = "cm"
    var selectedWeightUnit : String = "kg"
    
    
    @IBOutlet weak var heightUnit: UIPickerView!
    
    @IBOutlet weak var weightUnit: UIPickerView!
    
    @IBOutlet weak var heightValue: UITextField!
    
    @IBOutlet weak var weightValue: UITextField!
    
    @IBOutlet weak var bmiValue: UITextField!
    
    @IBOutlet weak var bmiCategory: UITextField!
    
    @IBOutlet weak var error: UILabel!
    
    var height : Double = 0
    var weight : Double = 0
    var bmi : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        heightUnit.delegate = self
        heightUnit.dataSource = self
        heightUnit.tag = 1
        
        weightUnit.delegate = self
        weightUnit.dataSource = self
        weightUnit.tag = 2
        
        error.isHidden = true
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1{
            return heightUnits.count
        }
        else {
            return weightUnits.count
        }
    }

    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        if pickerView.tag == 1{
            return heightUnits[row]
        }
        else {
            return weightUnits[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if pickerView.tag == 1 {
            selectedHeightUnit = heightUnits[row]
        }
        else {
            selectedWeightUnit = weightUnits[row]
        }
    }
    
    @IBAction func bmiCalculate(_ sender: Any) {
        error.isHidden = true;
        if((heightValue.text?.isEmpty) != nil && (weightValue.text?.isEmpty) != nil ) {
            height = Double(heightValue.text!)!
            weight = Double(weightValue.text!)!
            if selectedHeightUnit == "in" {
                height = height * 2.54
            }
            if selectedWeightUnit == "pounds" {
                weight *= 0.453592
            }
            
            if(height<0 || height>600 || weight<0 || weight>600){
                error.isHidden = false
                bmiValue.text = ""
                bmiCategory.text = ""
            } else {
                bmi = (weight*10000)/(height*height)
                bmi = Double(round(100 * bmi) / 100)
                
                bmiValue.text = String(bmi)
                
                if bmi < 18.5 {
                    bmiCategory.text = "Underweight"
                } else if bmi < 24.9 {
                    bmiCategory.text = "Normal"
                } else if bmi < 29.9 {
                    bmiCategory.text = "Overweight"
                } else {
                    bmiCategory.text = "Obesity"
                }
            }
            
            
        }
    }
    
    
}


//
//  ViewController.swift
//  pickerView
//
//  Created by SREEHARI MOHAN on 18/10/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var arr = ["India", "America","China","Russia","Germany"]
    
    let state = ["Kerala","Karnataka","Tamil Nadu","Andhra Pradhesh"]
    
    
    
  
    @IBOutlet weak var lab: UILabel!
    
    @IBOutlet weak var dateTime: UIDatePicker!
    
    @IBOutlet weak var field: UITextField!
    
    let picker = UIPickerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        field.inputView = picker
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    


    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 1{
            return arr.count
        }else{
            return state.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 1{
            return arr[row]
        }else{
            return state[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 1{
            field.text = arr[row]
        }
        else{
            
            field.text = state[row]
            
        }
    }

    
    @IBAction func dateSelected(_ sender: UIDatePicker) {
        
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .medium
        dateformatter.timeStyle = .medium
        let date = dateformatter.string(from: dateTime.date)
        lab.text = date
    }
}


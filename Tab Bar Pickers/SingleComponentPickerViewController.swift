//
//  SingleComponentPickerViewController.swift
//  Tab Bar Pickers
//
//  Created by Dylan Weaver on 5/6/17.
//  Copyright © 2017 Dylan Weaver. All rights reserved.
//

import UIKit

class SingleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var singlePicker: UIPickerView!
    private let characterNames = [
        "Luke", "Leia", "Han", "Chewbacca", "Artoo","Threepio", "Lando"]
    @IBAction func onButtonPress(_ sender: Any) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(title: title, message: "Thank you for choosing", preferredStyle: .alert)
        let action = UIAlertAction(title: "You're welcome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
}

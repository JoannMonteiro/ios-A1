//
//  InputViewController.swift
//  StudentHelper
//
//  Created by Default User on 6/8/26.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var studentField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func submitPressed(_ sender: UIButton) {

            let name = nameField.text ?? ""
            let student = studentField.text ?? ""

            outputLabel.text = "Name: \(name)\nStudent #: \(student)"

            let alert = UIAlertController(
                title: "Success",
                message: "Information Submitted",
                preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default))

            present(alert, animated: true)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

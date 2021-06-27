//
//  ViewController.swift
//  Login
//
//  Created by Андрей Бородкин on 27.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUserBTN: UIButton!
    @IBOutlet var forgotPassBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserBTN {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassBTN {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {segue.destination.navigationItem.title = usernameTextField.text }
    }

    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "GeneralSegue", sender: sender)
        
    }
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "GeneralSegue", sender: sender)
    }
    
}


//
//  ViewController.swift
//  Login3
//
//  Created by Ventayen, Harrold on 3/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var forgotUser: UIButton!
    
    
    @IBOutlet weak var forgotPass: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotUser {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPass {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    
    @IBAction func forgotUButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUser)
    }
    

    @IBAction func forgotPButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPass)
    }
    
}


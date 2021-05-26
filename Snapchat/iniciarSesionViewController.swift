//
//  ViewController.swift
//  Snapchat
//
//  Created by Mac 03 on 5/26/21.
//  Copyright © 2021 Mac 03. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user,error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presentó el sigiente error \(error)")
            }else{
                print("Inicio de Sesion exitosa")
            }
        }
    }
    
}


//
//  EditarContactoViewController.swift
//  PMPractica10Contactos
//
//  Created by Alexander Tapia on 03/05/22.
//

import UIKit

class EditarContactoViewController: UIViewController {

    @IBOutlet weak var nombreUILabel: UILabel!
    
    var recibirnombre:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreUILabel.text = recibirnombre ?? "error"
        // Do any additional setup after loading the view.
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

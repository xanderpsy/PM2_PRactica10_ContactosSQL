//
//  ViewController.swift
//  PMPractica10Contactos
//
//  Created by Alexander Tapia on 03/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tablaContactos: UITableView!
    var nombremandar :String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tablaContactos.delegate = self
        tablaContactos.dataSource = self
    }
    
    //Alex- Metodos tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaContactos.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = "Alexander"
        nombremandar = celda.textLabel?.text
        celda.detailTextLabel?.text = "4434904076"
        celda.imageView?.image = UIImage(systemName: "person")
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "editar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editar"{
                    let objDestino = segue.destination as! EditarContactoViewController
            objDestino.recibirnombre =  nombremandar   }
    
    

        }
}

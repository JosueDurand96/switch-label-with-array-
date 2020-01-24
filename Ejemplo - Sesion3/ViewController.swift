//
//  ViewController.swift
//  Ejemplo - Sesion3
//
//  Created by Josue Durand on 1/23/20.
//  Copyright © 2020 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var misegment: UISegmentedControl!
    @IBOutlet weak var contenedorImg: UIImageView!
    @IBOutlet weak var txtNombreCiudad: UILabel!
    @IBOutlet weak var miSwitch: UISwitch!
    
    @IBOutlet weak var txtdescripcion: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func procesando(_ sender: Any) {
        let selectedIndex = misegment!.selectedSegmentIndex
        print("index seleccionado",selectedIndex)
        let selectedName = misegment.titleForSegment(at: selectedIndex)
        print("descripcion",selectedName)
    }
    
}


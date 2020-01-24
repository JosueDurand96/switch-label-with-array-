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
        procesando(misegment)
    }

    @IBAction func procesando(_ sender: Any) {
       // let misegment2 = sender as! UISegmentedControl
        
        let selectedIndex = misegment!.selectedSegmentIndex
        print("index seleccionado",selectedIndex)
        let selectedName = misegment.titleForSegment(at: selectedIndex) ?? ""
        print("descripcion",selectedName)
        
//        if selectedIndex == 0 {
//            print("Seleccionado \(selectedName)")
//            txtNombreCiudad.text = selectedName
//        }else if selectedIndex == 1 {
//            print("Seleccionado \(selectedName)")
//            txtNombreCiudad.text = selectedName
//        }else{
//            print("Seleccionado \(selectedName)")
//            txtNombreCiudad.text = selectedName
//        }
        switch selectedIndex {
        case 0:
            print("Seleccionado \(selectedName)")
            txtNombreCiudad.text = selectedName
            txtdescripcion.text = "Aqui Descripcion de Lima"
        case 1:
           print("Seleccionado \(selectedName)")
           txtNombreCiudad.text = selectedName
           txtdescripcion.text = "Aqui de Cuzco"
        case 2:
            print("Seleccionado \(selectedName)")
            txtNombreCiudad.text = selectedName
            txtdescripcion.text = "Aqui de Arequipa"
        default:
            break
        }
        
        
        txtNombreCiudad.text = selectedName
        contenedorImg.image = UIImage(named:selectedName)
        
        
    }
    
}


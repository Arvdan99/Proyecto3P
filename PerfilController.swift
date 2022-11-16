//
//  PerfilController.swift
//  Proyecto3P
//
//  Created by Alumno ULSA on 08/11/22.
//


import UIKit

class PerfilController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var Alumnos : [Alumno] = []
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPerfil") as? CeldaPerfilController
        celda?.lblTexto1.text = Alumnos[indexPath.row].nombre
        celda?.lblTexto2.text = Alumnos[indexPath.row].nombre
               
        
        
    
        //celda?.image1.layer.backgroundColor = UIColor.blue.cgColor
        
        return celda!
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }
    
}


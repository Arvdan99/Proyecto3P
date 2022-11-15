//
//  HorarioController.swift
//  Proyecto3P
//
//  Created by Alumno ULSA on 15/11/22.
//

import UIKit

class HorarioController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var horarios : [Horario] = []
    
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
        return horarios.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaHorario") as? CeldaHorarioController
        celda?.lblMateria.text = horarios[indexPath.row].materia
        celda?.lblHora.text = horarios[indexPath.row].hora
        celda?.lblAula.text = horarios[indexPath.row].aula
        
        
    
        //celda?.image1.layer.backgroundColor = UIColor.blue.cgColor
        
        return celda!
    }
    
 

    
}

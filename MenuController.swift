//
//  MenuController.swift
//  Proyecto3P
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var menus : [Menu] = []
    var perfil : [Alumno] = []
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as? CeldaContactoController
        celda?.lblMenu.text = menus[indexPath.row].Nombre
        
        return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        menus.append(Menu(segue: "goToPerfil", Nombre: "Mi Perfil"))
        menus.append(Menu(segue: "goToHorario", Nombre: "Horario"))
        
        
        perfil.append(Alumno(nombre: "DANEY", matricula: "199468", contactoe: "JAVIER", parentesco: "PAPÁ", telefono: "6442011771", telefono1: "199468"))

        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPerfil" {
          let destino  = segue.destination as! PerfilController
        }
        if segue.identifier == "goToHorario" {
          let destino  = segue.destination as! HorarioController
        }
        
        
    }
}

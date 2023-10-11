//
//  main.swift
//  Proyecto_GestorDeTareas
//
//  Created by CEDAM05 on 10/10/23.
//

import Foundation

struct tarea
{
    var nombre: String
    var descripcion: String
    let fechaDeCreacion: String
    var completada: String
    var categoria: String
}

//Variables
var listaDeTareas: [tarea] = []

//Funciones
func nuevaTarea(nombre:String,descripcion:String, fecha: String, categoria: String )
{
    var newTask = tarea(nombre: nombre, descripcion: descripcion , fechaDeCreacion: fecha, completada: "" , categoria:categoria )
    listaDeTareas.append(newTask)
}


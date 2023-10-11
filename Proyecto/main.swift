/*
main.swift
Proyecto_GestorDeTareas
Created by DiegoMoctezuma on 10/10/23.
*/

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
var ciclo: String = ""

//Funciones
func nuevaTarea()
{
    //Variables 
    var nombre: String = ""
    var descripcion: String = ""
    var fechaDeCreacion:String = ""
    var completada: String = ""
    var categoria: String = ""

    //Lectura de datos
    print("\nIngrese el nombre de la tarea: ")
    nombre = readLine()!
    print("Ingrese la descripcion de la tarea: ")
    descripcion = readLine() ?? ""
    print("Ingrese la fecha de creacion de la tarea: ")
    fechaDeCreacion = readLine() ?? ""
    print("Ingrese la categoria de la tarea: ")
    categoria = readLine() ?? ""

    //Creacion de la tarea
    var newTask = tarea(nombre: nombre, descripcion: descripcion , fechaDeCreacion: fechaDeCreacion, completada: "No" , categoria:categoria )
    listaDeTareas.append(newTask)
}

func tareaCompletada(nombre:String)
{
    if nombre != ""
    {
        for i in 0..<listaDeTareas.count
        {
            if listaDeTareas[i].nombre == nombre
            {
                listaDeTareas[i].completada = "Si"
            }
        }
    }
    else
    {
        print("\nIngrese un nombre valido")
    }
}

func listarTareas()
{
    for i in 0..<listaDeTareas.count
    {
        print(" ")
        print("Nombre: \(listaDeTareas[i].nombre)")
        print("Descripcion: \(listaDeTareas[i].descripcion)")
        print("Fecha de creacion: \(listaDeTareas[i].fechaDeCreacion)")
        print("Completada: \(listaDeTareas[i].completada)")
        print("Categoria: \(listaDeTareas[i].categoria)")
    }
}

func eliminarTarea(nombre: String)
{
    if nombre != ""
    {
        for i in 0..<listaDeTareas.count
        {
            if listaDeTareas[i].nombre == nombre
            {
                listaDeTareas.remove(at:i)
            }
        }
    }
    else
    {
        print("\nIngrese un nombre valido")
    }
}


//Ciclo del gestor de tareas
while ciclo != "Salir"
{
    //Variables
    var nombre: String = ""

    //Si la lista de tareas esta vacia
    if listaDeTareas.isEmpty
    {
        print("\nIngrese su primer tarea!")
        nuevaTarea()
    }

    //Menu
    print("\nIngese la accion que desea realizar: ")
    print("-Nueva tarea   -Ver lista de tareas    -Completar tarea    -Eliminar tarea     -Salir")
    ciclo = readLine() ?? ""

    //Switch
    switch ciclo
    {
        case "Nueva tarea":
            nuevaTarea()

        case "Ver lista de tareas":
            listarTareas()

        case "Completar tarea":
            print("\nIngrese el nombre de la tarea que desea completar: ")
            nombre = readLine() ?? ""
            tareaCompletada(nombre: nombre)

        case "Eliminar tarea":
            print("\nIngrese el nombre de la tarea que desea eliminar: ")
            nombre = readLine() ?? ""
            eliminarTarea(nombre: nombre)
            
        case "Salir":
            print("\nGracias por usar el gestor de tareas")

        default:
            print("\nIngrese una opcion valida")
    }
}
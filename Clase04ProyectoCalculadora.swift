/*
    main.swift
    Calculadora
    Created by DiegoMoctezuma on 10/10/23.
*/

import Foundation

//Variables:
var ciclo: String = ""
var numero1: Double = 0
var numero2: Double = 0

//Funciones:
func suma(n1: Double, n2: Double)
{
    let resultado = n1 + n2
    print("\(n1) + \(n2) = \(resultado))")
}

func multiplicación(n1: Double, n2: Double)
{
    let resultado = n1 * n2
    print("\(n1) * \(n2) = \(resultado))")
}

func resta(n1: Double, n2: Double)
{
    let resultado = n1 - n2
    print("\(n1) - \(n2) = \(resultado))")
}

func division(n1: Double, n2: Double)
{
    var resultado: Double = 0
    if n2 == 0 
    {
        print("La division por cero no existe")
    } 
    else 
    {
        resultado = n1 / n2
        print("\(n1) / \(n2) = \(resultado))")
    }
}

//Ciclo de la calculadora
while ciclo != "Salir"
{
    //Menu
    print("Que operacion quieres hacer?")
    print("Suma, Resta, Multiplicacion, Division o Salir")
    ciclo = readLine() ?? "" //Si no se puede convertir a String, se convierte a ""
    //Lectura de datos
    print("Dame el numero 1: ")
    numero1 = Double(readLine() ?? "0" ) ?? 0 //Si no se puede convertir a Double, se convierte a 0
    print("Dame el numero 2: ")
    numero2 = Double(readLine() ?? "0" ) ?? 0

    //Switch
    switch ciclo
    {
    case "Suma":
        suma(n1: numero1, n2: numero2)
    case "Resta":
        resta(n1: numero1, n2: numero2)
    case "Multiplicacion":
        multiplicación(n1: numero1, n2: numero2)
    case "Division":
        division(n1: numero1, n2: numero2)
    case "Salir":
        print("Hasta luego!")
    default:
        print("Opcion no valida")
    }
}
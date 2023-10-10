//
//  main.swift
//  Clase04_Calculadora
//
//  Created by CEDAM05 on 10/10/23.
//

import Foundation

//Variables
var ciclo: String = ""
var numero1:Double = 0
var numero2:Double = 0

//Funciones
func suma(n1:Double,n2:Double)
{
    var resultado = n1 + n2
    print("\(n1) + \(n2) = \(resultado)")
}

func resta(n1:Double,n2:Double)
{
    var resultado = n1 - n2
    print("\(n1) - \(n2) = \(resultado)")
}

func multiplicacion(n1:Double,n2:Double)
{
    
    var resultado = n1 * n2
    print("\(n1) * \(n2) = \(resultado)")
}

func division(n1:Double,n2:Double)
{
    var resultado: Double = 0
    if n2 == 0
    {
        print("La division por cero no existe")
    }
    else
    {
        resultado = n1 / n2
        print("\(n1) / \(n2) = \(resultado)")
    }
    
}

//Ciclo principal
while ciclo != "Salir"
{
    //Lectura de opcion
    print("\nQue operacion deseas realizar? ")
    print("Suma, Resta, Multiplicacion, Division o Salir")
    ciclo = readLine() ?? ""
    //Lectura de numeros
    print("Ingresa el primer numero: ")
    numero1 = Double(readLine() ?? "0" ) ?? 0 //Por si ingresa valores no validos
    print("Ingresa el segundo numero: ")
    numero2 = Double(readLine() ?? "0" ) ?? 0
    
    //Ciclo de la calculadora
    switch ciclo
    {
    case "Suma":
        suma(n1: numero1, n2: numero2)
    case "Resta":
        resta(n1: numero1, n2: numero2)
    case "Multiplicacion":
        multiplicacion(n1: numero1, n2: numero2)
    case "Division":
        division(n1: numero1, n2: numero2)
    case "Salir":
        print("Adios")
    default:
        print("Opcion no valida")

    }
}


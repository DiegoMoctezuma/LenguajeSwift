import Foundation

//Funciones para calcular el area de: circulo,cuadrado,rectangulo,triangulo,trapecio

//Valores
var baseG: Float = 2.5
var baseG2: Float = 3.7
var alturaG: Float = 4

//Funcion para el circulo
let pi: Float = 3.14159
func areaCirculo(radio: Float) -> Float {
  let resultadoC: Float = pi * radio * radio
  return resultadoC
}
print("\nEl area del ciculo con radio \(baseG) u es : \(areaCirculo(radio:baseG)) u^2")

//Funcion para el cuadrado
func areaCuadrado(lado: Float) -> Float {
  let resultadoCua: Float = lado * lado
  return resultadoCua
}
print("\nEl area del cuadrado con lado \(baseG) u es: \(areaCuadrado(lado:baseG)) u^2")

//Funcion para el rectangulo
func areaRect(base: Float, altura: Float) -> Float {
  let resultadoRect: Float = base * altura
  return resultadoRect
}
print(
  "\nEl area del rectangulo con base \(baseG) u  y altura \(alturaG) u  es: \(areaRect(base:baseG, altura: alturaG)) u^2"
)

//Funcion para triangulo
func areaTriangulo(base: Float, altura: Float) -> Float {
  let resultadoTri: Float = (base * altura) / 2
  return resultadoTri
}
print(
  "\nEl area del triangulo con base \(baseG) u  y altura \(alturaG) u  es: \(areaTriangulo(base:baseG, altura: alturaG)) u^2"
)

//Funcion para el trapecio
func areaTrapecio(base1: Float, base2: Float, altura: Float) -> Float {
  let resultadoTra: Float = (base1 + base2) / 2 * altura
  return resultadoTra
}
print(
  "\nEl area del trapecio con base 1: \(baseG) u, base 2: \(baseG2) u  y con altura: \(alturaG) u  es: \(areaTrapecio(base1:baseG, base2:baseG2, altura:alturaG)) u^2"
)

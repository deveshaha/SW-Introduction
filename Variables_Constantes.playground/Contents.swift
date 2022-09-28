import UIKit
 
 
//Comentario de una linea
 
 
/* Comentario de más
 de una linea
 */
 
 
//DECLARACION DE CONSTANTES
//Palabra reservada "let"
 
 
let MAX_CANT = 20
print(MAX_CANT)
 
 
//Swift es un lenguaje TIPADO, todas las variables tienen un tipo
//Es optativo indicar el tipo, pero, al iniciarlo swift
//hace "INFERENCIA DE TIPOS": decide el tipo de variable en tiempo
//de ejecucion. Ese será durante el resto del programa.
 
 
//DECLARACIÓN DE VARIBLES
//Declaracion de variables con 'var'
 
 
var vble : String = "Hola a todos"
print(vble)
 
 
//numero1 es int
var numero1 = 20
 
 
//numero1 es Double
var numero2 = 70.0
 
 
var numero3 : Double = 70
 
 
print("El valor de la variable 'vbl' es: " + vble)
//No se puede concatenar directamente String con otros tipos al
//Escribir en pantalla
 
 
//SOLUCION 1: Convertir directamente a Stribg la variable que no lo sea
 
 
print("El vakir de ka variable numero1 es: " + String(numero1))
 
 
//SOLUCION 2: Obtener el valor de la variable a imprimir dentro del String (EXPANDIR la variable dentro del String)
 
 
print("El valor de la variable numero1 es: \(numero1)")
 
 
//SOLUCION 3: Varios parametros en la sentencia 'print'
//'print' admite varios parametros separados por comas
 
 
print("El valor de la variable numero1 es:", numero1)
print("El valor de la variable numero1 es:", vble)
 
 
//SOLUCION 4: imprimir directamente sin ninguna cadena de caracteres
 
 
//Declaracion de varias variables en la misma linea:
 
 
var x = 0.0, y = 1.0, z = 3
print(z)
 
 
//En la misma linea indicando el tipo
var cadena1, cadena2, cadena3 : String
 
 
//Función 'type': para saber el tipo que almacena una variable
print(type(of: cadena1))
print(type(of: z))
 
 
//ALIAS: Alias sobre los tipos de variables con la palabra reservada 'typealias' Para cuando tenemos clases muy grandes y queremos ahorrar código
typealias ti = Int // A partir de ahora 'ti' en vez de int
var numero4 : ti = 56
var numero5 : ti
numero5 = 33
print("numero4 = ", numero4, "numero5", numero5)
 
 
//TUPLAS: Equivalente a las estructuras en C
//Permiten agrupar valores

//Agrupamos mismo tipo de datos
var tupla1 = (12, 34, 56)

//Agrupamos diferentes tipos de datos
var tupla2 = ("Carlos", "Elvira", 2, 28300)

print(tupla2)
print(tupla2.0)
print(tupla1.2)

//Modificar valores de una tupla
tupla2.2 = 3

//No se puede ampliar una vez creada
//Ejemplo: tupla2.4 = 18

var otratupla : (Int, String, Double) = (1, "hola", 2.2)

print(otratupla)

//Operaciones con tuplas

//PATTERN MATCHING:

//Se asignan a las variables de forma flexible.
//Se indica el patrón al compilador y 'busca' la mejor forma posible de encajaros

var (nombre, apellido, edad, cp) = tupla2
print(nombre)
print(apellido)
print(edad)
print(cp)
print(type(of: tupla2))

//Unicamente se cambia el valor de la variable

cp = 21110
print(tupla2)

tupla2.3 = 21110
print(tupla2)

print("😂")

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

//OPTIONALS

//Se utiliza cuando una variable puede no tener valor, es decir, apunte a nulo
//En swift el nulo se representa por 'nil'
//En una variable normal (vistas hasta ahora), que no sean optional, no podemos apuntarla a 'nil'

//Declaración erronea, es una variable 'normal' no es OPTIONAL, por lo tanto no se le puede asignar 'nil'

// var variableNula : String = 'nil' -> Error

//Para declarar una variable como OPTIONAL se usa el caractcer '?' despues del tipo de la variable

var variableNula : String?
variableNula = nil
print(variableNula)
variableNula = "valor de la variable"
print(variableNula)

//En swift todo es un objeto, por lo tanto, al crear una variable entera
//tenemos el mismo problema, porque por defecto no son optional al declararlas
//var numero6 = 45
//numero6 = nil

var numeroNulo : Int? = 34
numeroNulo = nil

print(type(of: numeroNulo))
print(type(of: numero3))


//'wrapper' concepto ligado 'optional' -> Es un objeto que envukeve a otro objeto
//Podemos tener problemas en caso de que queramos trabajar con variables que sean
//optionales y variables que no lo sean

var variableNormal:String = "Esto es un string"

//No se puede apuntar directamente desde una variable normal a un a optional, es un error de asignacion

//variableNormal = variableNula ---> Error

//Sin embargo, si se puede apuntar una variable 'optional' a una 'normal'
variableNula = variableNormal
print(variableNormal)

variableNula = nil
variableNormal = variableNula! //Error en el tiempo de ejecucion, no en tiempo de compilacion


//Podemos hacer que los optionals sean auto-unwrapper
var variableAutoUnWrapper : String! = "Pepe"
//A partir de esto no es necesario hacer explicitamente el auto-unwrapper, se realiza automaticamente



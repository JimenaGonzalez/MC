/*Ejercicio 2-3 libro Horton:
*Le ingresa por parámetro el tipo de producto y la cantidad
*y calcula el precio total de la cantidad ingresada
*/

/*Autores:
* Jimena González       201316426
* Juan Sebastián Díaz   201127333
*/


#include <stdio.h>	/*Importa la libreria "Standard input-output"*/
/*
* Precio tipo 1: $3.50
* Precio tipo 2: $5.50
*/

int main ()
{
	int cantidad, tipo;	/*Se declara la variable para la cantidad de productos*/	
	double precio;		/*Se declara la variable precio*/
	printf("Ingrese el tipo de producto y la cantidad de productos\n");	/*Le dice al usuario qué ingresar*/
	scanf("%d %d", &tipo, &cantidad);		/*Guarda los valores ingresados por el usuario en "tipo" y "cantidad"*/
	/*Si se multimplica el tipo por dos y se le suma 1.5, se obtiene el precio del tipo*/
	precio=tipo*2+1.5;				/*Calcula el precio uniario del producto basado en el tipo*/
	printf("El precio total de los productos es %.2lf\n",precio*cantidad);	/*Imprime el precio total*/
	return 0;
}


/*Ejercicio 2-1 libro Horton:
*Le ingresa por parámetro una longitud en pulgadas
*e imprime la longitud en pies, yardas y pulgadas
*/

/*Autores:
* Jimena González	201316426
* Juan Sebastián Díaz	201127333
*/

#include <stdio.h>	/*Importa la libreria "Standard input-output"*/
#define PIE 0.083333	/*Se define una pulgada en términos de pies*/
#define YARD 0.027777	/*Se define una pulgada en términos de yardas*/

int main ()
{
	double pulgadas,yardas,pies;	/*Declara las variables para pies, yardas y pulgadas*/
	printf("Ingrese una distancia en pulgadas\n");	/*Le dice al usuario qué ingresar*/
	scanf("%lf", &pulgadas);		/*Guarda el valor ingresado por el usuario en "pulgadas"*/
	pies=PIE*pulgadas;		/*Hace la conversión a pies*/
	yardas=YARD*pulgadas;		/*Hace la conversión a yardas*/
	/*Imprime los valores obtenidos en la conversión*/
	printf("%.2lf pulgadas equivalen a %.2lf pies y a %.2lf yardas\n",pulgadas,pies,yardas);
	
	return 0;
}


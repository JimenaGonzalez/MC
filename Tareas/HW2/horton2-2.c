/*Ejercicio 2-2 libro Horton:
*Le ingresa por parámetro las dimensiones de una habitación en pies y en pulgadas
*y calcula el area en yardas cuadradas con dos decimales
*/

/*Autores:
* Jimena González       201316426
* Juan Sebastián Díaz   201127333
*/


#include <stdio.h>	/*Importa la libreria "Standard input-output"*/
#define PULGADAS 12	/*Se define cuantas pulgadas son un pie*/
#define YARD 0.027777	/*Se define una pulgada en términos de yardas*/

int main ()
{
	/*Declara las variables para ancho en pies y en pulgadas, ancho en yardas, largo en pies y en pulgadas y largo en yardas*/
	double anchoF, anchoI, largoF, largoI, largoY, anchoY;	
	printf("Ingrese una el ancho de la habitacion en pies y pulgadas\n");	/*Le pide al usuario ingresar el ancho*/
	scanf("%lf %lf", &anchoF, &anchoI);		/*Guarda los valores ingresados por el usuario en "anchoF" y "anchoI"*/
	printf("Ingrese una el largo de la habitacion en pies y pulgadas\n");   /*Le pide al usuario ingresar el largo*/
	scanf("%lf %lf", &largoF, &largoI);             /*Guarda los valores ingresados por el usuario en "largoF" y "largoI"*/
	anchoY=(anchoF*PULGADAS+anchoI)*YARD;		/*Hace la conversión de ancho a yardas*/
	largoY=(largoF*PULGADAS+largoI)*YARD;		/*Hace la conversión de largo a yardas*/
	printf("El área de la habitación en yardas cuadradas es %.2lf\n",anchoY*largoY);	/*Imprime el area en yardas cuadradas*/
	return 0;
}


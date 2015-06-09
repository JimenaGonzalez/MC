/*Ejercicio 2-4 libro Horton:
*Le ingresa por parámetro el salario semanal y las horas de trabajo
*y calcula el salario promedo por hora
*/

/*Autores:
* Jimena González       201316426
* Juan Sebastián Díaz   201127333
*/


#include <stdio.h>	/*Importa la libreria "Standard input-output"*/

int main ()
{
	double salario, horas;	/*Se declara la variable para la cantidad de productos*/
	printf("Ingrese su salario semanal y el numero de horas de trabajo semanales\n");	/*Le dice al usuario qué ingresar*/
	scanf("%lf %lf", &salario, &horas);		/*Guarda los valores ingresados por el usuario en "salario" y "horas"*/
	printf("Su salario promedio por hora es %.3lf\n",salario/horas);	/*Imprime el salario promedio*/
	return 0;
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicio1;

import java.util.Scanner;
/**
 *
 * @author Ruben
 */
public class Ejercicio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int acumulador = 0;
        int cant_num, numero_entrada, contado_mayor_diez = 0;
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("Ingrese la cantidad de numeros que quiere sumar");
        cant_num = entrada.nextInt();
        
        for (int i = 0; i < cant_num; i++) {
            System.out.println("Ingrese el " + (i + 1) + "* numero:" );
            numero_entrada = entrada.nextInt();
            acumulador = acumulador + numero_entrada;
            
            if (numero_entrada > 10) {
                contado_mayor_diez++;
            }   
        }
        
        System.out.println("Suma: " + acumulador);
        System.out.println("Mayores a 10: " + contado_mayor_diez);

    }  
}

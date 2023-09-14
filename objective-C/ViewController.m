//
//  ViewController.m
//  objective-C
//
//  Created by Javier Rodríguez Valentín on 06/10/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Variables enteras: %d ó %i
    int variableEntera = 8;
    NSLog(@"variableEntera = %d", variableEntera); //para imprimir cadena se necesita poner @ antes de las comillas
    
    //Variables float y double: %f y %lf
    float variableFloat = 3.15;
    NSLog(@"variableFloat = %f", variableFloat);
    printf("variableFloat = %f \n", variableFloat);
    double variableDouble = 4.54;
    NSLog(@"variableDouble = %lf", variableDouble);
    
    int a = 5;
    int b = 7;
    
    double resultado = a + b;
    NSLog(@"El resultado de %i + %d es: %.2lf", a, b, resultado); //%.2f -> ese .2 nos indica el número de decimales que va a sacar
    
    //Booleanos
    BOOL encendido = NO;
    BOOL apagado = YES;
    
    NSLog(@"La variable encendido es: %d", encendido);
    NSLog(@"La variable apagado es: %d", apagado);
    
    
    //condicional if
    bool dispositivo = NO;
    if(dispositivo){
        NSLog(@"El dispositivo está encencido");
    }else{
        NSLog(@"El dispositivo está apagado");
    }
    
    bool condicion1 = YES;
    bool condicion2 = NO;
    
    if (condicion1) {
        if (condicion2){
            NSLog(@"Se cumple condición1 y condición2");
        }else{
            NSLog(@"Se cumple condición1 pero no se cumple condición2");
        }
    }else{
        if(condicion2){
            NSLog(@"No se cumple ni condición1 pero si condición2");
        }else{
            NSLog(@"No se cumple ni condición1 ni condición2");
        }
        
    }
    
    /*bool b1 = false;
    if (b1) printf("REAL b1 \n");
    if (b1 != true) printf("NOT REAL b1 \n");
    
    BOOL b2 = false;
    if (b2) printf("REAL b2 \n");
    if (b2 != YES) printf("NOT REAL b2 \n");*/
    
    
    //Operaciones lógicas
    if (condicion1 && condicion2){
        NSLog(@"Se cumple condición1 y condición2");
    }
    
    if (condicion1 || condicion2){
        NSLog(@"Se cumple condición1 o condición2");
    }
    
    if (!condicion1){
        NSLog(@"No se cumple condición1");
    }
    
    
    //Operadores de comparación
    a = 17;//reasigno variables
    b = 24;
    
    if (a == b) {
        NSLog(@"a = %d es igual a b = %d", a, b);
    }
    
    if (a != b){
        NSLog(@"a=%d es distinto a b=%d", a, b);
    }
    
    if(a >= b){
        NSLog(@"a=%d es mayor o igual que b=%d", a ,b);
    }
    
    if(a <= b){
        NSLog(@"a=%d es menor o igual que b=%d", a ,b);
    }
    
    //condicional switch
    int tipoPantanlla = 1; //1 para 5", 2 para 6" y 3 para 7"
    
    switch (tipoPantanlla) {
        case 1:
            NSLog(@"La pantalla es de: 5 pulgadas");
            break;
            
        case 2:
            NSLog(@"La pantalla es de: 6 pulgadas");
            break;
            
        case 3:
            NSLog(@"La pantalla es de: 7 pulgadas");
            break;
            
        default:
            break;
    }
    
    char caracter = 'a';
    switch (caracter) {
            //al no tener break en a cuando tenga el casos a me va a ejecutar casos hasta que alguno tenga break desde el caso del caracter
        case 'a':
            NSLog(@"Paso por la letra a. Tengo valor: %d", caracter);
        case 'b':
            NSLog(@"Estoy en b");
            break;
        case 'c':
            NSLog(@"Estoy en c");
            break;
            
        default:
            break;
    }
    
    //Switch no admite cadenas
    NSString * cadena = @"Hola mundo";
    char * cadena2 = "Ey";
    NSLog(@"Cadena: %@ \nCadena2: %s \n", cadena, cadena2); //estas cadenas solo con NSLog no con printf
    
    //Bucles determinados
    //i++ primero asigna y luego suma, mientras que ++i primero suma y luego asigna// lo mismo para --
    NSLog(@"Bucle determinado: for");
    for (int i=0; i<3; i++) {
        NSLog(@"En esta vuelta i vale: %d", i);
    }
    
    //Bucles indeterminados
    int i = 0;
    NSLog(@"Bucle indeterminado: while");
    while (i<3) {
        NSLog(@"i es %d menor que 3", i++);
    }
    
    NSLog(@"Bucle indeterminado: do-whike");
    i = 0;
    do {
        NSLog(@"i es %d", i++);
    } while (i<3);
    
    //funciones
    printf("\nFUNCIONES\n");
    
    //funciones con parámetros sin retorno
    calcular(a, b);
    
    //funciones con parámetros y con retorno
    int res = calcularRetorno(a, b);
    NSLog(@"Con retorno. El resultado de %d + %i = %d", a, b, res);
    NSLog(@"Escribo en la misma línea. Con retorno. El resultado de %d + %i = %d", a, b, calcularRetorno(a, b));
    

}


void calcular(int a, int b){
    NSLog(@"Sin retorno. El resultado de %d + %i = %d", a, b, a+b);
}

int calcularRetorno(int a, int b){
    return a+b;
}



@end

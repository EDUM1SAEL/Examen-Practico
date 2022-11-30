print("***********Bienvenido a facturación para la venta de pantalones.***************** ");
print("Ingrese sus datos correspondientes.");
name=str(input("Ingrese su nombre: "));
tpan=int(input("Ingrese la cantidad de pantalones a llevar: "));
print("****************FACTURACIÓN**************");
subtotal_pagar=tpan*160.50
if (tpan>=7):
    uno=(10%-7*160.50);
    desc=112.35;

elif(tpan>=10):
    dos=(25%-10*160.50);
    desc=401.25;
else:
    if(subtotal_pagar>=700):
        desc=(5%  subtotal_pagar)
    else:
        desc=tpan*160.50
        print("su total a paga es:",desc);
print("Estimado cliente:",name);
print("su compra ha sido cobrada satisfactoriamente !!!!");
print("Usted ha comprado :",tpan,"pantalones");
print("por lo tanto se le ha cobrado:",desc)





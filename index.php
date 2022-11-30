<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">
</head>
<body>
    
    <main>
       
        <div class="container">
            <form action="validar.php" method="post">
                <h1>INICIO DE SESIÓN</h1>
                    <label for="usuario">Usuario</label> <br>
                    <input type="text" id="input" name="usuario" > <br>
                    <label for="pass">Password</label> <br>
                    <input required type="password" class="passw" id="micontraseña" name="contraseña" >
                    <div class="recuerdame">
                         <input  type="checkbox" class="check" id="ok"  >
                        <label for="recu">Recuerdame</label>
                     </div>
                     <input type="submit" value="Ingresar" class="ingresar">

            </form>
        </div>
    </main>
    <footer>
        <div class="container-f">
            <p>Desarrollado por Nicolas Valenzuela😎✌️</p> 
        </div>
    </footer>
</body>
</html>
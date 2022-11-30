<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;
$conexion=mysqli_connect("localhost","root","","panachis");

include('db.php');

$consulta="SELECT*FROM tblusuarios where Usuario='$usuario' and Contrasena='$contraseña'";
$resultado=mysqli_query($conexion,$consulta); 

$filas=mysqli_num_rows($resultado);

if($filas){
  
    header("location:home.php");

}else{
    ?>
    <?php
    echo '<script language="javascript">alert("Usuario y/o Contraseña incorrectos");
        window.location.href="index.php";
    </script>';
    ?>
    
<?php


}
mysqli_free_result($resultado);
mysqli_close($conexion);
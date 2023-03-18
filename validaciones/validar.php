<?php
    /*Este codigo es la conexion a la bd  y tambien es para hacer un insert into a la tabla datos*/
    include '../cone.php';

    $nombres = $_POST['nombres'];
    $alias = $_POST['alias'];
    $rut = $_POST['rut'];
    $email = $_POST['email'];
    $region = $_POST['region'];
    $comuna = $_POST['comuna'];
    $candidato = $_POST['candidato'];
    $web = $_POST['web'];
    $tv = $_POST['tv'];
    $redes = $_POST['redes'];
    $amigos = $_POST['amigos'];

    $query = "INSERT INTO datos (nombres, alias, rut, email, region, comuna, candidato, web, tv, redes, amigos) 
    VALUES ('$nombres', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$web', '$tv', '$redes','$amigos')";


    /*Este codigo es para validar los rut duplicados, esa decir, si se registra un rut y la persona quisiera votar de nuevo con el mismo rut, no podra hacerlo.*/
    $validar_rut = mysqli_query($conexion, "SELECT * FROM datos WHERE rut='$rut'");

    if (mysqli_num_rows($validar_rut) > 0){
        echo'
        <script>
            alert("Este rut ya ha votado anteriormente. Intenta con otro.")
            window.location = "../index.php";
        </script>
        ';
        exit();
    }

    /*Este codigo verifica los datos del form, es decir, si la persona ingresa todos los datos correctamente, le saldra el mensaje que sale mas abajo.*/ 
    $ejecutar = mysqli_query($conexion, $query);

    if ($ejecutar){
        echo'
        <script>
            alert("Gracias por votar");
            window.location = "../index.php";
        </script>
        ';
    }
    else{
        echo '
        <script>
            alert("No se ha podido mandar la petecion");
            window.location = "../index.php";
        </script>
        ';
    }
    mysqli_close($conexion);

?>
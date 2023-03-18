<?php
  /*Acá estoy haciendo la conexion a las variables y a la tabla de regiones y candidatos, para que se puedan
  reflejar en los combobox. */
	require('cone.php');
	$query = "SELECT id_region, region FROM regiones";
	$resultado=$conexion->query($query);
  $query2 = "SELECT id, nombre FROM candidatos";
  $resultado2=$conexion->query($query2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/styles.css">
    <title>Formulario de votacion</title>
    <script language="javascript" src="/jquery/jquery-3.6.4.min.js"></script>
</head>
<body>
    <section class="form-register">
    <form method="POST"  action="./validaciones/validar.php">
        <h1>Formulario de votacion:</h1>
        <label for="">Nombre y Apellido:</label>
        <input class="controls" type="text" name="nombres" onkeypress="return nombre(event);" required>
        <br>
        <br>
        <label for="">Alias:</label>
        <input class="controls" type="text" name="alias" minlength="5"  onkeypress="return alia(event);" pattern=".{5, 8}" maxlength="8" required> 
        <br>
        <br>
        <label for="">RUT:</label>
        <input class="controls" type="text" id="txt_rut" placeholder="Ej: 11111111-1"  name="rut" maxlength="10" onkeypress="return num(event);" required>
   
        <br>
        <br>
        <label for="">Email:</label>
        <input class="controls" type="email" name="email" required>
        <br>
        <br>
        <label for="">Region:</label>
        <select id="region" name="region" required>
          <option value=""></option>
          <?php while($row = $resultado->fetch_assoc()) {?>
           <option value="<?php echo $row['id_region']; ?>"><?php echo $row [
            'region']; ?></option>
          <?php } ?>
        </select>
        <br>
        <br>
        <label for="">Comuna:</label>
        <select id="comuna" name="comuna" required>
        </select>
        <br>
        <br>
        <label for="">Candidato:</label>
        <select id="candidato" name="candidato" required>
          <option value=""></option>
          <?php while($row = $resultado2->fetch_assoc()) {?>
           <option value="<?php echo $row['id']; ?>"><?php echo $row [
            'nombre']; ?></option>
          <?php } ?>
        </select>
        <br>
        <br>
        <label for="">¿Como supiste de nosotros?</label>
        <input type="hidden" name="web" value="no selecciono">
        <input type="checkbox" name="web" value="web">Web  
        <input type="hidden" name="tv" value="no selecciono">
        <input type="checkbox" name="tv" value="tv" >TV
        <input type="hidden" name="redes" value="no selecciono">
        <input type="checkbox" name="redes" value="redes">Redes sociales
        <input type="hidden" name="amigos" value="no selecciono">
        <input type="checkbox" name="amigos" value="amigos">Amigos 
        <br>
        <br>
        <input id="btnvalida"  class="submit" type="submit" value="Votar">
    </form>
    </section>

    <script src="/javascript/script.js"></script>
</body> 
</html>
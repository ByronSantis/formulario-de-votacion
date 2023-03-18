/*
Este apartado o este script, es para los combobox de region y comuna tengan relacion entre si.
*/ 

$(document).ready(function(){
  $("#region").change(function () { 
    $("#region option:selected").each(function () {
      id_region = $(this).val();
      $.post("include/getComuna.php", { id_region: id_region}, function(data){
        $("#comuna").html(data);
      });            
    });
  })
});

var Fn = {
	// Valida el rut con su cadena completa "XXXXXXXX-X"
  // Este codigo funciona correctamente.
	validaRut : function (rutCompleto) {
		rutCompleto = rutCompleto.replace("‐","-");
		if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
			return false;
		var tmp 	= rutCompleto.split('-');
		var digv	= tmp[1]; 
		var rut 	= tmp[0];
		if ( digv == 'K' ) digv = 'k' ;
		
		return (Fn.dv(rut) == digv );
	},
	dv : function(T){
		var M=0,S=1;
		for(;T;T=Math.floor(T/10))
			S=(S+T%10*(9-M++%6))%11;
		return S?S-1:'k';
	}
}

$("#btnvalida").click(function(){
  if (Fn.validaRut( $("#txt_rut").val() )){
		$("#msgerror").html("el Rut ingresado es valido")
	} else {
		$("#msgerror").html("El Rut no es válido. Intenta con otro ");
	}
});



/*Esta funcion es para el campo nombre y apellido, esto es para que la persona ingrese datos de tipo solo letras y no numeros.*/
function nombre(e){

  key = e.keyCode || e.which;
  tecla = String.fromCharCode(key).toString();
  letras = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú ";

  especiales = [8, 13]
  tecla_especiol = false
  for(var i  in especiales){
    if(key == especiales[i]){
      tecla_especiol = true;
      break;
    }
  }
  if(letras.indexOf(tecla) == -1 && !tecla_especiol){
    alert("Este campo no admite números.")
    return false;
  }
}

/*Esta funcion es para el rut, parar que la persona no coloque letras en el input.*/

function num(evt){

key = evt.keyCode || evt.which;
tecla = String.fromCharCode(key).toString();
letras = "123456789-kK";

especiales = [8, 13]
tecla_especiol = false
for(var i  in especiales){
  if(key == especiales[i]){
    tecla_especiol = true;
    break;
  }
}
if(letras.indexOf(tecla) == -1 && !tecla_especiol){
  alert("Este campo no admite puntos ni letras.")
  return false;
  }
}
/*Esta funcion es para el alias, para que tenga el minimo y maximo de letras solicitadas. */
function alia(evtn){

  key = evtn.keyCode || evtn.which;
  tecla = String.fromCharCode(key).toString();
  letras = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú123456789";

  especiales = [8, 13]
  tecla_especiol = false
  for(var i  in especiales){
    if(key == especiales[i]){
      tecla_especiol = true;
      break;
    }
  }
  if(letras.indexOf(tecla) == -1 && !tecla_especiol){
    alert("Este campo no admite menos de 5 caracteres y numeros.")
    return false;
  }
}

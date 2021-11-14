//funcion que valida los datos ingresados en el formulario
function validarRegUsuario() {
  var nombre,
    apellido,
    email,
    pass,
    telef,
    direcc,
    fNacim,
    provincia,
    tipoUsuario;

  //traigo valores del formulario
  nombre = document.getElementById('inputNombre').value;
  apellido = document.getElementById('inputApellido').value;
  email = document.getElementById('inputEmail').value;
  pass = document.getElementById('inputPassword').value;
  telef = document.getElementById('inputTelefono').value;
  direcc = document.getElementById('inputDireccion').value;
  fNacim = document.getElementById('inputFNacim').value;
  provincia = document.getElementById('selectProvincia').selectedIndex;
  tipoUsuario = document.getElementById('selectUsuario').selectedIndex;

  //verifico que todos los campos contengan datos, si no muestro un alert:
  if (
    nombre === '' ||
    apellido === '' ||
    email === '' ||
    pass === '' ||
    telef === '' ||
    direcc === '' ||
    fNacim === '' ||
    provincia === '' ||
    tipoUsuario === ''
  ) {
    alert('Todos los campos deben estar completos');
    return false;
  }

  //verifico que el nombre tenga al menos dos caracteres
  if (nombre.length < 2) {
    alert('Ingrese un nombre válido. Debe contener al menos dos caracteres');
    return false;
  }

  //verifico que el apellido tenga al menos dos caracteres
  if (apellido.length < 2) {
    alert('Ingrese un apellido válido. Debe contener al menos dos caracteres');
    return false;
  }

  //valido que el email sea valido:
  if (
    !/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(
      email
    )
  ) {
    alert('Debes ingresar un email válido.');
    return false;
  }

  //verifico que el telefono sea numerico primero y que contenga diez digitos en el else if
  if (isNaN(telef)) {
    alert('El campo télefono debe contener un número de contacto válido');
    return false;
  } else if (telef.length > 10 || telef.length < 10) {
    alert(
      'El número debe contener 10 dígitos (código de área sin cero y número sin quince)'
    );
    return false;
  }

  //verifico si es mayor de 18 años
  if (calcularEdad(fNacim) < 18) {
    alert(
      'Revise la fecha de nacimiento. El empleado debe ser mayor de 18 a\u00f1os'
    );
    return false;
  }

  alert('registro completado exitosamente');
}

//permite calcular la edad para verificar si la persona es mayor de 18 años
function calcularEdad(fechaNac) {
  let hoy = new Date();
  let fechaNacimiento = new Date(fechaNac);
  let edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
  let diferenciaMeses = hoy.getMonth() - fechaNacimiento.getMonth();
  if (
    diferenciaMeses < 0 ||
    (diferenciaMeses === 0 && hoy.getDate() < fechaNacimiento.getDate())
  ) {
    edad--;
  }
  return edad;
}

//funcion que limpia los campos del formulario, 2do evento de interaccion del usuario con el dom
function borrarRegistroUsuarios() {
  document.getElementById('inputNombre').value = '';
  document.getElementById('inputApellido').value = '';
  document.getElementById('inputEmail').value = '';
  document.getElementById('inputPassword').value = '';
  document.getElementById('inputTelefono').value = '';
  document.getElementById('inputDireccion').value = '';
  document.getElementById('inputFNacim').value = 'AAAA-MM-DD';
  document.getElementById('selectProvincia').selectedIndex = 0;
  document.getElementById('selectUsuario').selectedIndex = 0;
}

function redireccion() {
  var tiempo = 5000;

  //mensaje
  document.getElementById('mensaje').innerHTML =
    'Espere, en breve será redirigido a la pagina de inicio.';

  setTimeout(function () {
    window.location = 'index.html';
  }, tiempo);
}

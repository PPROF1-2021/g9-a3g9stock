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

  //verifico que todos los campos contengan datos:
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

  //verifico que el telefono sea numerico primero y que contenga diez digitos en el else if
  if (isNaN(telef)) {
    alert('El campo télefono debe contener un número de contacto válido');
    return false;
  } else if (telef.length > 10 || telef.length < 10) {
    alert(
      'El número debe contener 10 dígitos (código de área sin cero y número sin quince'
    );
    return false;
  }

  //validación del mail:
  if (
    !/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(
      email
    )
  ) {
    alert('Debes ingresar un email válido.');
    return false;
  }
}

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

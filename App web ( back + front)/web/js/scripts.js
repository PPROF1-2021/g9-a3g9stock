function redireccion() {
    //script de redireccionamiento
    var tiempo = 5000; //10 segundos de espera
    setTimeout(function () {
        window.location = 'index.html';
    }, tiempo);

}


 

//validacion del formulario de contacto
function borrarCamposComent() {
    document.getElementById('inNombreComent').value = '';
    document.getElementById('inApellidoComent').value = '';
    document.getElementById('inTelefonoComent').value = '';
    document.getElementById('inEmailComent').value = '';
    document.getElementById('txtComentario').value = '';
}

//validacion del formulario de contacto
function validarComent() {
    var nombre, apellido, telef, email, comentario;

    //traigo valores del formulario
    nombre = document.getElementById('inNombreComent').value;
    apellido = document.getElementById('inApellidoComent').value;
    email = document.getElementById('inEmailComent').value;
    telef = document.getElementById('inTelefonoComent').value;
    comentario = document.getElementById('txtComentario').value;

    //verifico que todos los campos contengan datos:
    if (
            nombre === '' ||
            apellido === '' ||
            email === '' ||
            telef === '' ||
            comentario === ''
            ) {
        alert('Todos los campos deben estar completos');
        return false;
    }

    //verifico que el telefono sea numerico primero y que contenga diez digitos en el else if
    if (isNaN(telef)) {
        alert('El campo telefono debe contener un numero de contacto valido');
        return false;
    } else if (telef.length > 10 || telef.length < 10) {
        alert(
                'El numero debe contener 10 digitos (codigo de area sin cero y numero sin quince'
                );
        return false;
    }

    //valido que el email sea valido:
    if (
            !/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(
                    email
                    )
            ) {
        alert('Debes ingresar un email valido.');
        return false;
    }
}

//validacion del formulario de Pedido, borrado de los campos cargados
function borrarCamposPedido() {
    document.getElementById('inputBusquedaCliente').value = '';
    document.getElementById('inputTipoCerveza').selectedIndex = 0;
    document.getElementById('inputCantidad').value = '';
    document.getElementById('inputPrecioUnitario').value = '$0';
    document.getElementById('importeTotal').value = 'Total a Pagar: $';
}

function validarNuevoPedido() {
    //
    var nombre, tipoCerveza, cantidad;

    nombre = document.getElementById('inputBusquedaCliente').value;
    tipoCerveza = document.getElementById('inputTipoCerveza').selectedIndex;
    cantidad = document.getElementById('inputCantidad').value;

    //valida que el campo cantidad sea numérico
    if (isNaN(cantidad)) {
        alert('El campo cantidad debe contener un valor numérico');
        return false;
    }
}

function validarAltaStockMP() {
    var nombreMatPrima,
            marcaMatPrima,
            marca,
            tipoInsumo,
            unidadMedida,
            cantidadXEmpaque,
            proveedor;

    //faltan traer valores del form

    if (
            nombreMatPrima === '' ||
            marcaMatPrima === '' ||
            marca === '' ||
            tipoInsumo === '' ||
            unidadMedida === '' ||
            cantidadXEmpaque === '' ||
            proveedor === ''
            ) {
    }
}


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


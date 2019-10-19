<?php
if (!$_SESSION['user']) {
    echo "<script>alert('no haz iniciado sesion ');</script>";
    header("Location:login.php");
} else {
    # code.
    if (isset($_GET['module']) && !empty($_GET['module'])) :
        $module = $_GET['module'];
    endif;
}

include 'conectar.php';
$id = $_SESSION['id'];

if(isset($_POST['updateUser'])){
    
    $sqlquery = "UPDATE usuarios SET nombre='".$_POST['nombre']."', apellidos='".$_POST['apellidos']."',
    usuario='".$_POST['usuario']."', clave='".$_POST['clave']."' WHERE id_usuario = $id";
    $execute = sqlsrv_query($conn, $sqlquery);    
}

$sqlquery = "SELECT 
nombre, apellidos, usuario,clave
FROM 
usuarios
WHERE id_usuario = $id ";                                                                                     
$result = sqlsrv_query($conn, $sqlquery);    
$datos =  sqlsrv_fetch_array($result);                                                                                                        
                
?>
<script>
    document.getElementById("TitleModule").innerHTML = "Mi Perfil";
</script>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Información de Usuario</h1>
</div>
<form method="POST" action="mainsuper.php?module=editperfil">
    <div class="card">
        <div class="card-header mx-auto">
            <button id="btnmodi" type="button" onclick="toEdit()" class="btn btn-warning">
                Modificar mis datos
            </button>
            <button id="btncancel" type="button" onclick="cancel()" class="btn btn-dark" style="display:none">
                Cancelar
            </button>
        </div>
        <div class="card-body">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Nombre:</label>
                    <input type="text" class="form-control" id="formGroupExampleInput" name="nombre" 
                    placeholder="" value="<?php echo $datos['nombre'] ?>" disabled>
                </div>
                <div class="col col-md-6">
                    <label for="inputPassword4">Apellidos:</label>
                    <input type="text" class="form-control" name="apellidos" placeholder="" value=<?php echo $datos['apellidos'] ?> disabled>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Usuario:</label>
                    <input type="text" class="form-control" id="inputEmail4" name="usuario" placeholder="" value=<?php echo $datos['usuario']  ?> disabled>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Contraseña:</label>
                    <input type="password" class="form-control" id="inputPassword4" name="clave" placeholder="" value=<?php echo $datos['clave']  ?> disabled>
                </div>

            </div>
        </div>
    </div>
    <br>
    <div class="form-group">
        <input id="btnsave" value="Guardar" name="updateUser" type="submit" class="btn btn-success btn-lg" style="display:none"></button>
    </div>

</form>

<script>
    function toEdit() {
        $('.form-control').prop("disabled", false);
        $('#btnmodi').hide();
        $('#btncancel').show();
        $('#btnsave').show();
    }

    function cancel() {
        $('.form-control').prop("disabled", true);
        $('#btnmodi').show();
        $('#btncancel').hide();
        $('#btnsave').hide();
    }
</script>
<script>
    document.getElementById("TitleModule").innerHTML = "Crear Presupuesto";
</script>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Complete la siguiente información</h1>
</div>
<form>
    <div class="form-row">
        <div class="form-group col-md-8">
            <label>Titulo:</label>
            <input type="text" class="form-control" placeholder="">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-8">
            <label for="inputEmail4">Descripción:</label>
            <textarea class="form-control" placeholder=""></textarea>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputState">Cargar Excel con detalle de presupuesto:</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1">
        </div>
    </div>
    <a href="main.php?module=listpresu" class="btn btn-primary">Registrar Presupuesto</a>
</form>
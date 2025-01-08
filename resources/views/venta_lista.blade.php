<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('add-save')}}'>
      @csrf
        <div class='form-group'>
          <label>Fecha</label>
          <input type='date' name='fecha' required class='form-control' value="<?php echo date('Y-m-d'); ?>" />
        </div>
        <div class='form-group'>
          <label>Cliente</label>
            <select name="cliente_id" class="form-control">
                @foreach($clientes as $row)
                    <option value="{!! $row->id !!}">{!! $row->rif . ' - '. $row->cliente !!}</option>
                @endforeach
            </select> 
        </div>
        <div class='form-group'>
          <label>Centros</label>
            <select name="centro_id" class="form-control">
                @foreach($centros as $row)
                    <option value="{!! $row->id !!}">{!! $row->centro !!}</option>
                @endforeach
            </select> 
        </div>

        <div class='form-group'>
          <label>Observaciones</label>
          <textarea name='observacion' required class='form-control' rows='5'></textarea>
        </div>

        <table class="table table-striped">
        <thead>
            <tr>
            <th scope="col">Producto</th>
            <th scope="col">Unidad</th>
            <th scope="col">Precio Unitario</th>
            <th scope="col">Cantidad</th>
            <th scope="col">Subtotal</th>            
            </tr>
        </thead>
        <tbody>
            @foreach($productos as $row)
                <tr>
                <th scope="row">{!! $row->producto !!}</th>
                <td>{!! $row->unidad !!}</td>
                <td><input class ="form-control" type="number" name="precio_{!! $row->id !!}_" value="{!! $row->precio !!}" step=".01" min="0"  /></td>
                <td><input class ="form-control" type="number" name="cantidad_{!! $row->id !!}_" value="0" step=".01" min="0" /></td>
                <td><input class ="form-control" type="number" name="subtotal_{!! $row->id !!}_" value="0" readonly min="0" /></td>
                </tr>
            @endforeach


        </tbody>
        </table>

        <div class='form-group'>
          <label>Total Orden</label>
          <input type='number' name='total' id='total' required class='form-control' value="0" disabled />
        </div>

        <!-- etc .... -->
        <div class='panel-footer'>
          <input type='submit' class='btn btn-primary' value='Guardar' id='guardar'/>
        </div>
        
      </form>
    </div>
  </div>
@endsection
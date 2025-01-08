<!-- index.blade.php -->

@extends('master')
@section('content')
   

    @php($ventaId = 0)
    @foreach ($ventas as $venta)
    @if ($ventaId != $venta->id)
    @php($ventaId = $venta->id)
    <h2> <img src="{{url('/')}}/img/logo.png" style="width:45; margin-top:-5px;border: none;" alt="Logo Empresa"/>  Coordinación Avícola -:- {{$page_title}}  N°. {{$ventaId}} </h2>
	    <table  class="table" border="0" cellspacing="1" cellpadding="1"> 
	        <tr>
	            <td style="width:130px"><strong>Cliente:</strong></td>
	            <td style="width:250px"> {{$venta->rif . ' - ' . $venta->cliente}} </td>
                <td><strong>Centro: </strong> {{ $venta->centro}}</td>
                <td><strong>Fecha: </strong> {{ $venta->fecha }} </td>
	        </tr>
        </table>
    
 	<table class="datos" style="margin-top:5px;">
		<thead>
		<tr>
			<th>Item</th>
			<th>Producto</th>
			<th>Precio</th>
			<th>Cantidad</th>
            <th>Subtotal</th>
		</tr>
		</thead>
		<tbody>
            @php($renglon=0)
            @php($total=0)
			@foreach ($detalle as $fila)
                @if ($fila->venta_id == $ventaId)
                @php($total+=$fila->subtotal)
                @php($renglon++)
                <tr>
                    <td style="width:5%;">{{$renglon}}</td>
                    <td style="width:45%;">{{ $fila->producto }}</td>
                    <td style="width:25%;" align="right">{{ number_format($fila->precio,2,',','.') }}</td>
                    <td style="width:25%;" align="right">{{ number_format($fila->cantidad,2,',','.') }}</td>
                    <td style="width:25%;" align="right">{{ number_format($fila->subtotal,2,',','.') }}</td>
                </tr>
                @endif
			@endforeach
		</tbody>
	</table>
    <p style="text-align:right;">
    <strong>Total Orden N° {{ $ventaId }} ==> {{ number_format($total,2,',','.') }}</strong>
    </p>
    <p>Observaciones: {{ $venta->observacion }}</p>
	<div style="color:#D2D2D2;">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</div>
    @endif
    @endforeach


@endsection
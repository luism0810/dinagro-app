<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use PDF;

	class AdminVentasController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "ventas";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Id","name"=>"id"];
			$this->col[] = ["label"=>"Fecha","name"=>"fecha"];
			$this->col[] = ["label"=>"Cliente","name"=>"cliente_id","join"=>"clientes,cliente"];
			$this->col[] = ["label"=>"Centro","name"=>"centro_id","join"=>"centros,centro"];
			$this->col[] = ["label"=>"Cantidad","name"=>"(select sum(cantidad) from ventas_productos where ventas_productos.venta_id = ventas.id) as total_c","callback"=>function($row) {
				$total_c= DB::select("SELECT
				sum(cantidad) as cantidad from ventas_productos join ventas on ventas.id = ventas_productos.venta_id where ventas_productos.venta_id = $row->id LIMIT 1")[0];
				return $total_c->cantidad;
			}];

			$this->col[] = ["label"=>"Total Bs","name"=>"(select sum(subtotal) from ventas_productos where ventas_productos.venta_id = ventas.id) as total_b","callback"=>function($row) {
				$total_b= DB::select("SELECT
				sum(subtotal) as bolivares from ventas_productos join ventas on ventas.id = ventas_productos.venta_id where ventas_productos.venta_id = $row->id LIMIT 1")[0];
				return $total_b->bolivares;
			}];
			$this->col[] = ["label"=>"Observación","name"=>"observacion"];
			$this->col[] = ["label"=>"Impreso","name"=>"impreso"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Fecha','name'=>'fecha','type'=>'date','validation'=>'required|date','width'=>'col-sm-10','value'=>date('Y-m-d', time())];
			$this->form[] = ['label'=>'Cliente','name'=>'cliente_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'clientes,cliente'];
			$this->form[] = ['label'=>'Centro','name'=>'centro_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'centros,centro'];
			$this->form[] = ['label'=>'Observación','name'=>'observacion','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];


			$columns = [];
			
			$columns[] = ['label'=>'Venta','name'=>'venta_id','type'=>'hidden','validation'=>'required|integer|min:0'];
			$columns[] = ['label'=>'Producto','name'=>'producto_id','type'=>'datamodal','datamodal_table'=>'productos','datamodal_columns'=>'producto','datamodal_size'=>'large','required'=>true];
			$columns[] = ['label'=>'Precio','name'=>'precio','type'=>'number','required'=>true];
			$columns[] = ['label'=>'Cantidad','name'=>'cantidad','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','decimals'=>'2','dec_point'=>'.','help'=>'(Dato Numérico)','step'=>'0.01','value'=>'0','required'=>true];
			$columns[] = ['label'=>'Sub Total','name'=>'subtotal','type'=>'number','formula'=>"[precio] * [cantidad]","readonly"=>true,'required'=>true];
			$this->form[] = ['label'=>'Detalle','name'=>'order_detail','type'=>'child','columns'=>$columns,'table'=>'ventas_productos','foreign_key'=>'venta_id'];

			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Fecha","name"=>"fecha","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Cliente Id","name"=>"cliente_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"cliente,id"];
			//$this->form[] = ["label"=>"Centro Id","name"=>"centro_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"centro,id"];
			//$this->form[] = ["label"=>"Observacion","name"=>"observacion","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */

			$this->button_selected = array();
			//$this->button_selected[] = ['label'=>'Imprimir','icon'=>'fa fa-print','name'=>'set_impreso'];
	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();
			$this->index_button[] = ['label'=>'Imprimir','url'=>CRUDBooster::mainpath("print"),"icon"=>"fa fa-print"];


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;
			$this->script_js = "$(function(){

				$('#imprimir').on('click',function(e){
					console.log(this.href);
					var ruta = this.href;
					var seleccionados = '/?Ids=0';
					$('.checkbox:checked').each(
						function() {
							seleccionados = seleccionados + ','+$(this).val();
							//alert('El checkbox con valor ' + $(this).val() + ' está seleccionado');
						}
					);					
					$('#imprimir').attr('href',ruta + seleccionados);
				});

				$('#guardar').hide();
				
				$('input[name^=precio]').on('change',function(){
					var nombre = this.name.substr(7);
					var precio = this.value;

					var subtotal = 'subtotal_'+nombre;
					var cantidad = 'cantidad_'+nombre;

					var cantidad = $('input[name=\"'+cantidad+'\"]').val();
					
					$('input[name=\"'+subtotal+'\"]').val(precio*cantidad);

					var total = 0;
					$('input[name^=subtotal]').each(function() {
						total = parseFloat(total) + parseFloat(this.value);
						console.log(total);
					});
					$('#total').val(total);

					if (total) {
						$('#guardar').show();
					}else{
						$('#guardar').hide();
					}
				})

				$('#total').on('change', function () {
					const value = Number($(this).val());
					$(this).val(value.toFixed(2));
			   	});

				$('input[name^=cantidad]').on('change',function(){
					var nombre = this.name.substr(9);
					var cantidad = this.value;

					var subtotal = 'subtotal_'+nombre;
					var precio = 'precio_'+nombre;

					var precio = $('input[name=\"'+precio+'\"]').val();
					
					$('input[name=\"'+subtotal+'\"]').val(precio*cantidad);

					var total = 0;
					$('input[name^=subtotal]').each(function() {
						//total = parseFloat(total) + parseFloat(this.value);
						total = parseFloat(total) + parseFloat(this.value);
						console.log(total);
					});
					$('#total').val(total);
					
					if (total) {
						$('#guardar').show();
					}else{
						$('#guardar').hide();
					}
					
				})

			})";
            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
			if($button_name == 'set_impreso') {
				$fecha = date('Y-m-d h-n-s');
				DB::table('ventas')->whereIn('id',$id_selected)->update(['impreso'=>$fecha]);
				//self::rptVentas($id_selected);
			  }
			  
			 
//*******************			 
$data = [];
$data['page_title'] = 'Relación de Ventas';
$data['usuario'] = CRUDBooster::myName();

$data['ventas']= DB::table('ventas')
->join('clientes','clientes.id','cliente_id')
->join('centros','centros.id','centro_id')
->select('ventas.id','fecha','rif','cliente','centro','observacion')
->whereIn('ventas.id',$id_selected)
->orderby('id')
->get();

$data['detalle']= DB::table('ventas_productos')
->join('productos','productos.id','producto_id')
->join('unidades','unidades.id','unidad_id')
->select('venta_id','producto','precio','cantidad','subtotal','unidad')
->whereIn('venta_id',$id_selected)
->orderby('venta_id')
->orderby('producto')
->get();

//dd($data);
//$queries = DB::getQueryLog();

//dd($queries);
//return $this->view('ventasRpt',$data);


$pdf = PDF::loadHTML($view); 
$pdf->setPaper('letter','portrait');
return $pdf->stream();
$pdf->download('rptListado_'. date("YmdgiA") . '.pdf');

//******************			 
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
			if(is_numeric($column_value) and $column_index > 1 ) {
				$column_value = number_format($column_value,2,',','.');
				$column_value = "<div style='text-align:right' class='text-primary'>  $column_value</div>"; 
		   }

	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }




	    //By the way, you can still create your own method in here... :) 

		public function getAdd() {
			//Create an Auth
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
			  CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Nueva Venta';
			
			$data['clientes'] = DB::table("clientes")->get();
			$data['centros'] = DB::table("centros")->get();
			$data['productos'] = DB::table("productos")->join("unidades","unidades.id","unidad_id")->select("productos.id","productos.producto","productos.precio","unidades.unidad")->orderby('producto')->get();
			//Please use view method instead view method from laravel
			return $this->view('venta_lista',$data);
		  }

		public function postAddSave()
		{
			
			$this->cbLoader();
			$this->arr['cliente_id'] = Request::input("cliente_id");
			$this->arr['centro_id'] = Request::input("centro_id");
			$this->arr['fecha'] = Request::input("fecha");
			$this->arr['observacion'] = Request::input("observacion");
			$this->arr['created_at'] = date('Y-m-d H:i:s');
			$lastInsertId = $id = DB::table($this->table)->insertGetId($this->arr);
			
			$productos =  DB::table("productos")->get();

			foreach ( $productos as $producto) {
				//info(Request::all());
				$subtotal = Request::input("subtotal_" . $producto->id . "_");
				//info($subtotal);
				if ($subtotal > 0) {
					$precio = Request::input("precio_".$producto->id ."_");
					$cantidad = Request::input("cantidad_".$producto->id."_");
	
					$obj['venta_id']=$lastInsertId;
					$obj['producto_id']= $producto->id;
					$obj['precio']=$precio;
					$obj['cantidad']=$cantidad;
					$obj['subtotal']=$subtotal;
					DB::table("ventas_productos")->insert($obj);

					DB::table("productos")->whereId($producto->id)->update(['precio' => $precio]);
					
				}
			}
			CRUDBooster::redirect(CRUDBooster::mainpath(), cbLang("alert_add_data_success"), 'success');
		}

		public function getPrint() {
			$Ids= Request::get("Ids");
			$pos      = strripos($Ids, "?");
			if ($pos === false) {
				$Ids = explode(",", $Ids);
			}else{
				$Ids = substr($Ids, $pos+5);
				$Ids = explode(",", $Ids);
			}	

			$fecha = date('Y-m-d h-n-s');
			DB::table('ventas')->whereIn('id',$Ids)->update(['impreso'=>$fecha]);

			$data = [];
			$data['page_title'] = 'Relación de Ventas';
			$data['usuario'] = CRUDBooster::myName();

			$data['ventas']= DB::table('ventas')
			->join('clientes','clientes.id','cliente_id')
			->join('centros','centros.id','centro_id')
			->select('ventas.id','fecha','rif','cliente','centro','observacion')
			->whereIn('ventas.id',$Ids)
			->orderby('id')
			->get();

			$data['detalle']= DB::table('ventas_productos')
			->join('productos','productos.id','producto_id')
			->join('unidades','unidades.id','unidad_id')
			->select('venta_id','producto','ventas_productos.precio','cantidad','subtotal','unidad')
			->whereIn('venta_id',$Ids)
			->orderby('venta_id')
			->orderby('producto')
			->get();
			
			//dd($data);
			//$queries = DB::getQueryLog();

			//dd($queries);
			return $this->view('ventasRpt',$data);
			
			$view = view('ventasRpt')->with($data);
			
			$pdf = PDF::loadHTML($view); 
			$pdf->setPaper('letter','portrait');
			$pdf->download('rptListado_'. date("YmdgiA") . '.pdf');
		}		
	}
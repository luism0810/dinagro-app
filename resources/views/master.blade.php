<!-- master.blade.php -->

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  </head>
  <body>
  <style type='text/css'>
 
 .datos tr:nth-child(odd) {
     background-color:#f2f2f2;
 }
 .datos tr:nth-child(even) {
     background-color:#fbfbfb;
 }

.page-break {
    page-break-after: always;
}

</style>

<script type="text/php">
if ( isset($pdf) ) { 
    $pdf->page_script('
        if ($PAGE_COUNT > 1) {
            $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
            $size = 10;
            $pageText = "Página " . $PAGE_NUM . " de " . $PAGE_COUNT;
            $y = 20;
            $x = 520;
            $pdf->text($x, $y, $pageText, $font, $size);
        } 
    ');
}
</script>
<div style="font-family:Helvetica;width:770px;margin-left:-0px; font-size:12px;">
      <div class="container">
          @yield('content')
      </div>
</div>      
  </body>
</html>
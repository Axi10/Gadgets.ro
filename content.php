<div class="container py-5">
  <?php
  $i = 0;
  
  foreach($fetchData as $data){
    ?>
    <div class="row pb-5 mb-4">
      <?php for ($j = 0; $j < 4; $j++): ?>
        <?php if($i < count($fetchData)): ?>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
          <div class="card shadow-sm border-0 rounded">
            <div class="card-body1 p-0"><img src="https://previews.123rf.com/images/liena10/liena102203/liena10220300030/183117490-iphone-screen-simple-gray-vector-illustration-for-different-types-of-use.jpg" alt="" class="w-100 card-img-top">
              <div class="p-4">
              <h5 class="mb-0"><?php echo $fetchData[$i]['ProductName']?></h5>         
                <p class="small text-muted"><?php echo $fetchData[$i]['Cost']?></p>
              </div>
            </div>
          </div>
        </div>
        <?php $i++; ?>
        <?php endif; ?>
      <?php endfor; ?>
    </div>
    <?php
    }
?>
</div>
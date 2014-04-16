
<?php
  
    //$link = mysqli_connect("localhost", "dev", "iS]DVNcu8VCC", "dev_smartsmis");
	$mysqli = new mysqli("localhost","root", "root", "luc_articles");
	$query = 'SELECT * FROM bbc_article ORDER BY id DESC LIMIT 0, 5';
	/*
	if($result = $mysqli -> query($query)) {
       while($row = $result -> fetch_assoc()){
         print_r($row) ;
       }	
	}
     die("stop here");	
    */

?>

<!DOCTYPE html>
<html>
	<head>
	<title>Article site</title>
	<link href="css/styles.css" rel="stylesheet" />
	</head>
  <body>
    <div class ="container">	
	<h1>News</h1>
	<hr />
	<?php
	  
	  
	  if($result = $mysqli -> query($query)) {
		$cnt = 0;
	    while($row = $result -> fetch_assoc()){  
	    
	?> 
	                         
	
	    <?php  if($cnt == 0) {  ?> 
		<article class="main">
		  <img src="<?php echo $row['img_path']; ?>" /> 
		  <h2 class="main"><?php echo $row['title']; ?></h2>		  
		  <p class="main"><?php echo $row['news'];?></p> 
                    		
		</article>
	
	   <?php }else if($cnt == 1 ) { ?> 
         <article class="medium"> 
	       <img src="<?php echo $row['img_path']; ?>" />
		   <h2 class="medium"><?php echo $row['title']; ?></h2>		  
		   <p class="medium"><?php echo $row['news'];?></p> 
	     </article>

	   <?php } else { ?>
		<article class="sidebar">		
          <h2 class="side-articles"><?php echo $row['title']; ?></h2>
		</article>	  
        <?php }  ?>   
		
	<?php $cnt++; } 
	$mysqli->close(); 
	} 
	?>
	
	
	
	
    </div><!--end container --> 	  
  </body>
  
</html>

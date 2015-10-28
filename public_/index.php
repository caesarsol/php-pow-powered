<html>
<head>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="main.js"></script>
</head>

<body>

<?php
echo "<h1>It works!</h1>";
echo "<h2>Oooooooh</h2>";

$date = new DateTime();
echo "Oggi: ".$date->format('Y-m-d H:i:s');

//phpinfo();
?>

</body>
</html>

<html>
<body>
    <h1>Hello World !</h1>
    <h2>
        <?php
            $date = new \DateTime();
            echo $date->format('d.m.Y H:i:s:u');
        ?>
    </h2>
</body>
</html>

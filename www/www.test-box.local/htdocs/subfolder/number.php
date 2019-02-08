<?php

echo '<h1>Random Number</h1>';

$date = new \DateTime();
echo $date->format('d.m.Y H:i:s:u');

echo '<hr />';
echo rand(1,99);

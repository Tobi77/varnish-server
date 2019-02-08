<?php

$date = new \DateTime();
echo $date->format('d.m.Y H:i:s:u');

$ch = curl_init();

$curlOptions = [
    CURLOPT_CUSTOMREQUEST => 'BAN',
    CURLOPT_URL => 'www.test-box.local',
    CURLOPT_TIMEOUT => 1,
    CURLOPT_RETURNTRANSFER => 1,
];

curl_setopt_array($ch, $curlOptions);

curl_exec($ch);
$status = curl_getinfo($ch, CURLINFO_HTTP_CODE);

var_dump($status);

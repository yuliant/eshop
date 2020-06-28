<?php
error_reporting(0);
function kirim_email($email, $subject, $message)
{
    $ci = get_instance();
    $ci->load->library('email');
    $config['protocol'] = "smtp";
    // $config['smtp_host'] = "mail.zamanet.com";
    $config['smtp_host'] = "smtp.googlemail.com";
    $config['smtp_crypto'] = "ssl";
    $config['smtp_port'] = "465";
    // $config['smtp_user'] = "demo-ecommerce@zamanet.com";
    $config['smtp_user'] = "masrizalsn@gmail.com";
    // $config['smtp_pass'] = "demo-ecommerce";
    $config['smtp_pass'] = "snslalu07";
    // $config['charset'] = "iso-8859-1";
    $config['charset'] = "utf-8";
    $config['mailtype'] = "html";
    $config['newline'] = "\r\n";
    $ci->email->initialize($config);
    $ci->email->from('masrizalsn@gmail.com', "eshop");
    $ci->email->to("$email");
    $ci->email->subject("$subject");
    $ci->email->message("$message");
    $ci->email->send();
}

node default {
   file {'/root/README':
   ensure  => file,
   content => 'Well what do you know! - more stuff added',
   owner   => 'htaylor510',
 }
}

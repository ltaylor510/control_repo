node default {
}
node 'master.puppet.vm' {
   include role::master_server
   file { '/root/README':
   ensure => file,
   content => $fdqn,
   }
}
node /^agent*/ {
   include role::app_server
      file { '/root/README2':
              ensure => file,
              content => $fdqn,
   }
}
node /^db/ {
   include role::db_server
}


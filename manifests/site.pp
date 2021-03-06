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
   include role::master_server
    }
node /^db/ {
   include role::db_server
}


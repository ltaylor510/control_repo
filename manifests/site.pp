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
   include role::docker_agent_nodes
    }
node /^db/ {
   include role::db_server
}


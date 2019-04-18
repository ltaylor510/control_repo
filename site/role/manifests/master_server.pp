class role::master_server {
   include profile::base
   include profile::docker_agent_nodes
   include profile::motd
   include profile::ntp
   }

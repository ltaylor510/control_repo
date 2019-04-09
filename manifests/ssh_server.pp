class profile::ssh_server {
      package{'openssh-server':
         ensure => present,
}
      service {'sshd':
         ensure = > 'running',
         enable => 'true',
      }
      ssh_authorized_key { 'root@puppetserver':
         ensure => present,
         user   => 'root',
         type   => 'ssh-rsa',
         key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVkCY/K3/hug9XyiPbgkfFIimnz5/3wrHo2JZRqjexvZQTjIP7eVKddFA+8+ezQ3Xu92hDb/vp/ybFS08nhopBcfrXKpoGdiZXkMW+CHiwEjbRodj1rcQ7tTNblgOT0iB0tiEtM/WkhskIMefQF0JIRL5ljTaKhqJX4R5x+BsLAzxtc4y7MszrGeMNTRf0e4cqUTw29ZwrmB7+5NKFIrQHICHWQ7WKKGkS9lCzGKVbFdJ5Vl8VW6RTDPCT1cRcnVu0NCFe+CVieZ1EjQtPMx1ML5Qd9GU1CLKV/M6JU1dFkgpkc56StDuRN/EmPnnnZ3vhhcXXmbWHkDGOHBpmwCZV',
         }
        }

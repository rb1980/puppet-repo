# manifests/site.pp

node 'puppet.puppetserver.svc.cluster.local', default {
  notify { 'Found the right node!': }
  
  file { '/tmp/puppet_test.txt':
    ensure  => file,
    content => "Successfully applied to ${facts['networking']['fqdn']}\n",
  }
}

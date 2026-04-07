# manifests/site.pp

node default {
  file { '/tmp/puppet_test.txt':
    ensure  => file,
    content => "Puppet is running on ${facts['networking']['fqdn']}\nManaged by Pupperware on OrbStack.\n",
    mode    => '0644',
  }

  notify { 'Puppet connection successful!': }
}

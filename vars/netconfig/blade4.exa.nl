---
net_hostname: 'blade4.exa.nl'
net_defaultif: 'bond0.100'
net_privateif: 'bond0.1001'
net_interfaces: [ 'eth0', 'eth1', 'bond0', 'bond0.100', 'bond0.1001', 'bond0.1002' ]
net_config: 
        'eth0':           { hwaddr: '00:12:34:56:ab:41', bootproto: 'none', onboot: 'yes', master: 'bond0', slave: 'yes' }
        'eth1':           { hwaddr: '00:12:34:56:ab:42', bootproto: 'none', onboot: 'yes', master: 'bond0', slave: 'yes' }
        'bond0':          { bootproto: 'none', onboot: 'yes', bonding_opts: 'mode=5 miimon=80', userctl: 'no' }
        'bond0.100':      { bootproto: 'static', onboot: 'yes', vlan: 'yes', X_network: 'inet', X_hostipaddr: '24' }
        'bond0.1001':     { bootproto: 'static', onboot: 'yes', vlan: 'yes', X_network: 'srv1', X_hostipaddr: '104' }
        'bond0.1002':     { bootproto: 'static', onboot: 'yes', vlan: 'yes', X_network: 'cloud', X_hostipaddr: '104' }

default['yum']['ius-testing-debuginfo']['repositoryid'] = 'ius-testing-debuginfo'
default['yum']['ius-testing-debuginfo']['enabled'] = false
default['yum']['ius-testing-debuginfo']['managed'] = false
default['yum']['ius-testing-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-testing-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing-debuginfo']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-testing-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Testing Debug'
  default['yum']['ius-testing-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-testing-debuginfo&arch=$basearch'
when 6
  default['yum']['ius-testing-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing Debug'
  default['yum']['ius-testing-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-testing-debuginfo&arch=$basearch'
end

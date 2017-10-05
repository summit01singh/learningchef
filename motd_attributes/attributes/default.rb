override['motd_attributes']['company'] = 'summit'
default['motd_attributes']['java_bin'] = '/usr/local/bin/java'

default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat8'
default['motd_attributes']['tomcat_bin'] = '/usr/local/tomcat8/bin/tomcat'

default['motd_attributes']['message'] = "It's wounderfull day today!"
default['motd_attributes']['motd'] = [
  "This node is running on #{node['virtualization']['system']}",
  "The IP address of this node is #{node['ipaddress']}",
  node['motd_attributes']['message'],
  "welcome to #{node['motd_attributes']['company']}",
  "JAVA home for this node is #{node['motd_attributes']['java_home']}",
  "JAVA binary is #{node['motd_attributes']['java_bin']}",
  "Tomcat binary is #{node['motd_attributes']['tomcat_bin']}",
]

#
# == Class: xxx
#
# The xxx class mange
#
# === Parameters
#
# This class does not take parameters as all parameters are fetched via hiera
# The parameter defaults are stored in the xxx::data class
#
# === Variables
#
# No variables are used in the xxx base class
#
# === Examples
#
#  class { xxx: }
#
# === Authors
#
# Stefan Goethals <stefan@zipkid.ei>
#
# === Copyright
#
# Copyright 2013 Stefan Goethals, unless otherwise noted.
#
# http://timkay.com/aws/
# See usage there.
#
class aws_tool
{
  anchor { 'aws_tool::start': }->
  class { 'aws_tool::script': }->
  class { 'aws_tool::config': }~>
  anchor { 'aws_tool::end': }
}

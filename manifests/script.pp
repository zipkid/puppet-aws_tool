
class aws_tool::script
{
  file { "/usr/bin/aws":
    ensure  => present,
    mode    => 755,
    source  => "puppet:///modules/aws_tool/aws",
  }
}

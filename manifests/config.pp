
class aws_tool::config (
  $region,
  $id,
  $key,
) {
  file { "/root/.awsrc":
    ensure  => present,
    mode    => 400,
    content => template("aws_tool/awsrc.erb"),
  }

  file { "/root/.awssecret":
    ensure  => present,
    mode    => 400,
    content => template("aws_tool/awssecret.erb"),
  }
}

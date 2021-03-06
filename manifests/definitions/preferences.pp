define apt::preferences($ensure="present", $package, $pin, $priority) {

  common::concatfilepart { $name:
    ensure  => $ensure,
    file    => "/etc/apt/preferences",
    content => template("apt/preferences.erb"),
    before  => Exec["apt-get_update"],
  }

}

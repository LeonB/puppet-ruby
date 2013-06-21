class ruby::dev::package {

  package { $ruby::dev::packages:
    ensure   => $ruby::dev::ensure,
  }

  package { $ruby::dev::gems:
    ensure   => $ruby::dev::ensure,
    provider => 'gem',
  }

}

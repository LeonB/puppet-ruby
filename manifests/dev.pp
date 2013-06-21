class ruby::dev(
  $packages = params_lookup( 'packages' ),
  $gems = params_lookup( 'gems' ),
  $enabled  = params_lookup( 'enabled' ),
) inherits ruby::dev::params {

  # install ruby before this
  Class['ruby'] -> Class['ruby::dev']

  $ensure = $enabled ? {
    true  => present,
    false => absent
  }

  include ruby::dev::package, ruby::dev::config
}

class ruby(
    $package_name = params_lookup( 'package_name' ),
    $enabled       = params_lookup( 'enabled' )
  ) inherits ruby::params {

    $ensure = $enabled ? {
        true => present,
        false => absent
    }

    include ruby::package, ruby::config
}

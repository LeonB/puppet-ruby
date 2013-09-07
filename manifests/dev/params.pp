# Class: ruby::dev::params
#
# This class defines default parameters used by the main module class ruby
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to ruby class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class ruby::dev::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['rubygems-integration', 'libreadline-dev', 'libmagickcore5']
  }

  $gems = []

  $enabled = true

}

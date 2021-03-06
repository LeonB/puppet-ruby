# Class: ruby::params
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
class ruby::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['ruby']
  }

  $enabled = true

}

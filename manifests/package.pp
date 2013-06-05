class ruby::package {

    package  { $ruby::packages:
        ensure   => $ruby::ensure,
    }

}

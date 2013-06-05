class ruby::config {

    # do package before config
    Class['ruby::package'] -> Class['ruby::config']

}

node default {

    include apt

    $api_php_version = 7.2

    $packages = [
      "wget",
      "build-essential",
      "php${api_php_version}-cli",
      "php${api_php_version}-curl",
      "php${api_php_version}-xml",
      "php${api_php_version}-zip",
      "php${api_php_version}-gd",
      "php${api_php_version}-mysql",
      "php${api_php_version}-mbstring",
      "php${api_php_version}-bcmath",
      "php${api_php_version}-fpm",
      "php${api_php_version}-imap",
      "php${api_php_version}-intl",
      "php${api_php_version}-soap",
      "nginx"
    ]

    apt::ppa { "ppa:ondrej/php": } ->
    apt::ppa { "ppa:nginx/stable": } ->
    package { $packages:
        ensure => "installed"
    } ->
    class { "provisioning":
    } ->
    service { "nginx":
        ensure => running,
        subscribe => File["/etc/nginx/sites-available/default"],
    }
}

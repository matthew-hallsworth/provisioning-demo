## Built in PHP webserver

```
composer install
php bin/console server:start
```

Then load http://localhost:8000 and see a lucky number

## Puppet/Vagrant

```
cp Vagrantfile.puppet Vagrantfile
vagrant destroy -f; vagrant up
```

You'll notice that this doesn't work. It's a work in progress.

## Ansible/Vagrant

```
cp Vagrantfile.ansible Vagrantfile
vagrant destroy -f; vagrant up
```

Then load http://localhost:8000 and see a lucky number! It works!

## Testing the local install

```
composer install
php bin/console server:start
```

Then load http://localhost:8000 and see a lucky number

## Puppet/Vagrant

```
cp Vagrantfile.puppet Vagrantfile
vagrant up
```

You'll notice that this doesn't work. It's a work in progress.



# Admin prototyping kit

[![Build Status](https://travis-ci.org/EnvironmentAgency/admin-prototype-kit.svg)](https://travis-ci.org/EnvironmentAgency/admin-prototype-kit)

Based on a stripped down Rails 4.2 application, this kit provides a way to create high-res prototypes based on the [GOV.UK admin template](https://github.com/alphagov/govuk_admin_template) that users can interact with, as quickly and simply as possible.

## Use in production

In a word, **don't**. This kit has been designed for prototyping, not production code. Take only the lessons learned and your designs into a production system.

## Versions

The project is currently using Ruby version 2.2.2 and Rails 4.2.0.

## Obtain the source

You'll need [git](https://git-scm.com/) to work with the source code. Once you have it clone the repository:

```bash
git clone https://github.com/EnvironmentAgency/admin-prototype-kit.git
```

This will copy the project into a new directory called **admin-prototype-kit** created in the folder you ran the command from. We refer to this as the *working directory*.

Drop into the working directory using `cd admin-prototype-kit` before attempting any of the steps below.

## Installation *(local)*

You will need to ensure you have version 2.2.2 of Ruby available, and we would suggest you manage your ruby installations with a tool like [rvm](https://rvm.io/) or [rbenv](https://github.com/sstephenson/rbenv).

### Application gems *(local)*

You will then also need to install the [bundler](http://bundler.io/) gem.

```bash
gem install bundler
```

When it finishes install the application gems using:

```bash
bundle install
```

### Start the service *(local)*

To start the service locally simply run;

```bash
. bin/startup.sh
```

You can then access it at http://0.0.0.0:3001

### Stop the service *(local)*

To stop the service use ```ctrl+c```

## Installation *(vagrant)*

If the above instructions are new to you, or you would prefer to just be given a ready made environment then you can make use of the fact we have enabled [Vagrant](https://www.vagrantup.com/) in the project.

Vagrant is a tool that enables quick and simple setup of development environments, generally using virtual machines (though other containers are also supported). The simplest way to get up and running is to first install [VirtualBox](https://www.virtualbox.org/), then install Vagrant.

Back in the working directory run the following command:

```bash
vagrant up
```

This will take awhile the first time it runs as it needs to build the virtual machine from scratch. Once done it will remain running in the background. You can access the machine using ```vagrant ssh``` if you need to.

### Start the service *(vagrant)*

To start both the vagrant box and the service simply run;

```bash
. bin/vagrant_startup.sh
```

You can then access it at http://0.0.0.0:3001

### Stop the service *(vagrant)*

To stop the service use ```vagrant halt```

## Working with the code

Irrespective of whether you installed it locally or are using the Vagrant box, you will work with the code in the same way.

Edit the code using your preferred editor. Generally changes to any files in the [app/](https://github.com/EnvironmentAgency/admin-prototype-kit/tree/master/app) won't require you to restart rails, but any changes in [config/](https://github.com/EnvironmentAgency/admin-prototype-kit/tree/master/config) will. (If you are working with any of the other folders we assume you know what you are doing :smiley:!)

## Examples

We have included examples on how to add new pages to the kit, and how to use the underlying Rails engine to add additional functionality. Both the example and the how to instructions are part of the kit. Links to the examples can be found on the home page.

Currently the examples cover the following;

- [Static pages](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example1/static.html.erb)
- [Dynamic routing](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example2/dynamic_routing.html.erb)
- [Read records](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example3/read_record.html.erb)
- [Form options](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example4/forms.html.erb)

## Protecting your prototypes

The kit contains a simple method to restrict access to your site to only those people you want to see it. Please note the method is intended to be as simple and maintainable as possible, but should not be considered as *secure*. If you truly need to protect your work please do not rely on this method.

### Enabling the key

By default when the kit is running anyone who knows the url can access the site and the pages within. If however you want to restrict access you simply need to create an [environment variable](https://en.wikipedia.org/wiki/Environment_variable) within the [OS](https://en.wikipedia.org/wiki/Operating_system) you're running the kit on. For example;

```bash
export ACCESS_KEY='let-me-in'
```

It must be named `ACCESS_KEY` and contain a value, however the value can be whatever you want. From then on whenever someone requests a page without supplying the access key they will instead see the [public/private.html.erb](https://github.com/EnvironmentAgency/admin-prototype-kit/tree/master/public) page.

### Providing the key

Having set the key you should then give it to only those users permitted to access the site. In order to supply it they should use a URL like this **mysite.co.uk?access_key=let-me-in** when first accessing the site. As long as it matches the kit will then create a permanent cookie with the key value in, so any subsequent requests and visits to the site will no longer need the argument specified.

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3

The following attribution statement MUST be cited in your products and applications when using this information.

>Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.

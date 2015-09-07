# Admin prototyping kit

[![Build Status](https://travis-ci.org/EnvironmentAgency/admin-prototype-kit.svg)](https://travis-ci.org/EnvironmentAgency/admin-prototype-kit)

Based on a stripped down Rails 4.2 application, this kit provides a way to create high-res prototypes based on the [GOV.UK admin template](https://github.com/alphagov/govuk_admin_template) that users can interact with, as quickly and simply as possible.

## Use in production

In a word, **don't**. This kit has been designed for prototyping, not production code. Take only the lessons learned and your designs into a production system.

## Installation

Fork or clone the project locally

`cd` into the project and install dependencies as usual.

```bash
bundle install
```

## Start the service

To start the service locally simply run;

```bash
./startup.sh
```

You can then access it at http://localhost:3001

## Examples

We have included examples on how to add new pages to the kit, and how to use the underlying Rails engine to add additional functionality. Both the example and the how to instructions are part of the kit. Links to the examples can be found on the home page.

Currently the examples cover the following;

- [Static pages](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example1/static.html.erb)
- [Dynamic routing](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example2/dynamic_routing.html.erb)
- [Read records](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example3/read_record.html.erb)
- [Form options](https://github.com/EnvironmentAgency/admin-prototype-kit/blob/master/app/views/pages/example4/forms.html.erb)

## Layout

As well as static pages, you can use content_for hooks to inject content into in the GDS template.

For example:

```HTML+ERB
<% content_for :navbar_right do %>
   <div>Some text for over there</div>
<% end %>

<% content_for :navbar_items do %>
 <li>
   <a href="#">navbar_item</a>
 </li>
<% end %>
```

See the [GOV.UK admin template README](https://github.com/alphagov/govuk_admin_template) for details of available content blocks.

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

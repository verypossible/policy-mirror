# Policy Mirror
====

## Ruby version

The current ruby development version is 2.3.1.

## System dependencies

### Mac

* ruby 2.3.1
* bundler
* postgreSQL

## Configuration

* Visit the Shared-Development Configs folder in 1Password
* Copy the contents of policy_mirror to your local .env

For all environment variables, you can set them to an empty value or remove them if you would like to disable their behaviour.

### `APPLICATION_ENVIRONMENT`

When you need to write code to sense if the environment is one of (development,
test, staging, or production), then you should use this env var instead of
`RACK_ENV` or `RAILS_ENV`.

### `APPLICATION_HOST`

If set, this will setup rack canonical host to redirect to it no matter what was requested. For example:

- `APPLICATION_HOST="domain.com"`
- Both domain.com and www.domain.com point at the same server.
- www.domain.com will redirect to domain.com
- domain.com will just work

### `BULLET_SHOW_ALERT`

If set then the bullet gem will post a javascript alert for each issue it finds (e.g. N+1 queries). This brings a higher visibility than the show footer option.

### `BULLET_SHOW_FOOTER`

If set then the bullet gem will add a footer to your page if any issues are found (e.g. N+1 queries).

### `GLOBAL_POSTGRES`

If set to anything, then `bin/init`, `bin/up`, and `bin/down` will not manage postgres.

#### Global

If you want this to always be the case, then add `GLOBAL_POSTGRES=1` to your `.bashrc` or `.zsh_env`.

#### Project

If you would like this to be true on a project by project basis, then add it to a `.envrc` and use [direnv](http://direnv.net/).

#### Single Command

You can test this with any of the bin scripts by prepending the run like so: `GLOBAL_POSTGRES=1 bin/init`

### `OPTIMIZELY_URL`

If the site uses Optimizely, then set the `OPTIMIZELY_URL` environment variable
to the javascript url to include.

### `PROFILE_RSPEC`

Set this to the number of profile examples you'd like to see whenever RSpec is ran. (Default: 0)

### `ROLLBAR_CLIENT_ACCESS_TOKEN`

The client-side access token from the Rollbar project.

### `ROLLBAR_SERVER_ACCESS_TOKEN`

The server-side access token from the Rollbar project.

## Setup

* Run: `bin/init`

## Run Server

* Run: `bin/up`

## Stop Server

All you need to stop the server is to type ctrl-c while in the terminal that you
started the server with `bin/up`.

If the server crashes and you want to make sure that everything stopped
correctly, then run `bin/down`

## How to run the test suite

Note: add stuff for rspec bin stub.
* `bin/rspec`

## [Deployment Instructions]

[Deployment Instructions]: https://github.com/spartansystems/spartan/blob/master/docs/Delivery/Continuous_Deployment!.md

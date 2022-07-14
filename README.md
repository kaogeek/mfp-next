<!--
  Title: ก้าวไกล NEXT
  Description: ขีดเขียนเส้นทางใหม่ ก้าวไกลไปด้วยกัน
-->

![CONSUL logo](https://github.com/kaogeek/mfp-next/raw/main/public/mfp-next_logo.jpg)

# ก้าวไกล NEXT

ขีดเขียนเส้นทางใหม่ ก้าวไกลไปด้วยกัน

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

[![Accessibility conformance](https://img.shields.io/badge/accessibility-WAI:AA-green.svg)](https://www.w3.org/WAI/eval/Overview)
[![A11y issues checked with Rocket Validator](https://rocketvalidator.com/badges/checked_with_rocket_validator.svg?url=https://rocketvalidator.com)](https://rocketvalidator.com/opensource)

This is the opensource code repository cloned from CONSUL (https://github.com/consul/consul).

## Configuration for development and test environments

**NOTE**: For more detailed instructions check the [docs](https://docs.consulproject.org)

Prerequisites: install git, Ruby 2.7.6, CMake, pkg-config, shared-mime-info, Node.js and PostgreSQL (>=9.5).

```bash
#bundler
sudo gem install bundler
#cmake
brew install cmake
#pkg-config
brew install pkg-config
#PostgreSQL
brew install postgresql
```
Then, install this project by:

```bash
cd mfp-next
bundle install
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
bin/rake db:create
bin/rake db:migrate
bin/rake db:dev_seed
RAILS_ENV=test rake db:setup
```

Run the app locally:

```bash
bin/rails s
```

Run the tests with:

```bash
bin/rspec
```

You can use the default admin user from the seeds file:

 **user:** admin@consul.dev
 **pass:** 12345678

But for some actions like voting, you will need a verified user, the seeds file also includes one:

 **user:** verified@consul.dev
 **pass:** 12345678

## Configuration for production environments

See [installer](https://github.com/consul/installer)

## License

Code published under AFFERO GPL v3 (see [LICENSE-AGPLv3.txt](LICENSE-AGPLv3.txt))

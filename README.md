# Forecast in Rails

[![Analytics](https://ga-beacon.appspot.com/UA-25165099-7/forecast-rails?flat)](https://github.com/leompeters/forecast-rails "Forecast in Rails")

This repo is an example on how to create a Ruby on Rails app to consume
a forecast API.

<!-- _This web app is live at [*Forecast Rails*](http://forecast-rails.herokuapp.com)._ -->  


## Quick Start

Taking the assumption that we only want to call an API to show the forecast
data, I am creating a rails app with the below command to skip database, mailer,
and default test framework (I will bw using RSpec instead of MiniTest).

1.  Create a new rails app, skipping database, mailer, and default test framework.

    ```sh
    $ rails new forecast-rails -O -M -T
    ```

2.  Setup your project gems/libraries environment installing [RVM][].

    ```sh
    $ rvm install 2.7.1
    $ rvm use 2.7.1@forecast-rails --create
    ```

3.  Install libraries.

    ```sh
    $ bundle install
    $ yarn install
    ```

4.  **Run the server**

    ```sh
    $ rails s
    ```


## Dependencies

+   **Yarn**: instructions on
    [yarnpkg.com/en/docs/install](https://yarnpkg.com/en/docs/install).

+   **Stylelint**: check the [website](https://stylelint.io).

    ```sh
    $ yarn add --dev stylelint stylelint-config-standard stylelint-scss
    ```

+   **Nokogiri**: for issues see more in this
    [link](http://www.nokogiri.org/tutorials/installing_nokogiri.html#using_nonstandard_libxml2___libxslt_installations).

    ```sh
    $ brew update
    $ xcode-select --install
    $ brew install libiconv
    $ brew link libiconv
    $ gem install nokogiri -- --with-iconv-dir=/usr/local/Cellar/libiconv/1.14
    ```

    > _Source: <https://stackoverflow.com/a/6163052/2334082>_

    OR

    ```sh
    $ gem install nokogiri -- \
        --use-system-libraries \
        --with-xml2-config=/usr/bin/xml2-config \
        --with-xslt-config=/usr/bin/xslt-config
    ```

    > _Source: <https://stackoverflow.com/a/28593132/2334082>_

+   **Credentials/Secrets**

    You can use this example of **`./config/credentials.yml.enc`** running
    `bin/rails credentials:show`.
    Be sure to get the `secret_key_base` running `$ rake secret`:
    
    > See more details in <https://github.com/rails/rails/pull/30067> and
    > **<https://medium.com/cedarcode/rails-5-2-credentials-9b3324851336>**.


## Tests

Tests are based in [RSpec][] tool.

The scripts with desired contexts are at `./spec/models` and `./spec/features` folder.


## Git Workflow

Please, use **git-flow** branch model workflow to new features, hot-fixes, and releases:

+   <http://danielkummer.github.io/git-flow-cheatsheet>
+   <http://nvie.com/posts/a-successful-git-branching-model>
+   <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>


### API

This project is using some external APIs and to read and test them,
we can use the files in `/doc/api` or in
[Postman](https://web.postman.co/collections/123456-12345678-1234-ab34-12cd-abcdef123456?workspace=1234abcd-12cd-ab34-56ef-abcdef123456).


## What have you get?

Things we have covered:

+   Ruby version 2.7.1;
+   Basic customized Rails app;
+   System dependencies;
+   Environment Configuration;
+   How to run the test suite;
+   Deployment instructions.


## Contributors

This is a personal project example, so we must not have a long list of
contributors. Check it out here:

<https://github.com/leompeters/forecast-rails/graphs/contributors>


## License

Forecast Rails is released under the [MIT License](https://opensource.org/licenses/MIT).


[RVM]: http://rvm.io "rvm.io"
[RSpec]: https://rspec.info/ "RSpec"

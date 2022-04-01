# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version -> 2.6.3

* Database creation
  `rake db:setup`

* Database initialization
  `rake db:migrate`

* How to run the test suite
  `bin/rails test -b ./test/models/wrapper_test.rb`

* Description
  This repo having a wrap method inside wrapper class, by passing string and column number as params inside method, it retuns the same string with inserted new line tag after every column number words

  Example:
  `text = "This is the example of wrapper class wrap method functionality"
   Wrapper.wrap(text, 5)
   This is the example of\nwrapper class wrap method functionality\n`
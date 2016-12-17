# Epicodus Ruby Week 4 Solo Project

#### By Chris Clifford, 12/16/2016

## Description

This app allows the user to create stores and add shoes

##Specifications

* Stores page displays a list of stores.
  * The user can add a store to the list
* Users can add shoes to the shoes page
* Users can update and delete stores
* Users can add multiple shoes to a store and shoes can belong to multiple stores

## Setup/Installation Requirements

* Clone this repo: `git clone https://github.com/c1iff/shoe_distribution
* Change to the repo directory: `cd {repo}`
* Install gems: `bundle install --path vendor/bundle`
* Install the database: *instruction below*
* Run the app: `ruby app.rb`

## Database Setup Instructions

* install and start postgres
* run: `bundle exec rake db:create`
* run: `bundle exec rake db:migrate`
* run: `bundle exec rake db:test:prepare`

## Technologies Used

* HTML
* CSS
* Ruby
* Sinatra
* Capybara
* Active Record
* Materialize

### License

MIT License

Copyright (c) 2016 Chris Clifford

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
Copyright (c) 2016 Chris Clifford

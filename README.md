# Pigfish Investor Ingestor

This is a simple web application to faciliate ingestion of investor data. It
uses Ruby on Rails and provides a jarringly beatiful, state of the art user
interface.

## Getting Started
### Dependencies:
* Ruby runtime version 3.1.1
* SQLite RDBMS
* RubyGems packaging system

### Configuration
Run `bin/setup` to install runtime dependencies:
* Installs bundler for gem dependency management
* Uses bundler to install required gems
* Prepares SQLite database

### Tests
This application uses RSpec for testing.
Run `bundle exec rspec` to execute all specs.

### Using the application
After running `bin/setup`, run `bin/rails server` to start the application.
Open a web browser and navigate to http://localhost:3000.

## Development Notes

The development of this application was time boxed to 2 hours. I went a bit
off script and decided to start with user authentication as there's trusted,
open source code (the clearance gem from Thoughtbot) that makes this trivial.

In the 2 hours allotted, I was able to accomplish the following:
* Added an authenticated user model with functioning sign-up and sign-in
  experiences
* An investor model, belonging to a user, that captures the required attributes
  for a given investor
* A form for capturing investors and associating with the authenticated user

While the functionality implemented is rudimentary, one can sign-up, sign-in,
and add investors. Given more time, I'd like to accomplish the following:
* A UI for editing and viewing investors
* Associating mutliple documents with an investor and a more robust file
  management experience
* An onboarding workflow for users/partners to allow for internal vetting of
  users such that a random party with a URL can't start filling the
  disk with nonsense
* While it's highly unlikely, it's possible that the UI could use some polish

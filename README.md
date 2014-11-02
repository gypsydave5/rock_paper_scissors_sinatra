| [*Makers Academy*](http://www.makersacademy.com) | Week 5 |
| ------------------------------------------------ | ------ |

#Rock, Paper, Scissors, Sinatra (and Dino)
_A classy game for solid players_
-------------------------------------------------------------

!['Title Page'](http://gypsydave5.github.io/images/readme/rpssd-1.png)

####Overview
An implementation of [Rock-paper-scissors-lizard-Spock], only with Sinatra and
Dino making an appearance. As is only fair if we're using [Sinatra](http://www.sinatrarb.com/)
to run ther server. We've not learned about databases by this point so - no
database. We were challenged additionally with integrating the app with [New
Relic]'s analytics software.

I used this oportunity to experiment with [Twitter Bootstrap] to build the
front-end.

Technologies Used
-----------------

+ Production
    - [Boostrap]
    - [CSS]
    - [ERB]
    - [HTML]
    - [Ruby]
    - [Sinatra]

+ Testing
  - [Capybara]
  - [Cucumber]
  - [RSpec]

####Installation

Clone the repo with the following command (you will need to install [Git]):
```shell
$ git clone git@github.com:gypsydave5/rock_paper_scissors_sinatra.git
```

Change into the project directory
```shell
$ cd rock_paper_scissors_sinatra
```

Run Bundler to load the required gems (you will need an installation of [Ruby] 2.1.0 and the [Bundler] gem )
```shell
$ bundle install
```

Then run the server using either `rackup` or, my preference, [Shotgun]:
```shell
$ shotgun
```

Send your browser to `http://127.0.0.1:9393` to use the app.

####Testing

The unit tests may be run using [RSpec]:

```shell
$ rspec
```

The integration tests may be run using [Cucumber]:
```shell
$ cucumber
```

#### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[Haml]: http://haml.info/
[Yo]: http://www.justyo.co/
[Bookmark Manager]: https://github.com/gypsydave5/bookmark-manager
[Cucumber]: http://cukes.info/
[Timecop]: https://github.com/travisjeffery/timecop
[bcrypt]: https://github.com/codahale/bcrypt-ruby
[CSS]: https://developer.mozilla.org/en-US/docs/Web/CSS
[Data Mapper]: http://datamapper.org/
[dotenv]: https://github.com/bkeepers/dotenv
[ERB]: http://www.stuartellis.eu/articles/erb/#other-resources
[HTML]: https://developer.mozilla.org/en-US/docs/Web/HTML
[Mailgun]: https://github.com/bkeepers/dotenv
[PostgreSQL]: http://www.postgresql.org/
[rack flash]: https://github.com/nakajima/rack-flash
[Ruby]: https://www.ruby-lang.org/en/
[Sinatra]: http://www.sinatrarb.com/
[Capybara]: http://jnicklas.github.io/capybara/
[Database cleaner]: https://github.com/DatabaseCleaner/database_cleaner
[RSpec]: http://rspec.info/
[Git]: http://git-scm.com/
[Bundler]: http://bundler.io/
[shotgun]: https://github.com/rtomayko/shotgun
[Rock-paper-scissors-lizard-Spock]: http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock
[Twitter Bootstrap]: http://getbootstrap.com/
[Bootstrap]: http://getbootstrap.com/
[New Relic]: https://newrelic.com/

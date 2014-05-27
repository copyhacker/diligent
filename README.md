diligent
========

[![Build Status](https://secure.travis-ci.org/copyhacker/diligent.png?branch=master)](https://travis-ci.org/copyhacker/diligent)

Comb your gems for licensing info and collate it nicely for the lawyers.


# Quick Start

1. `gem install diligent`
2. `diligent --help`


# Examples

The following examples were run in the `diligent` project root.

## JSON (default)

`diligent list`

`diligent list --format json --output diligent.json`

Returns:

```
{"awesome_print":{"version":"1.2.0","author":"Michael Dvorkin","summary":"Pretty print Ruby objects with proper indentation and colors","description":"Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure. Supports custom object formatting via plugins","license":null,"homepage":"http://github.com/michaeldv/awesome_print"},"bundler":{"version":"1.5.3","author":"André Arko","summary":"The best way to manage your application's dependencies","description":"Bundler manages an application's dependencies through its entire life, across many machines, systematically and repeatably","license":"MIT","homepage":"http://bundler.io"},"timers":{"version":"1.1.0","author":"Tony Arcieri","summary":"Schedule procs to run after a certain time, or at periodic intervals, using any API that accepts a timeout","description":"Pure Ruby one-shot and periodic timers","license":null,"homepage":"https://github.com/tarcieri/timers"},"celluloid":{"version":"0.15.2","author":"Tony Arcieri","summary":"Actor-based concurrent object framework for Ruby","description":"Celluloid enables people to build concurrent programs out of concurrent objects just as easily as they build sequential programs out of sequential objects","license":"MIT","homepage":"https://github.com/celluloid/celluloid"},"nio4r":{"version":"1.0.0","author":"Tony Arcieri","summary":"NIO provides a high performance selector API for monitoring IO objects","description":"New IO for Ruby","license":null,"homepage":"https://github.com/celluloid/nio4r"},"celluloid-io":{"version":"0.15.0","author":"Tony Arcieri","summary":"Celluloid::IO allows you to monitor multiple IO objects within a Celluloid actor","description":"Evented IO for Celluloid actors","license":"MIT","homepage":"http://github.com/celluloid/celluloid-io"},"coderay":{"version":"1.1.0","author":"Kornelius Kalnbach","summary":"Fast syntax highlighting for selected languages.","description":"Fast and easy syntax highlighting for selected languages, written in Ruby. Comes with RedCloth integration and LOC counter.","license":"MIT","homepage":"http://coderay.rubychan.de"},"diff-lcs":{"version":"1.2.5","author":"Austin Ziegler","summary":"Diff::LCS computes the difference between two Enumerable sequences using the McIlroy-Hunt longest common subsequence (LCS) algorithm","description":"Diff::LCS computes the difference between two Enumerable sequences using the\nMcIlroy-Hunt longest common subsequence (LCS) algorithm. It includes utilities\nto create a simple HTML diff output format and a standard diff-like tool.\n\nThis is release 1.2.4, fixing a bug introduced after diff-lcs 1.1.3 that did\nnot properly prune common sequences at the beginning of a comparison set.\nThanks to Paul Kunysch for fixing this issue.\n\nCoincident with the release of diff-lcs 1.2.3, we reported an issue with\nRubinius in 1.9 mode\n({rubinius/rubinius#2268}[https://github.com/rubinius/rubinius/issues/2268]).\nWe are happy to report that this issue has been resolved.","license":"MIT","homepage":"http://diff-lcs.rubyforge.org/"},"thor":{"version":"0.19.1","author":"Yehuda Katz","summary":"Thor is a toolkit for building powerful command-line interfaces.","description":"Thor is a toolkit for building powerful command-line interfaces.","license":"MIT","homepage":"http://whatisthor.com/"},"diligent":{"version":"0.1.0","author":"Jonathan Vaught","summary":"Comb your gems for licensing info and collate it nicely for the lawyers.","description":"Comb your gems for licensing info and collate it nicely for the lawyers.","license":"MIT","homepage":"https://github.com/copyhacker/diligent"},"ffi":{"version":"1.9.3","author":"Wayne Meissner","summary":"Ruby FFI","description":"Ruby FFI library","license":"BSD","homepage":"http://wiki.github.com/ffi/ffi"},"formatador":{"version":"0.2.4","author":"geemus (Wesley Beary)","summary":"Ruby STDOUT text formatting","description":"STDOUT text formatting","license":null,"homepage":"http://github.com/geemus/formatador"},"rb-fsevent":{"version":"0.9.4","author":"Thibaud Guillaume-Gentil","summary":"Very simple & usable FSEvents API","description":"FSEvents API with Signals catching (without RubyCocoa)","license":"MIT","homepage":"http://rubygems.org/gems/rb-fsevent"},"rb-inotify":{"version":"0.9.3","author":"Nathan Weizenbaum","summary":"A Ruby wrapper for Linux's inotify, using FFI","description":"A Ruby wrapper for Linux's inotify, using FFI","license":null,"homepage":"http://github.com/nex3/rb-inotify"},"listen":{"version":"2.7.1","author":"Thibaud Guillaume-Gentil","summary":"Listen to file modifications","description":"The Listen gem listens to file modifications and notifies you about the changes. Works everywhere!","license":"MIT","homepage":"https://github.com/guard/listen"},"lumberjack":{"version":"1.0.5","author":"Brian Durand","summary":"A simple, powerful, and very fast logging utility that can be a drop in replacement for Logger or ActiveSupport::BufferedLogger.","description":"A simple, powerful, and very fast logging utility that can be a drop in replacement for Logger or ActiveSupport::BufferedLogger. Provides support for automatically rolling log files even with multiple processes writing the same log file.","license":"MIT","homepage":"http://github.com/bdurand/lumberjack"},"method_source":{"version":"0.8.2","author":"John Mair (banisterfiend)","summary":"retrieve the sourcecode for a method","description":"retrieve the sourcecode for a method","license":null,"homepage":"http://banisterfiend.wordpress.com"},"slop":{"version":"3.5.0","author":"Lee Jarvis","summary":"Simple Lightweight Option Parsing","description":"A simple DSL for gathering options and parsing the command line","license":"MIT","homepage":"http://github.com/leejarvis/slop"},"pry":{"version":"0.9.12.6","author":"John Mair (banisterfiend)","summary":"An IRB alternative and runtime developer console","description":"An IRB alternative and runtime developer console","license":null,"homepage":"http://pry.github.com"},"guard":{"version":"2.6.0","author":"Thibaud Guillaume-Gentil","summary":"Guard keeps an eye on your file modifications","description":"Guard is a command line tool to easily handle events on file system modifications.","license":"MIT","homepage":"http://guardgem.org"},"rspec-support":{"version":"3.0.0.beta2","author":"David Chelimsky","summary":"rspec-support-3.0.0.beta2","description":"Support utilities for RSpec gems","license":"MIT","homepage":"https://github.com/rspec/rspec-support"},"rspec-core":{"version":"3.0.0.beta2","author":"Steven Baker","summary":"rspec-core-3.0.0.beta2","description":"BDD for Ruby. RSpec runner and example groups.","license":"MIT","homepage":"http://github.com/rspec/rspec-core"},"rspec-expectations":{"version":"3.0.0.beta2","author":"Steven Baker","summary":"rspec-expectations-3.0.0.beta2","description":"rspec-expectations provides a simple, readable API to express expected outcomes of a code example.","license":"MIT","homepage":"http://github.com/rspec/rspec-expectations"},"rspec-mocks":{"version":"3.0.0.beta2","author":"Steven Baker","summary":"rspec-mocks-3.0.0.beta2","description":"RSpec's 'test double' framework, with support for stubbing and mocking","license":"MIT","homepage":"http://github.com/rspec/rspec-mocks"},"rspec":{"version":"3.0.0.beta2","author":"Steven Baker","summary":"rspec-3.0.0.beta2","description":"BDD for Ruby","license":"MIT","homepage":"http://github.com/rspec"},"guard-rspec":{"version":"4.2.8","author":"Thibaud Guillaume-Gentil","summary":"Guard gem for RSpec","description":"Guard::RSpec automatically run your specs (much like autotest).","license":"MIT","homepage":"https://rubygems.org/gems/guard-rspec"},"mini_portile":{"version":"0.5.3","author":"Luis Lavena","summary":"Simplistic port-like solution for developers","description":"Simplistic port-like solution for developers. It provides a standard and simplified way to compile against dependency libraries without messing up your system.","license":"MIT","homepage":"http://github.com/luislavena/mini_portile"},"nokogiri":{"version":"1.6.1","author":"Aaron Patterson","summary":"Nokogiri (é¸) is an HTML, XML, SAX, and Reader parser","description":"Nokogiri (é¸) is an HTML, XML, SAX, and Reader parser.  Among Nokogiri's\nmany features is the ability to search documents via XPath or CSS3 selectors.\n\nXML is like violence - if it doesnât solve your problems, you are not using\nenough of it.","license":"MIT","homepage":"http://nokogiri.org"}}
```

**Note:** the JSON output will always be returned to STDOUT regardless of whether you
specify an output file.


## CSV

Output to `diligent.csv`:

`diligent list --format csv`

Output to `myfile.csv`:

`diligent list --format csv --outfile myfile.csv`

## HTML

Nice clean formatted HTML with links to license text:

`diligent list --format html`

![HTML Output](https://dl.dropboxusercontent.com/u/117390/diligent_html.jpg)

# TODO

- [x] Command line or rake task
- [x] Run and parse `bundle list`
- [x] Hit rubygems and/or GitHub for info on each gem
- [x] Pull all that into a hash: name, version, owner, license type
- [x] Link to license text
- [x] Output options
  - [x] JSON
  - [x] HTML
  - [x] CSV
- [x] Documentation

# Author

- [Jonathan Vaught](http://github.com/copyhacker)

# Contributors

- [Brian Nelson](http://github.com/briannelsondesign)

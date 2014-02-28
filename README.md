Mad-lib
=========
A script to replace text in the format: `{CAPITAL}` with a user defined string.

Installation
------------

execute:

    $ bundle install

Usage
--------

Create a text-file with the format `{CAPITAL}` for the strings you would like replaced.

```
There once lived a {NOUN} who lived in a {PLACE}
```

Then load via the CLI

```
./adlib.rb FILENAME.txt
```

You will then be prompted to choose words to replace each `{VARIABLE}`

```
What would you like to replace {NOUN} with?
```

###Output Options
There are three ways you can output the interpolated text.

1. Print modified text to the command line
2. Overwrite original file
3. Copy to Clipboard

You must uncomment the lines at the end of the file for the output option you wish to use. The default option is to copy the interpolated text to the clipboard.

Contributing
------------

1. Fork it ( http://github.com/the4dpatrick/mad-libs )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request¯

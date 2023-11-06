MimeMagic is a library to detect the mime type of a file by extension or by content. It uses the mime database
from the package shared-mime-info.

Dependencies
============
macOS users can install the database via Homebrew, and then set the environment variable
`FREEDESKTOP_MIME_TYPES_PATH` to that path. Once that has been done the gem should install successfully.

1. `brew install shared-mime-info`
2. FREEDESKTOP_MIME_TYPES_PATH="" gem install mimemagic

Usage
=====

```ruby
require 'mimemagic'
MimeMagic.by_extension('html').text?
MimeMagic.by_extension('.html').child_of? 'text/plain'
MimeMagic.by_path('filename.txt')
MimeMagic.by_magic(File.open('test.html'))
# etc...
```

You can add your own magic with `MimeMagic.add`.

Tests
=====

```console
$ bundle install

$ bundle exec rake test
```

Authors
=======

* Daniel Mendler
* Jon Wood
* [MimeMagic Contributors](https://github.com/mimemagicrb/mimemagic/graphs/contributors)

LICENSE
=======

{file:LICENSE MIT}

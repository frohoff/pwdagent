PwdAgent
=========
A barebones utility to hand out a password over an HTTP or raw TCP listener. WARNING: for use in local application development only.

Installation & Setup
------------
using git, bundle, and rake (assumes they've already been installed; may require root/sudo depending on rubygems config)

```bash
$ git clone [git-url]
$ cd [project]
$ bundle install
$ bundle exec rake install
```

OR using out-of-band (i.e. email) distributed gem binary:

```bash
$ gem install [project]-[version].gem
```

OR using https://github.com/rdp/specific_install:

```bash 
# only needed the first time
$ gem install specific_install

$ gem specific_install -l [git-url]
```

Usage
---------
```bash
$ pwdagent -h
usage: /home/cfrohoff/bin/pwdagent [options]
    -h, --help
    -v, --verbose
    -t, --tcp       use raw TCP connection instead of HTTP
    -p, --port      TCP port to listen on
    -H, --hostname  TCP hostname to listen on
    -s, --secret    secret string to require before sending password
```

Example Usage
---------
```bash
$ pwdagent # respond to http://localhost:{ephemeral-port}/ 
$ pwdagent -p 6666 # respond on http://localhost:6666/
$ pwdagent -p 6666 -s foobar # respond on http://localhost:6666/foobar/
$ pwdagent -t # bind on ephemeral
$ pwdagent -t -p 6666 # bind on port 6666
$ pwdagent -t -p 6666 -s foobar # bind on port 6666 with secret of foobar
```

Development
----------------
```bash
$ bundle install # install dependencies

$ bundle exec ruby -Ilib bin/pwdagent [options] # run from exploded dir

$ gem build pwdagent.gemspec # build gem file
```

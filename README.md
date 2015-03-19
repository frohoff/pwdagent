PwdAgent
=========
A barebones utility to hand out a password over a TCP listener. WARNING: for use in local application development only.

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
    -p, --port      TCP port to listen on
    -H, --hostname  TCP hostname to listen on
    -s, --secret    secret string to require before sending password
```

Example Usage
---------
```bash
$ pwdagent # bind on ephemeral
$ pwdagent -p 6666 # bind on port 6666
$ pwdagent -p 6666 -s foobar # bind on port 6666 with secret of foobar
```

Development
----------------
```bash
$ bundle install # install dependencies

$ bundle exec ruby -Ilib bin/pwdagent [options] # run from exploded dir

$ gem build pwdagent.gemspec # build gem file
```

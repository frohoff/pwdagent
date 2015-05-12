PwdAgent
=========
A barebones utility to cache a password in memory and hand it out over HTTP or raw TCP. WARNING: for use in local application development only.

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
$ pwdagent -p 6666
Password: [supersecretpassword]

$ curl localhost:6666
supersecretpassword

$ pwdagent -p 6666 -s opensesame
Password: [supersecretpassword]
listening on http://127.0.0.1:6666/opensesame

$ curl localhost:6666/opensesame
supersecretpassword

$ pwdagent -t -p 6666
Password: [supersecretpassword]

$ nc localhost 6666
supersecretpassword

pwdagent -t -p 6666
Password: [supersecretpassword]
listening on 127.0.0.1:6666 with secret 'opensesame'

$ echo -n "opensesame" | nc localhost 6666
supersecretpassword
```

Development
----------------
```bash
$ bundle install # install dependencies

$ bundle exec ruby -Ilib bin/pwdagent [options] # run from exploded dir

$ gem build pwdagent.gemspec # build gem file
```

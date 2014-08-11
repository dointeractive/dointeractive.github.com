Requirements
===

- vagrant-berkshelf plugin v.1.2.0
- vagrant-omnibus plugin v1.1.0

Local installation
===

```bash
git clone --recursive https://github.com/dointeractive/dointeractive.github.com
# for already initialized repo use
# git submodule update --init --recursive
vagrant up
vagrant ssh
cd /vagrant
bundle
bundle exec jekyll serve --watch
```

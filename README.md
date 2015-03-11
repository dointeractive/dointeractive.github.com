Local installation
===

Jekyll server is started by vagrant provision so all you have to do is just run `vagrant up`.  
Or if you halted your machine you could just run `vagrant up --provision` to start a jekyll or you can always start it manually:
```bash
vagrant up
vagrant ssh
docker start jekyll
```

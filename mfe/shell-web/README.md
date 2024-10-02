# ShellWeb

```
npm i @angular-architects/module-federation
ng g @angular-architects/module-federation:init --project shell-web --port=4200 --type host

ng serve --port=4200 --host=127.0.0.1 --disable-host-check
```

#### docker 
```
docker build -t shell-web .
docker run -p 4200:80 --name shell-web shell-web
```
# hello-world-python

```bash
$ docker build -t docbuc/hello-world-python .
$ docker run -d -P --name hello-world docbuc/hello-world-python
$ docker port hello-world

  8080/tcp -> 0.0.0.0:32772
```

Jetzt http://0.0.0.0:32772/ im Browser öffnen.

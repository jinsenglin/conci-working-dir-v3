# Install

See https://concourse.ci/vagrant.html

# Launch

```bash
vagrant up
```

# Demo

```bash
git clone https://github.com/jinsenglin/conci-working-dir-v3.git
cd conci-working-dir-v3
vagrant up

export PATH=$PATH:$PWD
cd ci/helpers
bash demo.sh
```

# Demo 2

```bash
git clone https://github.com/jinsenglin/conci-working-dir-v3.git
cd conci-working-dir-v3
vagrant up

export PATH=$PATH:$PWD
cd ci/helpers
bash build-grafana.sh
```

# Demo 3

```
fly -t <target> e -c ci/tasks/play.yml 
```

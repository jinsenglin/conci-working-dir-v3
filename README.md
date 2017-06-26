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

# Use curl (if don't want to use fly)

```
# https://stackoverflow.com/questions/41823945/concourse-trigger-a-job-with-a-http-request
fly set-team -n my-team \
  --basic-auth-username my-user \
  --basic-auth-password my-pass
  
curl -u my-user:my-pass http://<CONCOURSE HOSTNAME>:<CONCOURSE PORT>/api/v1/teams/my-team/auth/token

curl -v --cookie "ATC-Authorization=Bearer VERY LONG TOKEN" \
  http://<CONCOURSE HOSTNAME>:<CONCOURSE PORT>/api/v1/teams/my-team/pipelines/<PIPELINE NAME>/jobs/<JOB NAME>/builds -X POST

curl -H "Authorization: Bearer VERY LONG TOKEN" http://<CONCOURSE HOSTNAME>:<CONCOURSE PORT>/api/v1/workers
```

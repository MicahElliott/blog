# Cryogen Blog

## Create an empty blog
Instructions [here](http://cryogenweb.org/docs/getting-started.html).

## Provisioning
Create a FreeBSD droplet (or some server), and run `ansible-playbook`.

    cd provn
    ansible-playbook site.yaml -b -v

## Workflow
Fire up `lein`.

    lein ring server

It watches and recompiles upon change.

Write some pages and posts.

    cd resources/templates/asc
    $EDITOR posts/2015-07-10-some-blather.asc

Reprovision (push changes to web server).

    ./deploy.zsh  # run ansible-playbook deploy tag

If your generated files have changed, Ansible will deploy the changes.

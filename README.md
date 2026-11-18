# Packer · Ubuntu 14.04 Lab

A historical Packer exercise that builds an Ubuntu 14.04 amd64 VM in VirtualBox, runs shell provisioning and packages it as a Vagrant box. The repository also includes Chef recipes for separate exercises.

## Implementation guide

| File or directory | Purpose |
| --- | --- |
| [`template.json`](template.json) | VirtualBox builder, provisioners and Vagrant packaging |
| [`http/preseed.cfg`](http/preseed.cfg) | Ubuntu installer answers |
| [`scripts`](scripts) | Shell provisioning and image cleanup |
| [`Vagrantfile`](Vagrantfile) | Separate Vagrant configuration |
| [`recipes`](recipes) | Chef exercise recipes |

## Inspect the build definition

```sh
python3 -m json.tool template.json /dev/null
ruby -c Vagrantfile
```

A historical build uses `packer build template.json` and produces `ubuntu-14.04-server-amd64.box`. Set the local ISO path before attempting it. The installer, checksum format, guest access and toolchain are historical, so keep any build isolated. The original README listed MySQL installation as unfinished.

[Implementation history](https://github.com/YauheniShakau/packer/commits/master/)

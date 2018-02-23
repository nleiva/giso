# IOS XR Golden ISO

## Creating a Golden ISO image (GISO)

Get the base image, packages and SMU's in a sinlge folder, along with [gisobuild.py](gisobuild.py) script.

```console
$ ls
gisobuild.py
ncs5500-dpa-4.0.0.1-r6225.CSCvg54541.x86_64.rpm
ncs5500-dpa-4.0.0.2-r6225.CSCvg05355.x86_64.rpm
ncs5500-dpa-4.0.0.3-r6225.CSCvg03646.x86_64.rpm
ncs5500-dpa-fwding-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
ncs5500-dpa-fwding-6.0.0.2-r6225.CSCvh23936.x86_64.rpm
ncs5500-fwding-4.0.0.1-r6225.CSCvh23936.x86_64.rpm
ncs5500-goldenk9-x.iso-6.2.25.version2
ncs5500-infra-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
ncs5500-infra-6.0.0.2-r6225.CSCvf01652.x86_64.rpm
ncs5500-infra-6.0.0.3-r6225.CSCvg33624.x86_64.rpm
ncs5500-infra-6.0.0.4-r6225.CSCvf07773.x86_64.rpm
ncs5500-iosxr-fwding-6.0.0.1-r6225.CSCvg43030.x86_64.rpm
ncs5500-iosxr-fwding-6.0.0.2-r6225.CSCvh25756.x86_64.rpm
ncs5500-isis-2.2.0.0-r6225.x86_64.rpm
ncs5500-k9sec-3.2.0.0-r6225.x86_64.rpm
ncs5500-k9sec-3.2.0.1-r6225.CSCvg20030.x86_64.rpm
ncs5500-mcast-2.2.0.0-r6225.x86_64.rpm
ncs5500-mgbl-3.0.0.0-r6225.x86_64.rpm
ncs5500-mini-x-6.2.25.iso
ncs5500-mpls-2.1.0.0-r6225.x86_64.rpm
ncs5500-mpls-te-rsvp-2.3.0.0-r6225.x86_64.rpm
ncs5500-mpls-te-rsvp-2.3.0.1-r6225.CSCvg13217.x86_64.rpm
ncs5500-os-7.0.0.1-r6225.CSCvg26533.x86_64.rpm
ncs5500-os-7.0.0.2-r6225.CSCvf23036.x86_64.rpm
ncs5500-ospf-2.0.0.0-r6225.x86_64.rpm
ncs5500-os-support-5.0.0.1-r6225.CSCvg05355.x86_64.rpm
ncs5500-os-support-5.0.0.2-r6225.CSCvh23936.x86_64.rpm
router.cfg
```

Then run it, some options:
* i: base image (ncs5500-mini-x-6.2.25.iso)
* r: rmp repo (. = same folder)
* l: label
* c: config file (not used in the example)

```console
$ sudo ./gisobuild.py -i ncs5500-mini-x-6.2.25.iso -r . -l version3
Golden ISO build process starting...

System requirements check [PASS]
/dev/loop0
/dev/loop0

Platform: ncs5500 Version: 6.2.25

Scanning repository [/home/nleiva/giso-6225]...

Building RPM Database...
Total 25 RPM(s) present in the repository path provided in CLI
/dev/loop1

Following XR x86_64 rpm(s) will be used for building Golden ISO:

        (+) ncs5500-os-7.0.0.2-r6225.CSCvf23036.x86_64.rpm
        (+) ncs5500-dpa-fwding-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
        (+) ncs5500-iosxr-fwding-6.0.0.1-r6225.CSCvg43030.x86_64.rpm
        (+) ncs5500-mcast-2.2.0.0-r6225.x86_64.rpm
        (+) ncs5500-dpa-4.0.0.2-r6225.CSCvg05355.x86_64.rpm
        (+) ncs5500-os-support-5.0.0.2-r6225.CSCvh23936.x86_64.rpm
        (+) ncs5500-dpa-fwding-6.0.0.2-r6225.CSCvh23936.x86_64.rpm
        (+) ncs5500-fwding-4.0.0.1-r6225.CSCvh23936.x86_64.rpm
        (+) ncs5500-dpa-4.0.0.3-r6225.CSCvg03646.x86_64.rpm
        (+) ncs5500-mgbl-3.0.0.0-r6225.x86_64.rpm
        (+) ncs5500-infra-6.0.0.2-r6225.CSCvf01652.x86_64.rpm
        (+) ncs5500-infra-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
        (+) ncs5500-infra-6.0.0.4-r6225.CSCvf07773.x86_64.rpm
        (+) ncs5500-infra-6.0.0.3-r6225.CSCvg33624.x86_64.rpm
        (+) ncs5500-k9sec-3.2.0.0-r6225.x86_64.rpm
        (+) ncs5500-mpls-te-rsvp-2.3.0.0-r6225.x86_64.rpm
        (+) ncs5500-iosxr-fwding-6.0.0.2-r6225.CSCvh25756.x86_64.rpm
        (+) ncs5500-k9sec-3.2.0.1-r6225.CSCvg20030.x86_64.rpm
        (+) ncs5500-isis-2.2.0.0-r6225.x86_64.rpm
        (+) ncs5500-mpls-te-rsvp-2.3.0.1-r6225.CSCvg13217.x86_64.rpm
        (+) ncs5500-mpls-2.1.0.0-r6225.x86_64.rpm
        (+) ncs5500-os-support-5.0.0.1-r6225.CSCvg05355.x86_64.rpm
        (+) ncs5500-os-7.0.0.1-r6225.CSCvg26533.x86_64.rpm
        (+) ncs5500-dpa-4.0.0.1-r6225.CSCvg54541.x86_64.rpm
        (+) ncs5500-ospf-2.0.0.0-r6225.x86_64.rpm
/dev/loop2

        ...RPM compatibility check [PASS]

Building Golden ISO...
/dev/loop0
Summary .....

XR rpms:
        ncs5500-os-7.0.0.2-r6225.CSCvf23036.x86_64.rpm
        ncs5500-dpa-fwding-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
        ncs5500-iosxr-fwding-6.0.0.1-r6225.CSCvg43030.x86_64.rpm
        ncs5500-mcast-2.2.0.0-r6225.x86_64.rpm
        ncs5500-dpa-4.0.0.2-r6225.CSCvg05355.x86_64.rpm
        ncs5500-os-support-5.0.0.2-r6225.CSCvh23936.x86_64.rpm
        ncs5500-dpa-fwding-6.0.0.2-r6225.CSCvh23936.x86_64.rpm
        ncs5500-fwding-4.0.0.1-r6225.CSCvh23936.x86_64.rpm
        ncs5500-dpa-4.0.0.3-r6225.CSCvg03646.x86_64.rpm
        ncs5500-mgbl-3.0.0.0-r6225.x86_64.rpm
        ncs5500-infra-6.0.0.2-r6225.CSCvf01652.x86_64.rpm
        ncs5500-infra-6.0.0.1-r6225.CSCvf82318.x86_64.rpm
        ncs5500-infra-6.0.0.4-r6225.CSCvf07773.x86_64.rpm
        ncs5500-infra-6.0.0.3-r6225.CSCvg33624.x86_64.rpm
        ncs5500-k9sec-3.2.0.0-r6225.x86_64.rpm
        ncs5500-mpls-te-rsvp-2.3.0.0-r6225.x86_64.rpm
        ncs5500-iosxr-fwding-6.0.0.2-r6225.CSCvh25756.x86_64.rpm
        ncs5500-k9sec-3.2.0.1-r6225.CSCvg20030.x86_64.rpm
        ncs5500-isis-2.2.0.0-r6225.x86_64.rpm
        ncs5500-mpls-te-rsvp-2.3.0.1-r6225.CSCvg13217.x86_64.rpm
        ncs5500-mpls-2.1.0.0-r6225.x86_64.rpm
        ncs5500-os-support-5.0.0.1-r6225.CSCvg05355.x86_64.rpm
        ncs5500-os-7.0.0.1-r6225.CSCvg26533.x86_64.rpm
        ncs5500-dpa-4.0.0.1-r6225.CSCvg54541.x86_64.rpm
        ncs5500-ospf-2.0.0.0-r6225.x86_64.rpm

        ...Golden ISO creation SUCCESS.

Golden ISO Image Location: /home/nleiva/giso-6225/ncs5500-goldenk9-x.iso-6.2.25.version3

Detail logs: /home/nleiva/giso-6225/Giso_build.log-2018-02-13:22:29:12.846200
```

## Running the script on a Container

If you want to run this in your MAC, an Ubuntu container might come in handy.

1. Have the files ready in the host.

```console
$ pwd
/Users/nleiva/ncs5500
```

```console
$ ls
ncs5500-dpa-4.0.0.1-r6225.CSCvg54541.x86_64.rpm          ncs5500-isis-2.2.0.0-r6225.x86_64.rpm
ncs5500-dpa-4.0.0.2-r6225.CSCvg05355.x86_64.rpm          ncs5500-k9sec-3.2.0.0-r6225.x86_64.rpm
...
```

2. Create the image using the [Dockerfile](Dockerfile) included in the repo. `giso-py` is an arbitrary name for the container image we are building.

`docker build -t giso-py .`

3. Run and connect to the container.

`docker run --privileged=true -v /Users/nleiva/ncs5500:/ncs5500 -i -t --rm giso-py /bin/bash`

* Mount the directory with the files: `-v /host/directory:/container/directory`
* Access to Loop devices: `--privileged=true`
* Assigns a pseudo-tty: `-t`
* Allows you to make an interactive connection: `-i`
* Automatically remove the container when the process exits: `--rm`

3. Once inside the container, create a loop device.

`losetup -f`

4. Run the script. The label could come as a ENV variable.

```console
export label=version1
python gisobuild.py -i ncs5500/ncs5500-mini-x-6.2.25.iso -r ncs5500/. -l $label
mv *.$label ncs5500
```

5. The image should now be available in the host.

```console
$ ls /Users/nleiva/ncs5500/*golden*
/Users/nleiva/ncs5500/ncs5500-goldenk9-x.iso-6.2.25.version1
```

### Good to know about Docker

* stop all containers: `docker kill $(docker ps -q)`
* remove all containers: `docker rm $(docker ps -a -q)`
* remove all docker images: `docker rmi $(docker images -q)`
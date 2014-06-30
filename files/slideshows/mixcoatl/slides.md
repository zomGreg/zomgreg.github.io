# Mixcoatl

!SLIDE


# Mixcoatl -- The Cloud Serpent

mixtli [ˈmiʃ.t͡ɬi] "cloud" and cōātl [ˈkoː.aːt͡ɬ] "serpent"

## Greg Moselle

The purpose of this presentation is to further an understanding of Dell Cloud Manager by presenting software that
has as its primary dependency the DCM Application Programming Interface.
!SLIDE left

# Topics

0. Background

1. Purpose

2. Installation

3. Usage

4. Value
!SLIDE left

# Background

As the Dell Cloud Manager API matured, it became clear there was an opportunity
to expose programmatic access to multiple clouds via a single set of
command-line tools in the same way the DCM user interface allows for
pointing-and-clicking.

## Vision

Think [EC2 API Tools](https://aws.amazon.com/developertools/351) for *every*
cloud DCM supports. 

(Spoiler alert: that's cool)
!SLIDE left

# Purpose

The Mixcoatl project was started to wrap the DCM API and make it easy to use.

## Why?

Getting started with API can be a daunting task, and Mixcoatl lowers the
barrier-to-entry.

1. Handles Authentication
2. Out-of-the-box functionality

   * dcm-utilities
!SLIDE left

# Installation

The mixcoatl installation process was designed to be simple.

## Recommended Requirements

1. OS X / Linux (Not tested in windows, although theoretically it should work)
2. [Python Pip](http://pip.readthedocs.org/en/latest/installing.html)
3. DCM API Credentials
!SLIDE left

# Usage

Mixcoatl can be used as a Python module by importing:

```

>>> from mixcoatl.geography.cloud import Cloud
>>> c = Cloud(1)
>>> # returns immediately
>>> c.cloud_id
1
>>> c.name
>>> # api call is made.
u'Amazon Web Services'

```

Mixcoatl is used today to facilitate the setting up of release candidate environments:

```

from mixcoatl.resource import Resource
from mixcoatl.admin.account import Account

```

It is being used to automate the addition of cloud accounts to a newly installed DCM system.
!SLIDE left

# Usage

Mixcoatl ships with 53 utilities, grouped roughly into categories:

1. List (general form: `dcm-list-<something>`)
   * Example `dcm-list-accounts`
2. Create (general form: `dcm-create-<something>`)
   * Example `dcm-create-billing-code`
3. Describe (general form: `dcm-describe-<something> <ID>`)
   * Example `dcm-describe-server 4099`
4. Delete (general form: `dcm-delete-<something> <ID>`)
   * Example `dcm-delete-server 4099`

Other forms include `attach`, `update`, `start`, `stop`, depending on the resource type.
!SLIDE left

# DCM Utilities

```

dcm-assign-cloud               dcm-create-tier                dcm-detach-volume              dcm-list-firewalls             dcm-list-volumes
dcm-attach-volume              dcm-create-user                dcm-get                        dcm-list-groups                dcm-pause-server
dcm-check-job                  dcm-create-volume              dcm-get.py                     dcm-list-jobs                  dcm-set-acl
dcm-create-billing-code        dcm-delete-group               dcm-list-accounts              dcm-list-machine-images        dcm-set-role
dcm-create-cm                  dcm-delete-network             dcm-list-billing-codes         dcm-list-networks              dcm-start-server
dcm-create-deployment          dcm-delete-volume              dcm-list-clouds                dcm-list-regions               dcm-stop-server
dcm-create-group               dcm-describe-deployment        dcm-list-cm                    dcm-list-roles                 dcm-terminate-server
dcm-create-launch-config       dcm-describe-job               dcm-list-cm-accounts           dcm-list-server-products       dcm-update-group
dcm-create-network             dcm-describe-machine-image     dcm-list-datacenters           dcm-list-servers               
dcm-create-role                dcm-describe-server            dcm-list-deployments           dcm-list-snapshots
dcm-create-server              dcm-describe-server-terminate  dcm-list-firewall-rules        dcm-list-users

```

## Goal

The goal is to provide familiar *terminology*, *functionality*, and *user
experience* to the EC2 command line utilities.
!SLIDE left

# Value

## Mixcoatl

1. Makes it easier to use the DCM API.
2. Enables complex, programmatic work flows (See Demo)
3. Provides *more* information than can be seen in the U/I.
4. Is extensible

## Target Audience

1. Developers
2. System Administrators
3. IT Operations Managers
!SLIDE left

# Demonstration

1. Groups and Roles

   * Creating ACL
   * Associating Groups and Roles

2. Deployment Creation
 
   * Creating Tiers
   * Creating Launch Configuration
!SLIDE left

# Summary

As of May 22, 2014 Mixcoatl had:

* 45 downloads in the last day
* 375 downloads in the last week
* 1356 downloads in the last month

298 Commits, 20 branches 

## References

[Documentation](https://enstratus.github.io/mixcoatl/)

[Source Code](https://github.com/enStratus/mixcoatl)

[Packages](https://pypi.python.org/pypi/mixcoatl)

## Maintainers

[Sean Kang](https://github.com/sean-kang)

[Greg Moselle](https://github.com/zomgreg)

[Brian Williams](https://github.com/bdwilliams)

[John Vincent](https://github.com/lusis)

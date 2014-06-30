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

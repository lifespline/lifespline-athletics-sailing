Documentation
=============

Docs Structure
--------------

.. code-block::

   ├── docs
   │   ├── sphinx
   │   ├── .nojekyll
   │   ├── _templates
   │   ├── conf.py
   │   ├── index.rst
   │   └── Makefile

Images
------

Images are contained in ``docs/sphinx/static/img/``.

Task Runner
-----------

.. automodule:: tasks
   :members:

Pipeline
--------

The pipeline automates manual build processes like (specifying the AWS profile):

.. code:: bash

   $ inv docs
   $ aws sso login
   $ aws cloudfront create-invalidation --distribution-id <id> --paths "/*"
   $ aws s3 cp --recursive docs s3://backlog-docs

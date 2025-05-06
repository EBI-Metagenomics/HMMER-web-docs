---
API
---

Introduction
++++++++++++

API Documentation
^^^^^^^^^^^^^^^^^

The documentation for the updated API in the form of OpenAPI specs can be found `here <https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/docs>`_

*Note: The main difference from the old api is that results are retrieved in an asynchronous manner*

Examples using curl
^^^^^^^^^^^^^^^^^^
To start a phmmer search use this command

.. literalinclude:: _static/code/phmmer.sh
   :language: bash
   :linenos:

*Note: to preserve new lines use \\\n*

To retrieve the results from a search use this command

.. literalinclude:: _static/code/result.sh
   :language: bash
   :linenos:

The following section demonstrates a more integrated way of starting a phmmer search and retrieving results.

.. literalinclude:: _static/code/search_and_retrieve.sh
   :language: bash
   :linenos:

Available services
++++++++++++++++++

phmmer searches
^^^^^^^^^^^^^^^

The main two input parameters to a phmmer search are a protein sequence
and the target database, defined using the input and database parameters
respectively. Other parameters for controlling the search are defined
in the search section. If any of these parameters are omitted, then the
default values for that parameter will be set.

Searches should be POST-ed to the following url::

  https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/search/phmmer

hmmscan searches
^^^^^^^^^^^^^^^^

Hmmscan also has two main parameters - a sequence and a profile HMM
database - defined using the input and database parameters respectively. We
currently offer Pfam only.

Searches should be POST-ed to the following url::

  https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/search/hmmscan

hmmsearch searches
^^^^^^^^^^^^^^^^^^

The input to hmmsearch on the web is either a multiple sequence alignment
or a hidden Markov model in HMMER3 format. We do not support HMMER2 format
as these HMMs are not forward compatible with HMMER3. When uploading a
multiple sequence alignment, an HMM is built on the server using hmmbuild
with the default parameters.

Searches should be POST-ed to the following url::

  https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/search/hmmsearch

jackhmmer searches
^^^^^^^^^^^^^^^^^^

Jackhmmer currently disabled.


Results
^^^^^^^

Search results can be retrieved using the job identifier that is returned in your initial search response.
The job identifier is a UUID (format such as 4162F712-1DD2-11B2-B17E-C09EFE1DC403).
Thus, to retrieve your job, you can use the following URL in a GET request::

  https://www.ebi.ac.uk/Tools/hmmer/api/v1/result/{id}

Example::

  https://www.ebi.ac.uk//Tools/hmmer/api/v1/result/4162F712-1DD2-11B2-B17E-C09EFE1DC403

Taxonomy and domain views
^^^^^^^^^^^^^^^^^^^^^^^^^

The API may also be used to retrive the data behind the taxonomy and domain architecture tabs on the results
page. For taxonomy the URL has the form::

  https://www.ebi.ac.uk/Tools/hmmer/api/v1/taxonomy/{id}/tree

Example::

  curl -s -H "Content-type: application/json" 'https://www.ebi.ac.uk/Tools/hmmer/api/v1/taxonomy/8D5B74A0-6158-11E7-B311-1331132D729D/tree'

For domain architecture, two endpoints are provided. The first returns an overview of all architectures::

  https://www.ebi.ac.uk/Tools/hmmer/api/v1/architecture/{id}

Example::

  curl -s -H "Content-type: application/json" 'https://www.ebi.ac.uk/Tools/hmmer/api/v1/architecture/8D5B74A0-6158-11E7-B311-1331132D729D'

Batch searches
^^^^^^^^^^^^^^

Batch searches are currently disabled.

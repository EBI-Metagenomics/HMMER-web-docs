.. Set up the paramters

.. |parameters.popen.min| replace:: 0
.. |parameters.popen.max| replace:: 0.5
.. |parameters.popen.default| replace:: 0.02
.. |parameters.pextend.min| replace:: 0
.. |parameters.pextend.max| replace:: 1
.. |parameters.pextend.default| replace:: 0.4
.. |parameters.mx.default| replace:: BLOSUM62
.. |parameters.seq.minSeqLength| replace:: 6
.. |parameters.seq.maxSeqLength| replace:: 10000
.. |parameters.incE.min| replace:: 0
.. |parameters.incE.max| replace:: 10
.. |parameters.incE.default| replace:: 0.01
.. |parameters.incdomE.min| replace:: 0
.. |parameters.incdomE.max| replace:: 10
.. |parameters.incdomE.default| replace:: 0.03
.. |parameters.incT.min| replace:: 0
.. |parameters.incT.default| replace:: 25.0
.. |parameters.incdomT.min| replace:: 0
.. |parameters.incdomT.default| replace:: 22.0
.. |parameters.E.min| replace:: 0
.. |parameters.E.max| replace:: 10
.. |parameters.E.default| replace:: 1
.. |parameters.domE.min| replace:: 0
.. |parameters.domE.max| replace:: 10
.. |parameters.domE.default| replace:: 1
.. |parameters.T.min| replace:: 0
.. |parameters.T.default| replace:: 7.0
.. |parameters.domT.min| replace:: 0
.. |parameters.domT.default| replace:: 5.0
.. |parameters.file.maxNumLines| replace:: 42000
.. |parameters.file.maxNumSeqs| replace:: 500
.. |parameters.file.size| replace:: 3000000
.. |parameters.file.minNumResidueTypes| replace:: 5

========
Searches
========

Four search types are supported: **phmmer**, **hmmsearch** and **hmmscan**.
See :ref:`HMMER algorithms` for more information.

There are many different ways that a search on the website
can be modified. Below is a list of the different accepted
inputs and the parameters that can be modified. Also included
are the parameter names that are required when using the
API. This section is meant to be a guide to using the website,
but further information can be found in the extensive `HMMER guide
<http://eddylab.org/software/hmmer/Userguide.pdf>`_.  The parameter
names used on the site are typically the same as the command line
parameters, with the exception of the input data parameters. Each section
is followed by a summary table that can be used as a quick reference.

------------
Search query
------------

**phmmer** and **hmmscan** searches take a **single
protein amino acid sequence** as the input, controlled
by the **seq** parameter. The website accepts either `FASTA
<https://en.wikipedia.org/wiki/FASTA_format>`_ format or an amino acid
sequence.

+-----------------+---------------------------+
| Parameter name  | seq                       |
+-----------------+---------------------------+
| Description     | Sets the query sequence   |
+-----------------+---------------------------+
| Algorithm(s)    | phmmer, hmmscan, jackhmmer|
+-----------------+---------------------------+
| Accepted values | Protein sequence (FASTA)  |
|                 |                           |
+-----------------+---------------------------+
| Default         | None                      |
+-----------------+---------------------------+
| Required        | Yes (seq or acc)          |
+-----------------+---------------------------+

**hmmsearch** search can take either a multiple
protein sequence alignment as an input or a profile HMM. The alignment
formats currently accepted are:

* Aligned FASTA
* Clustal (and Clustal-like)
* PSI-BLAST
* PHYLIP
* Selex
* GCG/MSF
* `STOCKHOLM <https://en.wikipedia.org/wiki/Stockholm_format>`_ format
* UC Santa Cruz A2M (alignment to model)

The algorithm **hmmsearch** also permits searches
to be initiated with a profile HMM.  This can be entered as text via
the website.

--------------
Query examples
--------------

For each of the search algorithms, examples sequences/alignments are
provided (click on the 'example' button).  These examples have been
chosen to show a result set that demonstrates the various features
available on the results pages.

-------------------------
Default search parameters
-------------------------

The searches on the website, when used in the simple mode, hide most of
the search parameters and default values are used. Below is a list of
the parameters and values used in the default search for each algorithm:

phmmer
++++++

+--------------------------------------+--------------------------------------------+
| Sequence database                    | UniProt reference proteomes                |
+--------------------------------------+--------------------------------------------+
| Significance threshold (E-value)     | |parameters.incE.default|                  |
|                                      | for sequence matches;                      |
|                                      | |parameters.incdomE.default|               |
|                                      | for hit matches                            |
+--------------------------------------+--------------------------------------------+
| Reporting threshold (E-value)        | |parameters.E.default|                     |
|                                      | for both sequences and hits                |
+--------------------------------------+--------------------------------------------+
| Gap penalties                        | open: |parameters.popen.default|;          |
|                                      | extend: |parameters.pextend.default|;      |
|                                      | scoring matrix: |parameters.mx.default|    |
+--------------------------------------+--------------------------------------------+
| Filter                               | Bias composition filtering on              |
+--------------------------------------+--------------------------------------------+
| Pfam search                          | Enabled, with gathering thresholds applied |
+--------------------------------------+--------------------------------------------+

hmmscan
+++++++

+--------------------------------------+----------------------------------------+
| HMM database                         | Pfam                                   |
+--------------------------------------+----------------------------------------+
| Significance threshold               | The Pfam gathering thresholds          |
|                                      | are used to determine hit significance |
+--------------------------------------+----------------------------------------+
| Filter                               | Bias composition filtering on          |
+--------------------------------------+----------------------------------------+

hmmsearch
+++++++++

+--------------------------------------+----------------------------------------------------+
| Sequence database                    | UniProt reference proteomes                        |
+--------------------------------------+----------------------------------------------------+
| Significance threshold (E-value)     | |parameters.incE.default| for sequence matches,    |
|                                      | |parameters.incdomE.default| for hit matches       |
+--------------------------------------+----------------------------------------------------+
| Reporting threshold (E-value)        | |parameters.E.default| for both sequences and hits |
+--------------------------------------+----------------------------------------------------+
| Filter                               | Bias composition filtering on                      |
+--------------------------------------+----------------------------------------------------+

---------
Databases
---------

Sequence databases
++++++++++++++++++

The sequence database field changes which target sequence database is
searched. The default is UniProt references proteomes. This is one of
the few parameters that is required by phmmer, hmmsearch or jackhmmer.

+-----------------+---------------------------------------+
| Parameter name  | seqdb                                 |
+-----------------+---------------------------------------+
| Description     | Sets the target sequence database     |
+-----------------+---------------------------------------+
| Algorithm       | phmmer, hmmsearch, jackhmmer          |
+-----------------+---------------------------------------+
| Accepted values | refprot, uniprot, swissprot,          |
|                 | pdb, rp15, rp35, rp55, rp75,          |
+-----------------+---------------------------------------+
| Default         | refprot (see below)                   |
+-----------------+---------------------------------------+
| Required        | Yes                                   |
+-----------------+---------------------------------------+

HMM databases
+++++++++++++

This field indicates which profile HMM database the query should be
searched against.

+-----------------+----------------------------------------------------+
| Parameter name  | hmmdb                                              |
+-----------------+----------------------------------------------------+
| Description     | Sets the target HMM database                       |
+-----------------+----------------------------------------------------+
| Algorithm       | hmmscan                                            |
+-----------------+----------------------------------------------------+
| Accepted values | pfam                                               |
+-----------------+----------------------------------------------------+
| Default         | pfam                                               |
+-----------------+----------------------------------------------------+
| Required        | Yes                                                |
+-----------------+----------------------------------------------------+

----------
Thresholds
----------

All four algorithms have the ability to set two different categories of
cut-offs: **significance** and **reporting** thresholds. These cut-offs
can be defined either as E-values (the default option) or bit scores. When
setting either category of threshold, there are two values for each of
the threshold categories: **sequence** and **hit**. A query can match a
target in multiple places, defined as a hit (or domain) score. The sum
of all hits on the sequence is the sequence score.

For example, trying to match repeating motifs can often be difficult,
due to sequence variation in the repeating sequence motif. However, it
can be possible to capture all examples of the motif, by relaxing the
hit parameter while maintaining a stringent sequence parameter. This
means that multiple matches, even if they are not strong matches, can
be detected, but the sum of these matches must be sufficient to achieve
the sequence score, there by limiting the rate of false positives.


Significance thresholds
+++++++++++++++++++++++

Significance (or inclusion) thresholds are stricter than reporting
thresholds and take precedence over them. These determine whether a
sequence/hit is significant or not.

Significance E-values
^^^^^^^^^^^^^^^^^^^^^

Sequence and hit significance E-value thresholds will set matches with
E-values less than or equal to the cut-off E-value as being significant
(defaults below). If using the API, the incE and incdomE parameters are
used to set the sequence and hit E-value thresholds respectively. In
the absence of any threshold parameters the server will default to using
E-value thresholds with the
defaults.

Alternatively, the sequence and hit significance thresholds can be
specified as bit scores. Any sequence or hit scoring greater than or equal
to that given threshold will be considered a significant hit. By default,
the form on the website is filled with typical values (defaults below).
If using the API, the incT and incdomT parameters are used to set the
sequence and hit bit thresholds respectively. This threshold is not
used by default. If only one of these two parameters is set, then the
unassigned parameter is set to the other assigned parameter value.

+-----------------+-------------------------------+--------------------------------+
| Parameter name  | incE                          | incdomE                        |
+-----------------+-------------------------------+--------------------------------+
| Description     | Sequence E-value threshold    | Hit E-value threshold          |
+-----------------+-------------------------------+--------------------------------+
| Algorithm       | phmmer, hmmscan, hmmsearch                                     |
+-----------------+-------------------------------+--------------------------------+
| Accepted values | |parameters.incE.min| < x     | |parameters.incdomE.max| < x   |
|                 | ≤ |parameters.incE.max|       | ≤ |parameters.incdomE.max|     |
+-----------------+-------------------------------+--------------------------------+
| Default         | |parameters.incE.default|     | |parameters.incdomE.default|   |
|                 | or set to sequence threshold, | or set to hit threshold,       |
|                 | if present                    | if present                     |
+-----------------+-------------------------------+--------------------------------+
| Required        | No                            | No                             |
+-----------------+-------------------------------+--------------------------------+

Significance bit scores
^^^^^^^^^^^^^^^^^^^^^^^

Alternatively, the sequence and hit significance thresholds can be
specified as bit scores. Any sequence or hit scoring greater than or
equal to that given threshold will be considered a significant hit. By
default, the form on the website is filled with typical values (defaults below).
If using the API, the incT and incdomT parameters are used to set
the sequence and hit bit thresholds respectively. This threshold is not
used by default. If only one of these two parameters is set, then the
unassigned parameter is set to the other assigned parameter value.

+-----------------+------------------------------+--------------------------------+
| Parameter name  | incT                         | incdomT                        |
+-----------------+------------------------------+--------------------------------+
| Description     | Sequence bit score threshold | Hit bit score threshold        |
+-----------------+------------------------------+--------------------------------+
| Algorithm       | phmmer, hmmscan, hmmsearch                                    |
+-----------------+------------------------------+--------------------------------+
| Accepted values | x > |parameters.incT.min|    | x > |parameters.incdomT.min|   |
+-----------------+------------------------------+--------------------------------+
| Default         | |parameters.incT.default|    | |parameters.incdomT.default|   |
+-----------------+------------------------------+--------------------------------+
| Required        | No                           | No                             |
+-----------------+------------------------------+--------------------------------+

Reporting thresholds
++++++++++++++++++++

The reporting thresholds controls how many matches that fall below the
significance threshold are still shown in the results (i.e. reported). As
every entity in the target database is compared to the query, if
all matches were reported, then potentially vast outputs would be
generated. However, it can often be useful to view border-line matches
as they may reveal more distant **potential** informative similarities to
the model. As with the significance thresholds, there is a value for
both the sequence and the hit, which again can be defined as either an
E-value or a bit score. Such reported matches are indicated by a yellow
background in the results table produced in the website.

Reporting E-values
^^^^^^^^^^^^^^^^^^

+-----------------+-------------------------------+--------------------------------+
| Parameter name  | E                             | domE                           |
+-----------------+-------------------------------+--------------------------------+
| Description     | Sequence E-value threshold    | Hit E-value threshold          |
|                 | (reporting)                   | (reporting)                    |
+-----------------+-------------------------------+--------------------------------+
| Algorithm       | phmmer, hmmscan, hmmsearch                                     |
+-----------------+-------------------------------+--------------------------------+
| Accepted values | |parameters.E.min| < x        | |parameters.domE.max| < x      |
|                 | ≤ |parameters.E.max|          | ≤ |parameters.domE.max|        |
+-----------------+-------------------------------+--------------------------------+
| Default         | |parameters.E.default|        | |parameters.domE.default|      |
|                 | or set to sequence threshold, | or set to hit threshold,       |
|                 | if present                    | if present                     |
+-----------------+-------------------------------+--------------------------------+
| Required        | No                            | No                             |
+-----------------+-------------------------------+--------------------------------+

Reporting bit scores
^^^^^^^^^^^^^^^^^^^^

The sequence and hit reporting thresholds can also be specified as
bit scores. Any sequence or hit scoring greater than or equal to that
given threshold will be reported (defaults below). If using the API, the T
and domT parameters are used to set the sequence and hit bit thresholds
respectively. If significance thresholds are set, yet either or both
reporting thresholds are undefined, these default form values will be
set server side.

+-----------------+-------------------------------+--------------------------------+
| Parameter name  | T                             | domT                           |
+-----------------+-------------------------------+--------------------------------+
| Description     | Sequence E-value threshold    | Hit E-value threshold          |
|                 | (reporting)                   | (reporting)                    |
+-----------------+-------------------------------+--------------------------------+
| Algorithm       | phmmer, hmmscan, hmmsearch                                     |
+-----------------+-------------------------------+--------------------------------+
| Accepted values | x > |parameters.T.min|        | x > |parameters.domT.min|      |
+-----------------+-------------------------------+--------------------------------+
| Default         | |parameters.T.default|        | |parameters.domT.default|      |
+-----------------+-------------------------------+--------------------------------+
| Required        | No                            | No                             |
+-----------------+-------------------------------+--------------------------------+


Gathering thresholds
++++++++++++++++++++

Specific to hmmscan, the gathering threshold indicates to HMMER to use the
sequence and hit thresholds defined in the HMM file to be searched. In
the case of `Pfam <http://pfam.xfam.org>`_ these are set conservatively to
ensure that there are no known false positives. Thus, if a query sequence scores
with a bit score greater than or equal to the gathering thresholds, then
that match can be treated with high confidence. This threshold is the
default setting for hmmscan. If you are using the API, you can use the
cut_ga parameter to signify that the gathering threshold should be used.

=======================
Advanced search options
=======================

------------------------
Customisation of results
------------------------

The result table may be customised to display different columns and/or to
restrict the number of rows in the table to a manageable number. This can
be performed after the search, with the customisation stored
in a cookie so that you will not have to keep re-configuring the table
after each search.

-----------
Pfam search
-----------

By default when performing a phmmer search via the website (and when
JavaScript is enabled), a default hmmscan search against the Pfam HMM
library is also performed. This feature is not available via the API,
but can be mimicked by making separate requests to phmmer and hmmscan.

-------
Filters
-------

Bias composition
++++++++++++++++

Turning off the bias composition filter can increases sensitivity,
but at a high cost in speed, especially if the query has biased residue
composition (such as a repetitive sequence region, or a membrane
protein with large regions of hydrophobicity). Without the bias filter,
too many sequences may pass the filter with biased queries, leading
to slower than expected performance, hence it is switched on by default.
This feature can be disabled using the nobias parameter.

+-----------------+------------------------------------------+
| Parameter name  | nobias                                   |
+-----------------+------------------------------------------+
| Description     | Turns off the bias composition filtering |
+-----------------+------------------------------------------+
| Algorithms      | phmmer, hmmscan, hmmsearch               |
+-----------------+------------------------------------------+
| Accepted Values | 1                                        |
+-----------------+------------------------------------------+
| Required        | No                                       |
+-----------------+------------------------------------------+

-------------
Gap penalties
-------------

These are specific to phmmer.

Open
++++

The open parameter (called popen in HMMER) sets the probability for
opening a gap in an alignment between target sequence against the model
(or query sequence). The default value is |parameters.popen.default|,
but can be set any value from |parameters.popen.min| (no gaps)
to less than |parameters.popen.max|
(more likely to extend the gap).

Extend
++++++

The extend parameter (called pextend in HMMER) sets the probability
for extending the gap for a target sequence against the model or query
sequence. The default value is |parameters.pextend.default|,
but can be set anywhere from |parameters.pextend.min|
(less likely to extend) to less than |parameters.pextend.max|
(more likely to extend the gap).

Scoring Matrix
++++++++++++++

When using phmmer, the query is a single sequence so the residue alignment
probabilities are calculated from a substitution matrix. Substitution
matrices provide scores that indicate the likelihood of two aligned
amino acids appearing due to conservation rather than by chance. There
are five different matrices available for selection: BLOSUM45, BLOSUM62
(default), BLOSUM90, PAM30 and PAM70. These BLOSUM matrices are based
on observed alignments between amino acids in the BLOCKS database,
where as the PAM matrices have been extrapolated from comparisons of
closely related proteins. The different matrices alter the stringency
of the alignment e.g. PAM90 can be used to find more distantly related
sequences than PAM70, as PAM70 is more stringent; BLOSUM62 can be used
to find more closely related sequence than using BLOSUM45, as BLOSUM45
is less stringent.

This is required for phmmer and jackhmmer and default values will be used
if no value is set.

+-----------------+----------------------------+------------------------------+-------------------------+
| Parameter name  | popen                      | pextend                      | mx                      |
+-----------------+----------------------------+------------------------------+-------------------------+
| Description     | Gap open penalty           | Gap extend penalty           | Substitution matrix     |
+-----------------+----------------------------+------------------------------+-------------------------+
| Algorithm(s)    | phmmer                                                                              |
+-----------------+----------------------------+------------------------------+-------------------------+
| Accepted values | |parameters.popen.min|     | |parameters.pextend.min|     | BLOSUM45, BLOSUM62,     |
|                 | ≤ x <                      | ≤ x <                        | BLOSUM90, PAM30, PAM70  |
|                 | |parameters.popen.max|     | |parameters.pextend.max|     |                         |
+-----------------+----------------------------+------------------------------+-------------------------+
| Default         | |parameters.popen.default| | |parameters.pextend.default| | |parameters.mx.default| |
+-----------------+----------------------------+------------------------------+-------------------------+
| Required        |  No                                                                                 |
+-----------------+----------------------------+--------------------------------------------------------+

--------
Glossary
--------

Bit score
  A bit score in HMMER is the log of the ratio of the sequence's
  probability according to the profile (the homology hypothesis) to the
  null model probability (the non-homology hypothesis).

E-value
  An E-value (expectation value) is the number of hits that would be
  expected to have a score equal to or better than this by chance alone. A
  good E-value is much less than 1, for example, an E-value of 0.01 would
  mean that on average about 1 false positive would be expected in every
  100 searches with different query sequences. An E-value around 1 is what
  we expect just by chance. E-values are widely used as all you need to
  decide on the significance of a match is the E-value, but note that they
  vary according to the size of the target database.

Gathering threshold
  Also called the gathering cut-off, the gathering threshold is actually
  comprised of two bit scores, a sequence cut-off and a domain cut-off,
  used to define the significance of a sequence and a hit respectively.
  These are defined in the profile HMM and set both significance and
  reporting thresholds so that no insignificant hits are reported.

Null model
  The "null model" calculates the probability that the target sequence is
  not homologous to the query profile and is a one-state HMM configured to
  generate "random" sequences of the same mean length L as the target
  sequence, with each residue drawn from a background frequency
  distribution (a standard i.i.d. model: residues are treated as
  independent and identically distributed). This background frequency is
  based on the mean residue frequencies in
  `Swiss-Prot 50.8 <http://www.uniprot.org>`_ (October 2006).

Profile HMM
  Profile hidden Markov Models (HMMs) are a way of turning a multiple
  sequence alignment into a position-specific scoring system, which is
  suitable for searching databases for remotely homologous sequences.

STOCKHOLM format
  `STOCKHOLM <https://en.wikipedia.org/wiki/Stockholm_format>`_ format
  is a multiple sequence alignment format supported by HMMER.

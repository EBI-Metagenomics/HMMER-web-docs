Target databases
================

The HMMER web service supports querying against a range of
regularly updated sequence and HMM target databases.

------------------
Sequence databases
------------------

* Large, comprehensive sequence collection

  - `UniProt <http://www.uniprot.org>`_ - Comprehensive resource for protein sequence and annotation
    data produced by the Universal Protein Resource consortium.

* Annotated sequences and determined 3D structures

  - `SwissProt <http://www.uniprot.org>`_ - Manually reviewed, high quality protein sequence and
    functional annotation - produced by UniProt.

  - `PDB <http://www.pdb.org>`_ - Sequences with an experimentally determined structure.

* Representative Sets

  - `Representative Proteomes <http://www.proteininformationresource.org/rps>`_ - Representative Proteomes (RPs) are determined
    by selecting one proteome from a representative proteome group
    containing similar proteomes calculated based on sequence co-membership
    in UniRef50 clusters. A Representative Proteome is the proteome that can
    best represent all the proteomes in its group in terms of the majority
    of the sequence space and information. RPs at 75%, 55%, 35% and 15%
    co-membership threshold are available as target databases. More
    information on `Representative Proteomes <http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0018910>`_ is available. The data set
    also includes model organisms and viral reference proteomes as defined
    by UniProt. The complete proteomes database comes from PIR.

  - `Reference Proteomes <http://www.uniprot.org>`_ - A set of proteomes from UniProt that gives broad
    coverage of the tree of life, and constitutes a representative
    cross-section of the taxonomic diversity to be found within UniProtKB.
    Produced by UniProt, in collaboration with Ensembl and the NCBI
    Reference Sequence collection.

The default database is UniProt reference proteomes.

---------------------
Profile HMM databases
---------------------

* `Pfam <http://pfam.xfam.org>`_ - A large comprehensive collection of protein families.

-----------------
Search provenance
-----------------

Clicking 'Search Details' at the end of the result page
reveals a box that provides details of the search, including
the query sequence (if applicable) and information
regarding the date/release
of the target databases, which should be recorded for future reference
when trying to recreate the results, discussing with colleagues or
reporting bugs.

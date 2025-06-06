Changelog
=========

**Version 3.0, May 2025**

- Changes
  - New API parameters
  - New website

**Version 2.44, November 2024**

- Changes

  - UniProt release 2024_04
  - PDB release 41.24
  - Pfam release 37.0
  - Showing AlphaFold predicted structures

**Version 2.43, February 2022**

- Changes

  - Pfam release 35.0

**Version 2.42, October 2021**

- Changes

  - Updated all databases to most recent version
  - Added AlphaFold sequences database

**Version 2.40, October 2019**

- Changes

  - UniProtKB release 2019_09

- Bug fixes

  - Offline (batch) searches: fixed a reliability issue and
    corrected summary page for hmmscan results (now correctly lists
    sequences with significant hits; previously this included some
    hits where none of the domains were above the inclusion threshold)

**Version 2.39, September 2019**

- Changes

  - UniProtKB release 2019_08
  - MEROPS 12.1

**Version 2.38, 31st July 2019**

- Changes

  - UniProtKB release 2019_07
  - Ensembl Genomes release 44
  - Ensembl release 97

**Version 2.37, 3rd July 2019**

- Changes

  - UniProtKB release 2019_06

**Version 2.36, June 2019**

- Changes

  - UniProtKB release 2019_05

**Version 2.35, May 2019**

- Changes

  - UniProtKB release 2019_04
  - Ensembl Genomes release 43
  - Ensembl release 96

**Version 2.34, April 2019**

- Changes

  - UniProtKB release 2019_03

- New features

  - Download of results in text, tsv, json, xml, fasta and full length fasta
    (i.e. all non-aligned formats) can now be done on a subset of hits
    using a 'range=from,to' parameter, as already implemented in the API.

**Version 2.33, February 2019**

- Changes

  - UniProtKB release 2019_02
  - Ensembl Genomes release 42
  - Ensembl release 95

- Bug fixes

  - Fix to 'Taxonomy Search' and 'Accession Search' forms

- New features

  - Added query alignment/HMM to 'Search Details' (previously the query was only shown
    for fasta input), and taxonomic IDs if selected;
    HMMs and alignments are truncated but the full input is available via a new /query
    endpoint

**Version 2.32, January 2019**

- Changes

  - UniProtKB release 2019_01

**Version 2.31, December 2018**

- Changes

  - UniProtKB release 2018_11

**Version 2.30, November 2018**

- Changes

  - UniProtKB release 2018_10
  - Ensembl Genomes release 41
  - Ensembl release 94

- New features

  - Added phylum as an optional column in the results table

**Version 2.29, October 2018**

- Changes

  - UniProtKB release 2018_09

**Version 2.28, September 2018**

- Changes

  - Pfam release 32.0

- Bug fixes

  - Fix to display of position in queue for batch searches

**Version 2.27, September 2018**

- Changes

  - UniProtKB release 2018_08

**Version 2.26, August 2018**

- Changes

  - Ensembl Genomes release 40
  - Ensembl release 93
  - `ChEMBL <https://www.ebi.ac.uk/chembl>`_ added as a supported sequence database (version 24)

- Bug fixes

  - Fix to searches against TreeFam using the API (prior to this, searches used the gathering threshold, which does
    not apply to this database)

**Version 2.25, July 2018**

- Changes

  - UniProt release 2018_07

**Version 2.24, June 2018**

- Changes

  - UniProt release 2018_06
  
- New features

  - Added new “fisheye” mode on the taxonomy viewer

**Version 2.23, May 2018**

- Changes

  - UniProt release 2018_05
  - Ensembl Genomes release 39
  - Ensembl release 92

- Bug fixes

  - Improvements to the taxonomy page performance

**Version 2.22, April 2018**

- Changes

  - UniProt release 2018_04
  - Introduced TreeFam, version 9, with post-processing using the default TreeFam e-value threshold and hit selection
  - Website annotated using `Schemas.org <https://schema.org/>`_ and current working version of `BioSchemas <http://bioschemas.org/>`_

**Version 2.21, January 2018**

- Changes

  - UniProt release 2018_01
  - Ensembl Genomes release 38

**Version 2.20, December 2017**

- Changes

  - UniProt release 2017_12
  - Ensembl release 91

**Version 2.19, November 2017**

- Changes

  - UniProt release 2017_11
  - MEROPS 12

**Version 2.18, October 2017**

- Changes

  - UniProt release 2017_10
  - Gene3D version 16.0.0
  
- Bug fixes

  - Fix XML output for some API endpoints

**Version 2.17, September 2017**

- Changes

  - UniProt release 2017_09
  - Ensembl Genomes release 37
  - Ensembl release 90

- New features

  - Better taxonomy viewer using `taxonomy-visualisation <https://github.com/ProteinsWebTeam/taxonomy-visualisation>`_ library

**Version 2.16, August 2017**

- Changes

  - UniProt release 2017_08
  - Change some email templates to have tab-delimited headers and rows

- New features

  - Added information warning about next release across the website
  
**Version 2.15, July 2017**

- Changes

  - UniProt release 2017_07
  - Ensembl Genomes release 36
  - Ensembl release 89
  - New option “unselect all” for jackhmmer iterations
  - New endpoints available as JSON (taxonomy and domain architecture)

- Bug fixes

  - Download of ClustalW, PSI-BLAST and PHYLIP file formats fixed

**Version 2.14, June 2017**

- Changes

  - UniProt release 2017_06

**Version 2.13, May 2017**

- Changes

  - UniProt release 2017_05
  - Ensembl Genomes release 35
  - Ensembl release 88
  - Gene3D post-processing now uses `cath-resolve-hits <http://cath-tools.readthedocs.io/en/latest/tools/cath-resolve-hits>`_

**Version 2.12**

- Changes

  - Website now follows EBI guidelines
  - EBI Search cross-references added for all supported databases

**Version 2.11, March 2017**

- Changes

  - UniProt release 2017_03
  - Pfam release 31.0
  - MEROPS 11 added as a supported sequence database
  - PIRSF: new post-processing enables the unification of two or more matches that are separated due to the HMMER3 local-local matching model
  - (beta version) Added EBI Search cross-references in sequence database results

**Version 2.10, February 2017**

- Changes

  - UniProt release 2017_02

- Bug fixes

  - Improved handling of HMM logos (some HMMs are unable to be rendered owing to the way they are constructed)

**Version 2.9, January 2017**

- Changes

  - UniProt release 2017_01

**Version 2.8, December 2016**

- Changes

  - Pfam active sites
  - Ensembl

**Version 2.7, September 2016**

- Changes

  - UniProt release 2016_08
  - Gene3D version 14

**Version 2.6, August 2016**

- Changes

  - Ensembl Genomes 32

- Bug fixes

  - Fixes in search and download pages

**Version 2.5, July 2016**

- Changes

  - small UI improvements

**Version 2.4, June 2016**

- New features

  - Integration of complete Ensembl Plants, and of Ensembl Protists
    as supported databases for searches.

  - Update to Pfam 30.0

- Changes

  - More UI changes to the search page

**Version 2.3, May 2016**

- New features

  - Integration of Ensembl Bacteria, Ensembl Fungi, Ensembl Metazoa,
    and Ensembl Plants as supported databases for searches.

- Changes

  - Small changes in the UI (especially in the search page)
  - Improved performance and better caching

**Version 2.2, March 2016**

- New features

  - Integration of Ensembl Genomes as a supported database for searches.

- Bug fixes

  - Fixed error on selection between iterations of Jackhmmer searches

**Version 2.1, January 2016**

- New features

  - RP levels that were previously removed have been reinstated by popular demand.
  - Revisions to the help documentation.
  - PDB search results now link to both PDBe and RCSB.

**Version 2.0, August 2015**

- New features

  - Move from Janelia to EBI.
  - Now supporting Ensembl Genomes Plants as a new target database.
  - RP levels removed.

**Version 1.4, May 2013**

- New features

  - We have enabled the searching of **multiple** hmm databases via hmmscan.  This
    allows the results of Gene3D, Superfamily, Pfam and TIGRGAMs to be compared in a single page.
  - The **HMM length** and the coverage of the HMM is now indicated in the tool tip associated with the
    domain graphic, located in the 'sequence features' section.  The HMM length has also been added to the hmmscan
    results table.
  - The website is now using HMMER **version 3.1**, with the software due to be released shortly.  We have added the option of downloading
    HMMs in both 3.0 and 3.1 formats.
  - **Alignment downloads** have been improved, particularly for large alignments, which were often so big that the server would timeout.
  - We have also work on several speed optimisations in the website to improve interactivity.

- Bug Fixes

  - Based on user feedback, we have updated the validation of E-value cut-offs to allow **scientific notation** with the
    exponent as E or e.
  - Fixed issue with **long taxon names** which are now being truncated
    to ensure that tree, in taxonomy results visualisation, remains aligned.

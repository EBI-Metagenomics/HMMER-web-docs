curl -s -X POST "https://www.ebi.ac.uk/Tools/hmmer/api/v1/search/phmmer" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{
    "database": "pdb",
    "input": ">2abl_A mol:protein length:163  ABL TYROSINE KINASE\\nMGPSENDPNLFVALYDFVASGDNTLSITKGEKLRVLGYNHNGEWCEAQTKNGQGWVPS"
  }'

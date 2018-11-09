#!/bin/bash

curl https://www.ebi.ac.uk/ols/ontologies/chebi/download > ./templates/chebi.owl
echo 'Performing MIREOT extract... '
bin/robot extract --method MIREOT --input ./templates/chebi.owl --upper-term "owl:Thing" --lower-terms ./templates/leafterms.txt --output ./build/mireotextract.owl && echo 'Done!'
echo 'Removing unwanted terms... '
bin/robot remove --input ./build/mireotextract.owl --term-file ./templates/unwanted.txt --output ./build/removed.owl && echo 'Done!'
echo 'Annotating slim... '
bin/robot query --input ./build/removed.owl --query ./sparql/wanted.sparql ./build/chebi-annotated-slim.owl
bin/robot merge --input ./build/removed.owl --input ./build/chebi-annotated-slim.owl --output chebi-annotated.owl && echo 'Done!'
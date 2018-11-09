## CHEBI slim pipeline

1. Leaf terms that are desired in the final slim should be added in ID form (i.e. CHEBI:xxxxx) to the leafterms.txt file located in the templates folder.
2. Any terms that are undesired in the final slim should be added in ID form (i.e. CHEBI:xxxxx) to the unwanted.txt file located in the templates folder.
3. Run `./slim.sh` from your command line. (You may need to make it executable!)

To use for another ontology, edit the slim.sh file and dependencies accordingly.

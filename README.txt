CHEBI slim

1. You will need to have ROBOT installed on your system.
	- ROBOT can be downloaded from here: http://robot.obolibrary.org/
2. Ensure the latest release of your desired slim ontology is in the "import" directory in OWL form.
	- These can be downloaded from https://www.ebi.ac.uk/ols/ontologies
3. Ensure your OBO file containing slim terms is in the "template" directory.
	- By default this is named molecule-tree.obo, if this is different please edit the molecule-tree.obo reference in the first command in run_chebi_slim.sh to your file name
4. Ensure extract.sparql is in the "sparql" directory.
	- By default, obsolete terms are also extracted. If you do not want obsolete terms, uncomment the last filter statement in the extract.sparql file
5. Ensure owltools is in the "bin" directory.
6. Run the following command: bash run_chebi_slim.sh
	- This will annotate a copy of CHEBI (chebi_annotated.owl) with the slim annotation and also extract the slim.
		- Comment out the last command in the run_chebi_slim.sh file if you do not wish to extract the slim.
		
To re-use for other slims

1. Rename "chebi_slim" in the extract.sparql file to the new slim name
2. Replace the molecule-tree.obo file or edit the molecule-tree.obo reference in the first command in run_chebi_slim.sh to your file name

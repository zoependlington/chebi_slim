## CHEBI slim pipeline

1. You will need to have ROBOT installed on your system.
	- ROBOT can be downloaded from here with installation instructions: http://robot.obolibrary.org/
2. Ensure the latest release of CHEBI is in a new folder named _"import"_ and is in **OWL** form.
	- This can be downloaded from https://www.ebi.ac.uk/ols/ontologies/chebi
3. Ensure your OBO file containing slim terms is in the _"template"_ directory.
	- By default this is named _molecule-tree.obo_
		- If this is different please edit the molecule-tree.obo reference in the first command in `"run_chebi_slim.sh"` to your file name
4. Ensure _extract.sparql_ is in the "sparql" directory.
	- By default, obsolete terms are also extracted into the final slim file. 
		- If you do not want obsolete terms, uncomment the last filter statement in the extract.sparql file: `#FILTER EXISTS {?s oboInOwl:id ?o}.#`
		- If you wish to have a different annotation for your slim terms, this an also be changed in the extract.sparql file
			- Replace `"chebi_slim"` with your desired annotation. This can be anything relating to your desired slim.
5. Ensure owltools is in the "bin" directory.
	- More information on owltools available here: https://github.com/owlcollab/owltools/wiki
6. Run the following command on the command line: `bash run_chebi_slim.sh`
	- This will annotate a copy of CHEBI (`chebi_annotated.owl`) with the slim annotation and also extract the slim.
		- Comment out the last command in the `run_chebi_slim.sh` file if you do not wish to extract the slim.
	- The contents of this `run_chebi_slim.sh` file can be run as single commands on the command line if the entire pipeline is not desired such as in the above option
		
### To re-use for other slims/different ontologies

1. Rename `"chebi_slim"` in the extract.sparql file to the new slim name.
2. Replace the molecule-tree.obo file or edit the molecule-tree.obo reference in the first command in `"run_chebi_slim.sh"` to your file name.
3. Replace any mention of chebi.owl to your new desired ontology.
4. Ensure any other desired changed to file names are replaced in all commands.

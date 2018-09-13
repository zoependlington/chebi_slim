echo -ne '|               |   (0%)\r'
sleep 1
robot convert --input ./template/molecule-tree.obo --output ./build/chebi_module.owl && echo -ne '|#####               |   (25%)\r'
sleep 1
robot query --format ttl --input ./build/chebi_module.owl --construct ./sparql/extract.sparql ./build/chebi_extract.owl && echo -ne '|##########          |   (50%)\r'
sleep 1
robot merge --input ./import/chebi.owl --input ./build/chebi_extract.owl --input ./build/chebi_module.owl --output ./build/chebi_annotated.owl && echo -ne '|###############     |   (75%)\r'
sleep 1
owltools ./build/chebi_annotated.owl --extract-ontology-subset -u http://purl.obolibrary.org/obo/chebi.owl -s chebi_slim -o chebi_slim.owl && echo -ne '|####################|   (100%)\r'
echo -ne '\n'
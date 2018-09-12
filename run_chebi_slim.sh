robot convert --input ./template/molecule-tree.obo --output ./build/chebi_module.owl
robot query --format ttl --input ./build/chebi_module.owl --construct ./sparql/extract.sparql ./build/chebi_extract.owl
robot merge --input ./import/chebi.owl --input ./build/chebi_extract.owl --input ./build/chebi_module.owl --output ./build/chebi_annotated.owl
owltools ./build/chebi_annotated.owl --extract-ontology-subset -u http://purl.obolibrary.org/obo/chebi.owl -s chebi_slim -o chebi_slim.owl
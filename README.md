# RepeatMasking
Running repeatmodeler and repeatmasker in farm (UCDavis HPC) for softmasking the genome of _Meloidogyne hapla_

## Repeat Modeling
 Repeat modeler helps in identifing repeats _de novo_ as well as from pre-existing databases from the assembled genome. This took 3 days to run. 

 The job submission file can be found in ```repeatmodeler.sh```


## Repeat Masking
Based on the repeats classified by RepeatModeler, RepeatMasker masks the fasta sequences. We used ncbi as our databse. 

The job submission file can be found in ```repeatmasker.sh```


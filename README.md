### NGSCheckMate - ngscheckmate_fastq
A C program, ngscheckmate_fastq, can be directly called to generate a VAF file from one FASTQ file (single-end sequencing) or two FASTQ files(paired-end sequencing). 

### Getting Started

We recommend using choppy system and Aliyun OSS service. The command will look like this:

```
# Activate the choppy environment
$ open-choppy-env

# Install the APP
$ choppy install YaqingLiu/ngscheckmate_fastq-latest [-f]

# List the parameters
$ choppy samples YaqingLiu/ngscheckmate_fastq-latest [--no-default]

# Submit you task with the `samples.csv file` and `project name`
$ choppy batch YaqingLiu/ngscheckmate_fastq-latest samples.csv -p Project [-l project:Label]

# Query the status of all tasks in the project
$ choppy query -L project:Label | grep "status"
```

#### samples.csv
The samples.csv contains at least 3 columns: sample_id, fastq1, fastq2.
#### other parameters
- subsampling_rate: The default subsampling rate is 1. The speed is not very slow.

### Reference
> https://github.com/parklab/NGSCheckMate

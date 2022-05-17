import "./tasks/fastq_ncm.wdl" as fastq_ncm

workflow {{ project_name }} {
  
  String sample_id
  File fastq1
  File fastq2
  String subsampling_rate
  String docker
  String cluster_config
  String disk_size

  call fastq_ncm.fastq_ncm as fastq_ncm {
    input:
    out_id=sample_id,
    fq1=fastq1,
    fq2=fastq2,
    subsampling_rate=subsampling_rate,
    docker=docker,
    disk_size=disk_size,
    cluster_config=cluster_config
  }
}

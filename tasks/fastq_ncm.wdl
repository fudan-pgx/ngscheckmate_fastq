task fastq_ncm {
  
  String out_id
  File fq1
  File fq2
  String subsampling_rate
  String docker
  String cluster_config
  String disk_size

  command <<<
    set -o pipefail
    set -e
    nt=$(nproc)
    export NCM_HOME=/opt/NGSCheckMate
    /opt/NGSCheckMate/ngscheckmate_fastq -1 ${fq1} -2 ${fq2} /opt/NGSCheckMate/SNP/SNP.pt -p $nt -s ${subsampling_rate} > ${out_id}.vaf
  >>>

  runtime {
    docker:docker
      cluster:cluster_config
      systemDisk:"cloud_ssd 40"
      dataDisk:"cloud_ssd " + disk_size + " /cromwell_root/"
  }
  output {
    File vaf="${out_id}.vaf"
  }
}

process LOAD_COUNTS {
    container "${params.container__python_pandas}"
    cpus 1
    memory 4.GB
    publishDir "${params.output}", mode: "copy", overwrite: true

    output:
    path "counts.csv", emit: ch_counts_csv

    script:
    """
    load_counts.py
    """
}

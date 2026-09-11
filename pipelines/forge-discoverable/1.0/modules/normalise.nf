process NORMALISE {
    container "${params.container__python_pandas}"
    cpus 2
    memory 8.GB
    publishDir "${params.output}", mode: "copy", overwrite: true

    input:
    path "counts.csv"

    output:
    path "normalised.csv", emit: ch_normalised_csv

    script:
    """
    normalise.py
    """
}

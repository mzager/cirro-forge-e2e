#!/usr/bin/env nextflow
nextflow.enable.dsl = 2

// Defensive: restores bin/'s executable bit if something upstream of
// Nextflow (a non-git sync, a zip download, ...) dropped it.
new File("${projectDir}/bin").listFiles()?.each { it.setExecutable(true, false) }

include { LOAD_COUNTS } from './modules/load_counts.nf'
include { NORMALISE } from './modules/normalise.nf'

workflow {
    LOAD_COUNTS()
    NORMALISE(LOAD_COUNTS.out.ch_counts_csv)
}

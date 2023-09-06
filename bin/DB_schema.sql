-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: mml_apb
-- ------------------------------------------------------
-- Server version	5.7.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allele_freq_vep_aspree`
--

DROP TABLE IF EXISTS `allele_freq_vep_aspree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allele_freq_vep_aspree` (
  `allele_freq_id` int(11) NOT NULL AUTO_INCREMENT,
  `variation_id` int(11) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `allele` varchar(255) DEFAULT NULL,
  `gene` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `feature_type` varchar(255) DEFAULT NULL,
  `consequence` varchar(255) DEFAULT NULL,
  `cdna_position` varchar(255) DEFAULT NULL,
  `cds_position` varchar(255) DEFAULT NULL,
  `protein_position` varchar(255) DEFAULT NULL,
  `amino_acids` varchar(255) DEFAULT NULL,
  `codons` varchar(255) DEFAULT NULL,
  `existing_variation` varchar(255) DEFAULT NULL,
  `impact` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `strand` varchar(5) DEFAULT NULL,
  `flags` varchar(255) DEFAULT NULL,
  `variant_class` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `symbol_source` varchar(255) DEFAULT NULL,
  `hgnc_id` varchar(255) DEFAULT NULL,
  `biotype` varchar(255) DEFAULT NULL,
  `canonical` varchar(255) DEFAULT NULL,
  `mane_select` varchar(255) DEFAULT NULL,
  `mane_plus_clinical` varchar(255) DEFAULT NULL,
  `tsl` varchar(255) DEFAULT NULL,
  `appris` varchar(255) DEFAULT NULL,
  `ccds` varchar(255) DEFAULT NULL,
  `ensp` varchar(255) DEFAULT NULL,
  `swissprot` varchar(255) DEFAULT NULL,
  `trembl` varchar(255) DEFAULT NULL,
  `uniparc` varchar(255) DEFAULT NULL,
  `uniprot_isoform` varchar(255) DEFAULT NULL,
  `refseq_match` varchar(255) DEFAULT NULL,
  `refseq_offset` varchar(255) DEFAULT NULL,
  `given_ref` varchar(255) DEFAULT NULL,
  `used_ref` varchar(255) DEFAULT NULL,
  `bam_edit` varchar(255) DEFAULT NULL,
  `gene_pheno` varchar(255) DEFAULT NULL,
  `sift` varchar(255) DEFAULT NULL,
  `polyphen` varchar(255) DEFAULT NULL,
  `exon` varchar(255) DEFAULT NULL,
  `intron` varchar(255) DEFAULT NULL,
  `domains` text,
  `mirna` varchar(255) DEFAULT NULL,
  `hgvsc` varchar(255) DEFAULT NULL,
  `hgvsp` varchar(255) DEFAULT NULL,
  `hgvs_offset` varchar(255) DEFAULT NULL,
  `af` varchar(255) DEFAULT NULL,
  `afr_af` varchar(255) DEFAULT NULL,
  `amr_af` varchar(255) DEFAULT NULL,
  `eas_af` varchar(255) DEFAULT NULL,
  `eur_af` varchar(255) DEFAULT NULL,
  `sas_af` varchar(255) DEFAULT NULL,
  `gnomade_af` varchar(255) DEFAULT NULL,
  `gnomade_afr_af` varchar(255) DEFAULT NULL,
  `gnomade_amr_af` varchar(255) DEFAULT NULL,
  `gnomade_asj_af` varchar(255) DEFAULT NULL,
  `gnomade_eas_af` varchar(255) DEFAULT NULL,
  `gnomade_fin_af` varchar(255) DEFAULT NULL,
  `gnomade_nfe_af` varchar(255) DEFAULT NULL,
  `gnomade_oth_af` varchar(255) DEFAULT NULL,
  `gnomade_sas_af` varchar(255) DEFAULT NULL,
  `gnomadg_af` varchar(255) DEFAULT NULL,
  `gnomadg_afr_af` varchar(255) DEFAULT NULL,
  `gnomadg_ami_af` varchar(255) DEFAULT NULL,
  `gnomadg_amr_af` varchar(255) DEFAULT NULL,
  `gnomadg_asj_af` varchar(255) DEFAULT NULL,
  `gnomadg_eas_af` varchar(255) DEFAULT NULL,
  `gnomadg_fin_af` varchar(255) DEFAULT NULL,
  `gnomadg_mid_af` varchar(255) DEFAULT NULL,
  `gnomadg_nfe_af` varchar(255) DEFAULT NULL,
  `gnomadg_oth_af` varchar(255) DEFAULT NULL,
  `gnomadg_sas_af` varchar(255) DEFAULT NULL,
  `max_af` varchar(255) DEFAULT NULL,
  `max_af_pops` varchar(1000) DEFAULT NULL,
  `clin_sig` varchar(255) DEFAULT NULL,
  `somatic` varchar(255) DEFAULT NULL,
  `pheno` varchar(255) DEFAULT NULL,
  `pubmed` text,
  `motif_name` varchar(255) DEFAULT NULL,
  `motif_pos` varchar(255) DEFAULT NULL,
  `high_inf_pos` varchar(255) DEFAULT NULL,
  `motif_score_change` varchar(255) DEFAULT NULL,
  `transcription_factors` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`allele_freq_id`),
  KEY `allele_freq_vep_aspree_variation_id` (`variation_id`),
  KEY `allele_freq_vep_aspree_consequence` (`consequence`),
  KEY `allele_freq_vep_aspree_gene` (`gene`),
  KEY `allele_freq_vep_aspree_feature` (`feature`),
  KEY `allele_freq_vep_aspree_feature_type` (`feature_type`)
) ENGINE=MyISAM AUTO_INCREMENT=108756 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apf_snp_annotation_mml`
--

DROP TABLE IF EXISTS `apf_snp_annotation_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apf_snp_annotation_mml` (
  `apf_snp_annotation_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `chr` varchar(255) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `coord` int(11) NOT NULL,
  `duplicate_mutation` bit(1) DEFAULT NULL,
  `igl_id` varchar(255) NOT NULL,
  `lost` bit(1) DEFAULT NULL,
  `run_id` int(11) NOT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `no_duplicate_mutation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`apf_snp_annotation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4645 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gene_apb`
--

DROP TABLE IF EXISTS `gene_apb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_apb` (
  `gene_id` int(11) NOT NULL,
  `gene_class` varchar(500) DEFAULT NULL,
  `affected_gene_name` varchar(1000) DEFAULT NULL,
  `affected_gene_symbol` varchar(255) DEFAULT NULL,
  `synonyms` varchar(1000) DEFAULT NULL,
  `allele_name` varchar(1000) DEFAULT NULL,
  `allele_symbol` varchar(500) DEFAULT NULL,
  `mgi_allele_accession_id` varchar(255) DEFAULT NULL,
  `mgi_allele_accession_id_url` varchar(1000) DEFAULT NULL,
  `allele_synonyms` varchar(1000) DEFAULT NULL,
  `protein_expression` varchar(255) DEFAULT NULL,
  `microsatellite_markers` varchar(255) DEFAULT NULL,
  `ensembl_location` varchar(255) DEFAULT NULL,
  `mutation_sequence_id` int(11) DEFAULT NULL,
  `genetic_alteration` varchar(5000) DEFAULT NULL,
  `chromosome` varchar(255) DEFAULT NULL,
  `ncbi_location` varchar(1000) DEFAULT NULL,
  `mgi_gene_accession_id` varchar(255) DEFAULT NULL,
  `mgi_gene_accession_id_url` varchar(1000) DEFAULT NULL,
  `strain_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`gene_id`),
  KEY `idx_mgi_allele_accession_id` (`mgi_allele_accession_id`),
  KEY `idx_mgi_gene_accession_id` (`mgi_gene_accession_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gene_journal_authors_mml`
--

DROP TABLE IF EXISTS `gene_journal_authors_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_journal_authors_mml` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `gene_journal_id` int(11) DEFAULT NULL,
  `authors_string` varchar(255) DEFAULT NULL,
  `authors_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  KEY `gene_journal_id` (`gene_journal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133394 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gene_journal_availabilities_mml`
--

DROP TABLE IF EXISTS `gene_journal_availabilities_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_journal_availabilities_mml` (
  `gene_journal_availabilities_id` int(11) NOT NULL AUTO_INCREMENT,
  `gene_journal_id` int(11) DEFAULT NULL,
  `mouse_availability` varchar(255) DEFAULT NULL,
  `availabilities_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`gene_journal_availabilities_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gene_journal_genes_mml`
--

DROP TABLE IF EXISTS `gene_journal_genes_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_journal_genes_mml` (
  `gene_journal_id` int(11) NOT NULL,
  `genes_string_mgi` varchar(255) NOT NULL,
  PRIMARY KEY (`gene_journal_id`,`genes_string_mgi`),
  KEY `indx_gene_journal_idon` (`gene_journal_id`),
  KEY `indx_genes_string_mgi` (`genes_string_mgi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gene_journal_mml`
--

DROP TABLE IF EXISTS `gene_journal_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_journal_mml` (
  `gene_journal_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `db_id` int(11) NOT NULL,
  `db_source` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `full_journal_name` varchar(2000) NOT NULL,
  `if_interested` bit(1) NOT NULL,
  `paper_abstract` longtext,
  `pub_date` varchar(255) NOT NULL,
  `score` decimal(19,4) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(2000) NOT NULL,
  PRIMARY KEY (`gene_journal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17781 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mgi_gene_jax`
--

DROP TABLE IF EXISTS `mgi_gene_jax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mgi_gene_jax` (
  `mgi_gene_id` int(11) NOT NULL,
  `mgi_accession_id` varchar(255) DEFAULT NULL,
  `chr` varchar(2) DEFAULT NULL,
  `end_coord` varchar(255) DEFAULT NULL,
  `feature_type` varchar(255) DEFAULT NULL,
  `genome_build` varchar(255) DEFAULT NULL,
  `marker_name` varchar(255) DEFAULT NULL,
  `marker_symbol` varchar(255) DEFAULT NULL,
  `marker_symbol_upper` varchar(255) DEFAULT NULL,
  `marker_type` varchar(255) DEFAULT NULL,
  `new_symbol` varchar(255) DEFAULT NULL,
  `shared_mgi_accession_id` varchar(255) DEFAULT NULL,
  `start_coord` varchar(255) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `strand` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`mgi_gene_id`),
  UNIQUE KEY `UC_mgi_accession_id` (`mgi_accession_id`),
  KEY `indx_mgi_accession_id` (`mgi_accession_id`),
  KEY `indx_shared_mgi_accession_id` (`shared_mgi_accession_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mgi_pheno_allele_jax`
--

DROP TABLE IF EXISTS `mgi_pheno_allele_jax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mgi_pheno_allele_jax` (
  `mgi_allele_accession_id` varchar(255) NOT NULL,
  `allele_symbol` varchar(255) DEFAULT NULL,
  `allele_name` varchar(255) DEFAULT NULL,
  `allele_type` varchar(255) DEFAULT NULL,
  `allele_attribute` varchar(255) DEFAULT NULL,
  `pubmed_id` varchar(255) DEFAULT NULL,
  `mgi_marker_accession_id` varchar(255) DEFAULT NULL,
  `marker_symbol` varchar(255) DEFAULT NULL,
  `marker_refseq_id` varchar(255) DEFAULT NULL,
  `marker_ensembl_id` varchar(255) DEFAULT NULL,
  `high_level_mammalian_phenotype_id` varchar(500) DEFAULT NULL,
  `synonyms` varchar(1000) DEFAULT NULL,
  `marker_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mgi_allele_accession_id`),
  KEY `idx_mgi_marker_accession_id` (`mgi_marker_accession_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mgi_qtl_allele_jax`
--

DROP TABLE IF EXISTS `mgi_qtl_allele_jax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mgi_qtl_allele_jax` (
  `mgi_allele_accession_id` varchar(255) NOT NULL,
  `allele_symbol` varchar(255) DEFAULT NULL,
  `allele_name` varchar(255) DEFAULT NULL,
  `allele_type` varchar(255) DEFAULT NULL,
  `pubmed_id` varchar(255) DEFAULT NULL,
  `mgi_marker_accession_id` varchar(255) DEFAULT NULL,
  `marker_symbol` varchar(255) DEFAULT NULL,
  `marker_refseq_id` varchar(255) DEFAULT NULL,
  `marker_ensembl_id` varchar(255) DEFAULT NULL,
  `marker_chromosome` varchar(255) DEFAULT NULL,
  `start_coord` varchar(255) DEFAULT NULL,
  `end_coord` varchar(255) DEFAULT NULL,
  `genome_build` varchar(255) DEFAULT NULL,
  `high_level_mammalian_phenotype_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mgi_allele_accession_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mutation_sequence_apb`
--

DROP TABLE IF EXISTS `mutation_sequence_apb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutation_sequence_apb` (
  `mutation_sequence_id` int(11) NOT NULL,
  `gene_id` varchar(255) DEFAULT NULL,
  `transcript_id` varchar(255) DEFAULT NULL,
  `transcript_name` varchar(255) DEFAULT NULL,
  `nuc_seq_from` varchar(255) DEFAULT NULL,
  `nuc_seq_to` varchar(255) DEFAULT NULL,
  `mut_seq_format` varchar(255) DEFAULT NULL,
  `cdna_position` int(11) DEFAULT NULL,
  `cds_position` int(11) DEFAULT NULL,
  `exon_number` int(11) DEFAULT NULL,
  `exon_id` varchar(255) DEFAULT NULL,
  `aa_position` int(11) DEFAULT NULL,
  `aa_from` varchar(255) DEFAULT NULL,
  `aa_to` varchar(255) DEFAULT NULL,
  `genomic_position` int(11) DEFAULT NULL,
  `intron_number` int(11) DEFAULT NULL,
  `mutation_type` varchar(255) DEFAULT NULL,
  `start_position` int(11) DEFAULT NULL,
  `end_position` int(11) DEFAULT NULL,
  `sequence` varchar(2000) DEFAULT NULL,
  `seq_position` int(11) DEFAULT NULL,
  `strand_type` varchar(255) DEFAULT NULL,
  `ensembl_build` varchar(255) DEFAULT NULL,
  `ensembl_source` varchar(255) DEFAULT NULL,
  `ensembl_export` mediumtext,
  `novel` varchar(255) DEFAULT NULL,
  `other_known_mutations` varchar(500) DEFAULT NULL,
  `phenotype_similar` varchar(500) DEFAULT NULL,
  `phenotype_difference` varchar(1000) DEFAULT NULL,
  `related_mgi_ids` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`mutation_sequence_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `protein_domain_mml`
--

DROP TABLE IF EXISTS `protein_domain_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein_domain_mml` (
  `protein_domain_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `ensembl_id` varchar(255) NOT NULL,
  `feature_type` varchar(255) DEFAULT NULL,
  `interpro_id` varchar(255) DEFAULT NULL,
  `seq_region_name` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`protein_domain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=155887 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rare_disease_classifications_mml`
--

DROP TABLE IF EXISTS `rare_disease_classifications_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rare_disease_classifications_mml` (
  `rare_disease_classifications_id` int(11) NOT NULL AUTO_INCREMENT,
  `orphanet_classification` varchar(255) DEFAULT NULL,
  `rare_disease_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rare_disease_classifications_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rare_disease_mml`
--

DROP TABLE IF EXISTS `rare_disease_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rare_disease_mml` (
  `rare_disease_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `disorder_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`rare_disease_id`),
  KEY `idx_name` (`name`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2619 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_coord_mml`
--

DROP TABLE IF EXISTS `snp_coord_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_coord_mml` (
  `snp_coord_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `assembly` varchar(255) NOT NULL,
  `chr` varchar(255) NOT NULL,
  `coord` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `snp_row_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`snp_coord_id`),
  KEY `idx_snp_id` (`snp_row_id`),
  KEY `idx_assembly` (`assembly`)
) ENGINE=MyISAM AUTO_INCREMENT=2154868 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_row_mgi_accession_mml`
--

DROP TABLE IF EXISTS `snp_row_mgi_accession_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_row_mgi_accession_mml` (
  `snp_row_mgi_accession_id` int(11) NOT NULL AUTO_INCREMENT,
  `mgi_accession_id` varchar(255) DEFAULT NULL,
  `lastescell_stage_score` int(11) DEFAULT NULL,
  `snp_row_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`snp_row_mgi_accession_id`),
  KEY `idx_mgi_accession_id` (`mgi_accession_id`),
  KEY `idx_snp_row_id` (`snp_row_id`)
) ENGINE=MyISAM AUTO_INCREMENT=796790 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_row_mml`
--

DROP TABLE IF EXISTS `snp_row_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_row_mml` (
  `snp_row_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` varchar(40) DEFAULT NULL,
  `run_id` int(11) unsigned DEFAULT NULL,
  `pipeline_version` varchar(10) DEFAULT NULL,
  `chr` varchar(40) DEFAULT NULL,
  `coord` int(11) DEFAULT NULL,
  `gene_name` varchar(40) DEFAULT NULL,
  `ref_base` varchar(4) DEFAULT NULL,
  `var_base` varchar(4) DEFAULT NULL,
  `snp_score` float(4,2) DEFAULT NULL,
  `bases_and_counts` varchar(100) DEFAULT NULL,
  `allele_freq` varchar(40) DEFAULT NULL,
  `read_depth` int(11) DEFAULT NULL,
  `median_quality_score` float(7,3) DEFAULT NULL,
  `aa_change` varchar(10) DEFAULT NULL,
  `polyphen_prediction` varchar(40) DEFAULT NULL,
  `polyphen_score` float(3,2) DEFAULT NULL,
  `polyphen_info` varchar(10000) DEFAULT NULL,
  `snp_class` enum('HOMOZYGOUS','HETEROZYGOUS','OTHER') DEFAULT NULL,
  `snp_exon_type` enum('SYN','NON-SYN','SPLICE') DEFAULT NULL,
  `final_status` varchar(40) DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `pipeline` varchar(50) DEFAULT NULL,
  `assembly` varchar(255) DEFAULT 'NCBIM37',
  `duplicate_mutation` bit(1) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `resequenced` varchar(255) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_removed` datetime DEFAULT NULL,
  `manual_removed` bit(1) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `has_rare_disease` bit(1) DEFAULT NULL,
  `backgrounds` varchar(255) DEFAULT NULL,
  `mgi_allele_novel` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `vep_amino_acid_position` int(10) unsigned DEFAULT NULL,
  `vep_ccds` varchar(40) DEFAULT NULL,
  `vep_sift_score` float(3,2) DEFAULT NULL,
  `vep_sift_prediction` varchar(80) DEFAULT NULL,
  `vep_amino_acid_change` varchar(10) DEFAULT NULL,
  `vep_codon_change` varchar(10) DEFAULT NULL,
  `project` varchar(50) DEFAULT NULL,
  `mml_project` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `druggable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`snp_row_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22297485 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_row_protein_domain_mml`
--

DROP TABLE IF EXISTS `snp_row_protein_domain_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_row_protein_domain_mml` (
  `snp_row_id` int(11) unsigned NOT NULL,
  `protein_domain_id` int(11) NOT NULL,
  PRIMARY KEY (`snp_row_id`,`protein_domain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_row_rare_disease_mml`
--

DROP TABLE IF EXISTS `snp_row_rare_disease_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_row_rare_disease_mml` (
  `snp_row_id` int(11) unsigned NOT NULL,
  `rare_disease_id` int(11) NOT NULL,
  PRIMARY KEY (`snp_row_id`,`rare_disease_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_row_vep_mml`
--

DROP TABLE IF EXISTS `snp_row_vep_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_row_vep_mml` (
  `snp_row_id` int(11) unsigned NOT NULL,
  `version` int(11) NOT NULL,
  `vep_amino_acid_position` int(11) DEFAULT NULL,
  `vep_ccds` varchar(255) DEFAULT NULL,
  `vep_sift_prediction` varchar(255) DEFAULT NULL,
  `vep_sift_score` float DEFAULT NULL,
  `vep_translation_stable_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `vep_amino_acid_change` varchar(255) DEFAULT NULL,
  `vep_codon_change` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `vep_strand` int(11) DEFAULT NULL,
  `vep_transcript_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`snp_row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snp_to_annotation_mml`
--

DROP TABLE IF EXISTS `snp_to_annotation_mml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snp_to_annotation_mml` (
  `snp_to_annotation_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `snp_annotation_id` int(11) DEFAULT NULL,
  `snp_row_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`snp_to_annotation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4645 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strain_apb`
--

DROP TABLE IF EXISTS `strain_apb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strain_apb` (
  `strain_id` int(11) NOT NULL,
  `strain_class` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `genetic_variant_name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `sequence_around_mutation` varchar(255) DEFAULT NULL,
  `phenotype_homozygous_state` longtext,
  `phenotype_heterozygous_state` text,
  `coat_colour` varchar(255) DEFAULT NULL,
  `eye_colour` varchar(255) DEFAULT NULL,
  `anomaly_name` varchar(255) DEFAULT NULL,
  `anomaly_description` text,
  `es_cell_line` varchar(255) DEFAULT NULL,
  `construction_technique` varchar(255) DEFAULT NULL,
  `patent_technologies` text,
  `ensembl` varchar(255) DEFAULT NULL,
  `candidate_gene` varchar(255) DEFAULT NULL,
  `existing_pcr_names` varchar(255) DEFAULT NULL,
  `characteristics_assayed_for` text,
  `original_genetic_background` varchar(255) DEFAULT NULL,
  `genetic_background_currently_maintained` varchar(255) DEFAULT NULL,
  `generations_backcrossed` varchar(255) DEFAULT NULL,
  `sib_mated_generations` varchar(255) DEFAULT NULL,
  `mating_scheme` varchar(255) DEFAULT NULL,
  `homozygous_matings_required` bit(1) DEFAULT NULL,
  `development_summary` text,
  `inheritance_mode` varchar(255) DEFAULT NULL,
  `male_homozygous_viable` varchar(255) DEFAULT NULL,
  `female_homozygous_viable` varchar(255) DEFAULT NULL,
  `male_homozygous_fertile` varchar(255) DEFAULT NULL,
  `female_homozygous_fertile` varchar(255) DEFAULT NULL,
  `male_hetero_hemi_fertile` longtext,
  `female_hetero_hemi_fertile` longtext,
  `percent_male_homozygous_survive_maturity` text,
  `percent_female_homozygous_survive_maturity` text,
  `percent_male_hemizygous_survive_maturity` text,
  `reproductive_maturity_age` varchar(255) DEFAULT NULL,
  `reproductive_decline_age` varchar(255) DEFAULT NULL,
  `male_fertility_compromised` bit(1) DEFAULT NULL,
  `ave_pups_at_birth` text,
  `ave_pups_survive_to_weaning` text,
  `weaning_age` varchar(255) DEFAULT NULL,
  `litters_in_lifetime` varchar(255) DEFAULT NULL,
  `breeding_performance` varchar(255) DEFAULT NULL,
  `husbandry_requirements` text,
  `investigator` varchar(255) DEFAULT NULL,
  `depositor` varchar(255) DEFAULT NULL,
  `depositor_contact_details` varchar(255) DEFAULT NULL,
  `facility_contact_details` text,
  `available` bit(1) DEFAULT NULL,
  `mta_required` bit(1) DEFAULT NULL,
  `research_value` text,
  `models_human_condition` varchar(255) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `ip_rights_associated` longtext,
  `genotype_verified_by` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `restricted_access` bit(1) DEFAULT NULL,
  `quarantined` bit(1) DEFAULT NULL,
  `depositor_id` int(11) DEFAULT NULL,
  `avail_to_researchers` varchar(255) DEFAULT NULL,
  `avail_to_third_parties` varchar(255) DEFAULT NULL,
  `obtained_elsewhere` bit(1) DEFAULT NULL,
  `source_first_name` varchar(255) DEFAULT NULL,
  `source_last_name` varchar(255) DEFAULT NULL,
  `source_email` varchar(255) DEFAULT NULL,
  `register_with_imsr` bit(1) DEFAULT NULL,
  `ilar_lab_code` varchar(255) DEFAULT NULL,
  `animal_ethics_approval_number` varchar(255) DEFAULT NULL,
  `nlrd_license` varchar(255) DEFAULT NULL,
  `have_pictures` bit(1) DEFAULT NULL,
  `phenotyping_technique` varchar(255) DEFAULT NULL,
  `phenotyping_histology_descr` varchar(255) DEFAULT NULL,
  `phenotyping_visual_descr` varchar(255) DEFAULT NULL,
  `mutagen` varchar(255) DEFAULT NULL,
  `mutant_targeted_other` varchar(255) DEFAULT NULL,
  `mutant_type_other` varchar(255) DEFAULT NULL,
  `human_cond_desc` text,
  `facility_id` varchar(255) DEFAULT NULL,
  `mgi` varchar(255) DEFAULT NULL,
  `mgi_strain_accession_id` varchar(255) DEFAULT NULL,
  `permission_to_submit` bit(1) DEFAULT NULL,
  `imsr` bit(1) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `is_gmo` bit(1) DEFAULT NULL,
  `mustererprojectid` int(11) DEFAULT NULL,
  `requiresspermanalysis` bit(1) DEFAULT NULL,
  `crispr_id` int(11) DEFAULT NULL,
  `rodentityprojectid` int(11) DEFAULT NULL,
  PRIMARY KEY (`strain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-04  4:58:44

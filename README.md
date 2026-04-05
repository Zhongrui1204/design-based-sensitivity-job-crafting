# design-based-sensitivity-job-crafting
Reproducible R code and data for design-based sensitivity analyses of pooled associations between job crafting dimensions and work engagement.
# Design-Based Sensitivity Analyses for Job Crafting Meta-Analysis

This repository contains the R script and supporting data files used to conduct the design-based sensitivity analyses reported in Section 2.3.2 of the manuscript:

**Differential Effects of Job Crafting Dimensions on Work Engagement: A Meta-Analytic Review Based on the JD-R Framework**

## Overview

The purpose of these analyses was to examine whether the primary pooled estimates were disproportionately influenced by cross-sectional evidence. To address this question, the random-effects models were re-estimated after excluding cross-sectional and dyadic cross-sectional studies.

Because a sufficient number of non-cross-sectional studies remained only for two dimensions, restricted pooled models were interpreted for:

- Increasing Challenging Job Demands
- Decreasing Hindering Job Demands

Restricted pooled models were not interpreted for:

- Increasing Structural Job Resources
- Increasing Social Job Resources

because only one non-cross-sectional estimate remained for each of these dimensions after exclusion of cross-sectional evidence.

## Files Included

- `design_based_sensitivity_analyses.R`  
  R script used to perform the primary and design-restricted random-effects meta-analytic models.

- `Increasing Challenging Job Demands.xlsx`  
  Input data file for the design-based sensitivity analyses of increasing challenging job demands.

- `Decreasing Hindering Job Demands.xlsx`  
  Input data file for the design-based sensitivity analyses of decreasing hindering job demands.

- `Increasing Challenging Job Demands.csv`  
  CSV version of the corresponding input data.

- `Decreasing Hindering Job Demands.csv`  
  CSV version of the corresponding input data.

## Analytic Approach

All models were estimated in **Fisher’s z** metric using **random-effects REML procedures** in R. For interpretive clarity, pooled estimates were subsequently converted back to **Pearson’s r**.

The design-based sensitivity analyses compared:

1. the **primary model**, based on all eligible studies for a given dimension; and  
2. the **design-restricted model**, based only on non-cross-sectional studies.

## Main Findings

For **Increasing Challenging Job Demands**, the positive pooled association with work engagement remained statistically significant after excluding cross-sectional studies, although the magnitude of the association was attenuated and heterogeneity was reduced.

For **Decreasing Hindering Job Demands**, the pooled estimate became more negative and heterogeneity was substantially reduced after excluding cross-sectional evidence, although the association remained marginal rather than conventionally significant.

## Software

The analyses were conducted in **R** using the following packages:

- `readxl`
- `metafor`

## Note

This repository is intended to document the reproducible workflow for the design-based sensitivity analyses only. It does not include the full set of analyses reported in the manuscript.

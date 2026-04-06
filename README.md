# design-based-sensitivity-job-crafting

This repository contains sensitivity-analysis scripts and supporting files for the meta-analytic study:

**Differential Effects of Job Crafting Dimensions on Work Engagement: A Meta-Analytic Review Based on the JD–R Framework**

The repository was originally created to document the **design-based sensitivity analyses** reported in Section 2.3.2 of the manuscript and has since been expanded to include the **operationalization-based sensitivity analyses** reported in Section 2.3.3. Together, these materials provide a transparent record of two complementary robustness checks applied to the four focal job crafting dimensions.

## Repository scope

The repository currently documents two forms of sensitivity analysis:

### 1. Design-based sensitivity analyses
These analyses re-estimate the random-effects models after excluding evidence derived from cross-sectional and dyadic cross-sectional designs, in order to evaluate whether the primary findings are materially dependent on studies with weaker temporal structure.

### 2. Operationalization-based sensitivity analyses
These analyses re-estimate the random-effects models after restricting the evidence base to more directly corresponding and fully differentiated JD–R-congruent operationalizations of the focal dimension. Broader three-dimensional formulations and estimates derived from partially restructured or integrated factor solutions are excluded where appropriate.

## Focal dimensions

The analyses are organized around four JD–R-based job crafting dimensions:

- Increasing structural job resources
- Increasing social job resources
- Increasing challenging job demands
- Decreasing hindering job demands

## Repository contents

Typical files in this repository include:

- `operationalization_based_sensitivity_analysis.R`  
  R script for the operationalization-based sensitivity analyses reported in Section 2.3.3

- design-based sensitivity analysis script(s) for Section 2.3.2

- dimension-specific input files used for restricted model estimation

- summary outputs corresponding to manuscript tables and results text

## Analytical purpose

The purpose of these analyses is to evaluate the robustness of the primary meta-analytic conclusions under stricter assumptions. The design-based analyses address whether the findings are influenced by study design and temporal structure, whereas the operationalization-based analyses address whether the findings are influenced by construct comparability across alternative job crafting formulations.

## Summary of findings

Across the restricted models, the positive pooled associations for:

- increasing structural job resources
- increasing social job resources
- increasing challenging job demands

were broadly retained, whereas the pooled association for:

- decreasing hindering job demands

remained weak and statistically nonsignificant. Overall, these results suggest that the principal dimension-specific conclusions of the meta-analysis are broadly robust across multiple sensitivity-analysis specifications.

## Notes

This repository is intended to support transparency and reproducibility for the sensitivity-analysis component of the manuscript. It complements, rather than replaces, the primary meta-analytic models reported in the main study.

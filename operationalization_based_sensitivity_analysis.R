library(readxl)
library(metafor)
library(dplyr)
dat_struct <- read_excel("~/Desktop/job_crafting_forest_simple/Increasing structural job resources.xlsx")
names(dat_struct)
print(dat_struct)
dat_struct_restricted <- dat_struct %>%
  filter(
    !is.na(`effect size_fisher_z`),
    !is.na(sampling_variance),
    !is.na(study_label)
  )
dat_struct_restricted %>%
  select(study_label, sample_id, n, r, `effect size_fisher_z`, sampling_variance)

cat("Number of retained effect sizes (k):", nrow(dat_struct_restricted), "\n")
cat("Retained studies:\n")
print(dat_struct_restricted$study_label)
res_struct_restricted <- rma(
  yi  = `effect size_fisher_z`,
  vi  = sampling_variance,
  data = dat_struct_restricted,
  method = "REML"
)
summary(res_struct_restricted)
pooled_z    <- as.numeric(res_struct_restricted$b)
ci_lb_z     <- res_struct_restricted$ci.lb
ci_ub_z     <- res_struct_restricted$ci.ub

pooled_r    <- tanh(pooled_z)
ci_lb_r     <- tanh(ci_lb_z)
ci_ub_r     <- tanh(ci_ub_z)
cat("\n===== Restricted model results: Increasing structural job resources =====\n")
cat("k =", res_struct_restricted$k, "\n")
cat("Pooled Fisher's z =", round(pooled_z, 3), "\n")
cat("95% CI [z] = [", round(ci_lb_z, 3), ", ", round(ci_ub_z, 3), "]\n", sep = "")
cat("Pooled r =", round(pooled_r, 3), "\n")
cat("95% CI [r] = [", round(ci_lb_r, 3), ", ", round(ci_ub_r, 3), "]\n", sep = "")
cat("Q =", round(res_struct_restricted$QE, 3), "\n")
cat("p for Q =", round(res_struct_restricted$QEp, 4), "\n")
cat("I^2 =", round(res_struct_restricted$I2, 2), "%\n")
cat("tau^2 =", round(res_struct_restricted$tau2, 4), "\n")
forest(
  res_struct_restricted,
  slab = dat_struct_restricted$study_label,
  xlab = "Effect size (Fisher's z)",
  main = "Restricted meta-analysis: Increasing structural job resources"
)
results_struct_restricted <- data.frame(
  Dimension = "Increasing structural job resources",
  k = res_struct_restricted$k,
  pooled_z = round(pooled_z, 3),
  ci_lb_z = round(ci_lb_z, 3),
  ci_ub_z = round(ci_ub_z, 3),
  pooled_r = round(pooled_r, 3),
  ci_lb_r = round(ci_lb_r, 3),
  ci_ub_r = round(ci_ub_r, 3),
  Q = round(res_struct_restricted$QE, 3),
  Q_p = round(res_struct_restricted$QEp, 4),
  I2 = round(res_struct_restricted$I2, 2),
  tau2 = round(res_struct_restricted$tau2, 4)
)

print(results_struct_restricted)
library(readxl)
library(dplyr)
library(metafor)
dat_social <- read_excel("~/Desktop/job_crafting_forest_simple/Increasing social job resources.xlsx")
names(dat_social)
print(dat_social)
dat_social_restricted <- dat_social %>%
  filter(
    !is.na(`effect size_fisher_z`),
    !is.na(sampling_variance),
    !is.na(study_label),
    !grepl("De Beer", study_label, ignore.case = TRUE)
  )
dat_social_restricted %>%
  select(study_label, sample_id, n, r, `effect size_fisher_z`, sampling_variance)

cat("Number of retained effect sizes (k):", nrow(dat_social_restricted), "\n")
cat("Retained studies:\n")
print(dat_social_restricted$study_label)
res_social_restricted <- rma(
  yi = `effect size_fisher_z`,
  vi = sampling_variance,
  data = dat_social_restricted,
  method = "REML"
)
summary(res_social_restricted)
pooled_z <- as.numeric(res_social_restricted$b)
ci_lb_z  <- res_social_restricted$ci.lb
ci_ub_z  <- res_social_restricted$ci.ub

pooled_r <- tanh(pooled_z)
ci_lb_r  <- tanh(ci_lb_z)
ci_ub_r  <- tanh(ci_ub_z)
cat("\n===== Restricted model results: Increasing social job resources =====\n")
cat("k =", res_social_restricted$k, "\n")
cat("Pooled Fisher's z =", round(pooled_z, 3), "\n")
cat("95% CI [z] = [", round(ci_lb_z, 3), ", ", round(ci_ub_z, 3), "]\n", sep = "")
cat("Pooled r =", round(pooled_r, 3), "\n")
cat("95% CI [r] = [", round(ci_lb_r, 3), ", ", round(ci_ub_r, 3), "]\n", sep = "")
cat("Q =", round(res_social_restricted$QE, 3), "\n")
cat("p for Q =", round(res_social_restricted$QEp, 4), "\n")
cat("I^2 =", round(res_social_restricted$I2, 2), "%\n")
cat("tau^2 =", round(res_social_restricted$tau2, 4), "\n")
results_social_restricted <- data.frame(
  Dimension = "Increasing social job resources",
  k = res_social_restricted$k,
  pooled_z = round(pooled_z, 3),
  ci_lb_z = round(ci_lb_z, 3),
  ci_ub_z = round(ci_ub_z, 3),
  pooled_r = round(pooled_r, 3),
  ci_lb_r = round(ci_lb_r, 3),
  ci_ub_r = round(ci_ub_r, 3),
  Q = round(res_social_restricted$QE, 3),
  Q_p = round(res_social_restricted$QEp, 4),
  I2 = round(res_social_restricted$I2, 2),
  tau2 = round(res_social_restricted$tau2, 4)
)

print(results_social_restricted)
library(readxl)
library(dplyr)
library(metafor)
dat_chal <- read_excel("~/Desktop/job_crafting_forest_simple/Increasing challenging job demands.xlsx")
names(dat_chal)
print(dat_chal)
dat_chal_restricted <- dat_chal %>%
  filter(
    !is.na(`effect size_fisher_z`),
    !is.na(sampling_variance),
    !is.na(study_label),
    !grepl("Petrou", study_label, ignore.case = TRUE),
    !grepl("Dubbelt", study_label, ignore.case = TRUE),
    !grepl("De Beer", study_label, ignore.case = TRUE)
  )
dat_chal_restricted %>%
  select(study_label, sample_id, n, r, `effect size_fisher_z`, sampling_variance)

cat("Number of retained effect sizes (k):", nrow(dat_chal_restricted), "\n")
cat("Retained studies:\n")
print(dat_chal_restricted$study_label)
res_chal_restricted <- rma(
  yi = `effect size_fisher_z`,
  vi = sampling_variance,
  data = dat_chal_restricted,
  method = "REML"
)
summary(res_chal_restricted)
pooled_z <- as.numeric(res_chal_restricted$b)
ci_lb_z  <- res_chal_restricted$ci.lb
ci_ub_z  <- res_chal_restricted$ci.ub

pooled_r <- tanh(pooled_z)
ci_lb_r  <- tanh(ci_lb_z)
ci_ub_r  <- tanh(ci_ub_z)
cat("\n===== Restricted model results: Increasing challenging job demands =====\n")
cat("k =", res_chal_restricted$k, "\n")
cat("Pooled Fisher's z =", round(pooled_z, 3), "\n")
cat("95% CI [z] = [", round(ci_lb_z, 3), ", ", round(ci_ub_z, 3), "]\n", sep = "")
cat("Pooled r =", round(pooled_r, 3), "\n")
cat("95% CI [r] = [", round(ci_lb_r, 3), ", ", round(ci_ub_r, 3), "]\n", sep = "")
cat("Q =", round(res_chal_restricted$QE, 3), "\n")
cat("p for Q =", round(res_chal_restricted$QEp, 4), "\n")
cat("I^2 =", round(res_chal_restricted$I2, 2), "%\n")
cat("tau^2 =", round(res_chal_restricted$tau2, 4), "\n")
results_chal_restricted <- data.frame(
  Dimension = "Increasing challenging job demands",
  k = res_chal_restricted$k,
  pooled_z = round(pooled_z, 3),
  ci_lb_z = round(ci_lb_z, 3),
  ci_ub_z = round(ci_ub_z, 3),
  pooled_r = round(pooled_r, 3),
  ci_lb_r = round(ci_lb_r, 3),
  ci_ub_r = round(ci_ub_r, 3),
  Q = round(res_chal_restricted$QE, 3),
  Q_p = round(res_chal_restricted$QEp, 4),
  I2 = round(res_chal_restricted$I2, 2),
  tau2 = round(res_chal_restricted$tau2, 4)
)

print(results_chal_restricted)
library(readxl)
library(dplyr)
library(metafor)
dat_hind <- read_excel("~/Desktop/job_crafting_forest_simple/Forest plot for decreasing hindering job demands.xlsx")
names(dat_hind)
print(dat_hind)
dat_hind_restricted <- dat_hind %>%
  filter(
    !is.na(`effect size_fisher_z`),
    !is.na(sampling_variance),
    !is.na(study_label),
    !grepl("Petrou", study_label, ignore.case = TRUE),
    !grepl("Dubbelt", study_label, ignore.case = TRUE)
  )
dat_hind_restricted %>%
  select(study_label, sample_id, n, r, `effect size_fisher_z`, sampling_variance)

cat("Number of retained effect sizes (k):", nrow(dat_hind_restricted), "\n")
cat("Retained studies:\n")
print(dat_hind_restricted$study_label)
res_hind_restricted <- rma(
  yi = `effect size_fisher_z`,
  vi = sampling_variance,
  data = dat_hind_restricted,
  method = "REML"
)
summary(res_hind_restricted)
pooled_z <- as.numeric(res_hind_restricted$b)
ci_lb_z  <- res_hind_restricted$ci.lb
ci_ub_z  <- res_hind_restricted$ci.ub

pooled_r <- tanh(pooled_z)
ci_lb_r  <- tanh(ci_lb_z)
ci_ub_r  <- tanh(ci_ub_z)
cat("\n===== Restricted model results: Decreasing hindering job demands =====\n")
cat("k =", res_hind_restricted$k, "\n")
cat("Pooled Fisher's z =", round(pooled_z, 3), "\n")
cat("95% CI [z] = [", round(ci_lb_z, 3), ", ", round(ci_ub_z, 3), "]\n", sep = "")
cat("Pooled r =", round(pooled_r, 3), "\n")
cat("95% CI [r] = [", round(ci_lb_r, 3), ", ", round(ci_ub_r, 3), "]\n", sep = "")
cat("Q =", round(res_hind_restricted$QE, 3), "\n")
cat("p for Q =", round(res_hind_restricted$QEp, 4), "\n")
cat("I^2 =", round(res_hind_restricted$I2, 2), "%\n")
cat("tau^2 =", round(res_hind_restricted$tau2, 4), "\n")
results_hind_restricted <- data.frame(
  Dimension = "Decreasing hindering job demands",
  k = res_hind_restricted$k,
  pooled_z = round(pooled_z, 3),
  ci_lb_z = round(ci_lb_z, 3),
  ci_ub_z = round(ci_ub_z, 3),
  pooled_r = round(pooled_r, 3),
  ci_lb_r = round(ci_lb_r, 3),
  ci_ub_r = round(ci_ub_r, 3),
  Q = round(res_hind_restricted$QE, 3),
  Q_p = round(res_hind_restricted$QEp, 4),
  I2 = round(res_hind_restricted$I2, 2),
  tau2 = round(res_hind_restricted$tau2, 4)
)

print(results_hind_restricted)

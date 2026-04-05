library(readxl)
library(metafor)
data <- read_excel("~/Desktop/design_based_sensitivity_preparation/Increasing Challenging Job Demands.xlsx")
names(data)
res_main <- rma(
  yi = `effect size_fisher_z`,
  vi = sampling_variance,
  data = data,
  method = "REML"
)

summary(res_main)
predict(res_main, transf = transf.ztor)
data_temporal <- subset(data, design_group == "temporal_design")
res_temporal <- rma(
  yi = `effect size_fisher_z`,
  vi = sampling_variance,
  data = data_temporal,
  method = "REML"
)

summary(res_temporal)
predict(res_temporal, transf = transf.ztor)



library(readxl)
library(metafor)
data <- read_excel("~/Desktop/design_based_sensitivity_preparation/Decreasing Hindering Job Demands.xlsx")
names(data)
names(data)[names(data) == "effect size_fisher_z"] <- "effect_size_fisher_z"
names(data)[names(data) == "standard error"] <- "standard_error"
names(data)
res_main <- rma(
  yi = effect_size_fisher_z,
  vi = sampling_variance,
  data = data,
  method = "REML"
)

summary(res_main)
predict(res_main, transf = transf.ztor)
data_temporal <- subset(data, design_group == "temporal_design")

data_temporal
nrow(data_temporal)

res_temporal <- rma(
  yi = effect_size_fisher_z,
  vi = sampling_variance,
  data = data_temporal,
  method = "REML"
)

summary(res_temporal)
predict(res_temporal, transf = transf.ztor)
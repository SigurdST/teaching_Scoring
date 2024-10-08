# loading data and inspecting it:
data_fin_exam <- readRDS('exam/data/data_fin_exam.rds')

# UNCOMMENT IF NEEDED
# https://statsandr.com/blog/an-efficient-way-to-install-and-load-r-packages/
# Package names
packages <- c("tidyverse", "ROCR", "car", "aod", "broom", "rsample", "bestglm", "glmnet", "glmnetUtils", "splines")
# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
install.packages(packages[!installed_packages]) }
# # Packages loading
invisible(lapply(packages, library, character.only = TRUE))
#
# Additional packages used throughout the course but not needed for the analysis
additional_packages <- c( "purrr", "pROC", "foreign", "patchwork", "class",
"scales", "rpart", "rpart.plot", "DescTools")
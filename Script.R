#Load packages
library(foreign)
library(psych)

#Read in data
data <- read.spss("Lambert et al. (2012).sav", to.data.frame = TRUE)

#Mediation
set.seed(123)
med.model <- mediate(y = "Phys_Inf", x = "LnPorn", m = "Commit",
                         data = data)
summary(med.model)

set.seed(123)
med.model.std <- mediate(y = "Phys_Inf", x = "LnPorn", m = "Commit",
                         data = data, std = TRUE)
summary(med.model.std)

library(readxl,ggplot2)

# Retrieving data sets
conditional_survival<-read.csv("~/Programming/Datasets/5_year_conditional_relative_survival_rates_2000-2018.csv",header=TRUE)
stage_distribution<-read.csv(file="~/Programming/Datasets/cancer_sites_stage_distribution_2010-2019.csv",header=TRUE)
birth_risk<-read.csv("~/Programming/Datasets/cancer_risk_from_birth_over_time_2017-2019.csv",header=TRUE)
risk_comparison<-read.csv("~/Programming/Datasets/comparison_of_cancer_risk_2017-2019.csv",header=TRUE)
longterm_incidence<-read.csv("~/Programming/Datasets/long_term_trends_in_age_adjusted_incidence_rates_1975-2019.csv",header=TRUE)
longterm_mortality<-read.csv("~/Programming/Datasets/long_term_trends_in_age_adjusted_mortality_rates_1975-2020.csv.csv",header=TRUE)
alive_with_cancer<-read.csv("~/Programming/Datasets/people_alive_with_cancer_US_prevalence_jan1_2019.csv",header=TRUE)
funding_nci_2018<-read_excel("~/Programming/Datasets/NCIPortfolioData_FY2018.xls",skip=1,col_names = TRUE)

# Making charts
## Pie charts
for (i in c(1:10)) {
  pie(x=as.numeric(stage_distribution[3:6,i+1]),labels=stage_distribution[3:6,1],main=colnames(stage_distribution[i+1]))
}

s<-funding_nci_2018[order(funding_nci_2018$`Total Funded Amount`,decreasing=TRUE),]
pie(x=s$`Total Funded Amount`[1:15],labels=s$`Category Name`[1:15])
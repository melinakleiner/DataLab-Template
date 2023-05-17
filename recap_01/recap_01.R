library(data.table)
library(magrittr)
library(knitr)

# Read data
survey <- fread("innovation_survey.csv")

str(survey)

survey %>%
    # [i, j, by]
    .[, .(bges)] %>%
    # plot a histogram
    with(hist(bges, breaks = 20, main = "Histogram of BGES", xlab = "BGES"))


survey %>%
    # [i, j, by]
    .[, .(bges)] %>%
    # transform the data with log
    log() %>%
    # plot a histogram
    with(hist(bges, breaks = 20, main = "Histogram of BGES", xlab = "BGES"))

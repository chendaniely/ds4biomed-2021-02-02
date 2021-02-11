library(tidyverse)

read_csv("data/spreadsheets/exercise-010-050.csv")

spreadsheet_df <- read_csv("data/spreadsheets/exercise-010-050.csv")

# load the tumor data into the variable tumor
tumor <- read_csv("data/medicaldata_tumorgrowth.csv")

library(readxl)
tumor_xl <- read_excel("data/medicaldata_tumorgrowth.xlsx")

tumor

select(tumor, Size, Day, Group)

tumor %>%
  select(Size, Day, Group)

filter(tumor, Group == 1)

tumor %>%
  filter(Group == 1)

tumor %>%
  filter(Group == 1, Day == 0)

tumor %>%
  filter(Group == 1 & Day == 0)

tumor %>%
  filter(Day == 0 | Day == 13)

tumor %>%
  select(Group, Day, Size) %>%
  filter(Size > 2000)

filtered <- tumor %>%
  select(Group, ID, Day, Size) %>%
  filter(Day == 0 | Day == 13)

write_csv(filtered, "data/tumor_filtered.csv")


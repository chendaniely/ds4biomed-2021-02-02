library(tidyverse)

tumor_subset <- read_csv("data/tumor_filtered.csv")
tumor_subset

tumor_subset %>%
  filter(Day == 0) %>%
  select(Size)

tumor_subset %>%
  filter(Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  filter(Group == 2, Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  filter(Group == 3, Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  filter(Group == 4, Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  pull(Group) %>%
  unique()

tumor_subset %>%
  filter(Day == 0) %>%
  group_by(Group) %>%
  summarize(avg_size = mean(Size),
            sd_size = sd(Size))

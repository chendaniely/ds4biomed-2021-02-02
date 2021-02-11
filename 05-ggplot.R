library(tidyverse)
library(ggplot2)
library(medicaldata)

blood_storage

names(blood_storage)

ggplot(data = blood_storage)

ggplot(data = blood_storage, mapping = aes(x = Recurrence)) + geom_bar()

ggplot(data = blood_storage, mapping = aes(x = Age)) + geom_histogram()

ggplot(data = blood_storage, mapping = aes(x = Age)) + geom_histogram(bins = 10)

ggplot(blood_storage, aes(x = PVol,
                          y = PreopPSA,
                          color = as.factor(sGS))) +
  geom_point() +
  facet_wrap(~ RBC.Age.Group)

ggplot(blood_storage, aes(x = PVol,
                          y = PreopPSA,
                          color = as.factor(sGS))) +
  geom_point() +
  facet_grid(Recurrence ~ RBC.Age.Group)

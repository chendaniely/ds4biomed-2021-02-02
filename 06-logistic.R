library(tidyverse)
library(medicaldata)

blood <- blood_storage

mod1 <- glm(Recurrence ~ Age, data = blood, family = "binomial")
mod1

summary(mod1)

library(broom)

res1 <- tidy(mod1)

class(mod1)
class(res1)

res1 %>%
  mutate(odds = exp(estimate))

mod2 <- glm(Recurrence ~ Age + PVol + PreopPSA,
            data = blood,
            family = "binomial")
mod2
summary(mod2)

mod3 <- glm(Recurrence ~ Age + PVol + PreopPSA + TVol,
            data = blood,
            family = "binomial")
mod3
summary(mod3)

mod3 <- glm(Recurrence ~ Age + PVol + PreopPSA + as.factor(TVol),
            data = blood,
            family = "binomial")
mod3
summary(mod3)

model.matrix(mod3) %>%
  head()

betas <- mod3 %>%
  tidy() %>%
  mutate(odds = exp(estimate))

library(ggplot2)

ggplot(betas, aes(x = term, y = odds)) +
  geom_point() +
  coord_flip()

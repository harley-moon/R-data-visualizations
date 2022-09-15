#install ggplot2 package and Palmer Penguins dataset
install.packages("tidyverse")
library("ggplot2")
install.packages("palmerpenguins")
library("palmerpenguins")

#creation of vertical bar chart displaying species distribution across archipelago
ggplot(data=penguins) +
  geom_bar(mapping=aes(x=island, fill=species)) +
  labs(title="Palmer Archipelago: Species Distribution",
       x="Island", y="Count",
       fill="Species") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe", "#0abdba"))

#creation of vertical bar chart displaying sex distribution across archipelago
ggplot(data=penguins) +
  geom_bar(mapping=aes(x=island, fill=sex)) +
  labs(title="Palmer Archipelago: Sex Distribution",
       x="Island", y="Count",
       fill="Sex") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe"))

#creation of horizontal bar chart displaying sex distribution across species
ggplot(data=penguins) +
  geom_bar(mapping=aes(x=sex, fill=species)) +
  labs(title="Palmer Penguins: Sex Distribution",
       x="Sex", y="Count",
       fill="Species") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe", "#0abdba")) +
  facet_wrap(~species, ncol = 1) +
  coord_flip()

#creation of scatter plot comparing body mass to flipper length
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,
                         shape=species, color=species), size=2) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",
       x="Flipper Length (mm)", y="Body Mass (g)", 
       color="Species", shape="Species") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_color_manual(values=c("#4589fe", "#BE96FF", "#0abdba"))

#creation of scatter plot comparing bill depth to bill length
ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm, y=bill_depth_mm,
                         shape=species, color=species), size=2) +
  labs(title="Palmer Penguins: Bill Depth vs. Bill Length",
       x="Bill Length (mm)", y="Bill Depth (mm)", 
       color="Species", shape="Species") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_color_manual(values=c("#4589fe", "#BE96FF", "#0abdba"))

#creation of histogram displaying body mass by species
ggplot(data=penguins) +
  geom_histogram(mapping=aes(x=body_mass_g, fill=species)) +
  labs(title="Palmer Penguins: Body Mass by Species",
       x="Body Mass (g)", y="Frequency",
       fill="Species") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe", "#0abdba"))

#creation of histogram displaying body mass by sex
ggplot(data=penguins) +
  geom_histogram(mapping=aes(x=body_mass_g, fill=sex)) +
  labs(title="Palmer Penguins: Body Mass by Sex",
       x="Body Mass (g)", y="Frequency",
       fill="Sex") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe"))

#creation of histogram displaying body mass by island
ggplot(data=penguins) +
  geom_histogram(mapping=aes(x=body_mass_g, fill=island)) +
  labs(title="Palmer Penguins: Body Mass by Island",
       x="Body Mass (g)", y="Frequency",
       fill="Island") +
  theme_minimal() +
  theme(text=element_text(family="Lato")) +
  scale_fill_manual(values=c("#4589fe", "#d4bbfe", "#0abdba"))
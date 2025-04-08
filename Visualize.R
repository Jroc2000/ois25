if (!require("ggplot2")) install.packages("ggplot2", repos = "https://cloud.r-project.org")

library(ggplot2)

# Utiliser le dataset intégré 'mtcars'
data("mtcars")

# Créer une visualisation : scatterplot + densité + régression linéaire
plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(color = cyl), size = 3) +               # Points colorés selon le nombre de cylindres
  geom_smooth(method = "lm", se = FALSE, color = "black") + # Ligne de régression
  scale_color_gradient(low = "blue", high = "red") +
  labs(
    title = "Consommation vs. Poids des véhicules",
    subtitle = "Données mtcars - Régression linéaire et nombre de cylindres",
    x = "Poids (en milliers de livres)",
    y = "Miles par gallon (mpg)",
    color = "Cylindres"
  ) +
  theme_minimal()

# Afficher
print(plot)


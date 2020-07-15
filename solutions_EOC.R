# ggplot2 EOC exercises

# 1.
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  geom_smooth(method = "loess")

# 2./3.
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  geom_smooth(method = "loess",
              mapping = aes(x = mpg, y = hp, group = cyl, col = factor(cyl)),
              se = F
              )

# 4.
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  geom_smooth(method = "lm", se = F, color = "red") +
  geom_smooth(method = "lm", se = F, formula = y ~ I(x^2), color = "blue")

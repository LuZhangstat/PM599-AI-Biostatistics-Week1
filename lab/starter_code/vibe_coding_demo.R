# =============================================================================
# PM599 Week 1 Lab — Vibe Coding Demo
# Session: May 26, 2026
# =============================================================================
#
# WHAT IS VIBE CODING?
# Vibe coding means using an AI tool (ChatGPT, Claude, Gemini) to help you
# write, explain, and debug code iteratively. You describe what you want in
# plain language; the AI drafts code; you review, test, and refine together.
#
# THE GOLDEN RULE: You are responsible for every line.
# AI makes mistakes. Always read, understand, and test the code it produces
# before trusting the output.
#
# HOW TO USE THIS SCRIPT:
# Run it section by section. At each [AI PROMPT] comment, try asking an AI
# tool to help you modify or extend the code as instructed.
# =============================================================================

# -----------------------------------------------------------------------------
# SECTION 1: Setup
# -----------------------------------------------------------------------------

# Install packages if needed (run once, then comment out)
# install.packages(c("ggplot2", "dplyr", "survival", "survminer"))

library(ggplot2)
library(dplyr)

# -----------------------------------------------------------------------------
# SECTION 2: Simulate a Dataset
# -----------------------------------------------------------------------------
# We will simulate a simple clinical trial dataset.
# Two treatment groups; continuous outcome (systolic blood pressure at 6 months).

set.seed(42)
n <- 100  # total sample size

sim_data <- data.frame(
  patient_id  = 1:n,
  group       = rep(c("Treatment", "Control"), each = n / 2),
  age         = round(rnorm(n, mean = 55, sd = 10)),
  baseline_sbp = round(rnorm(n, mean = 145, sd = 15)),   # mmHg
  followup_sbp = c(
    round(rnorm(n / 2, mean = 130, sd = 12)),  # Treatment: larger reduction
    round(rnorm(n / 2, mean = 140, sd = 12))   # Control:   smaller reduction
  )
)

# Compute change from baseline
sim_data <- sim_data |>
  mutate(sbp_change = followup_sbp - baseline_sbp)

# Quick look at the data
head(sim_data)
summary(sim_data)

# [AI PROMPT 1] ---------------------------------------------------------------
# "Looking at the sim_data data frame, write R code to compute the mean and
#  standard deviation of sbp_change separately for the Treatment and Control
#  groups. Show the result in a tidy table."
# Paste the AI's code below and test it:

# < paste AI code here >


# -----------------------------------------------------------------------------
# SECTION 3: Visualize the Outcome
# -----------------------------------------------------------------------------

# Box plot of SBP change by group
ggplot(sim_data, aes(x = group, y = sbp_change, fill = group)) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(width = 0.15, alpha = 0.4, size = 1.5) +
  scale_fill_manual(values = c("Treatment" = "#990000", "Control" = "#FFC72C")) +
  labs(
    title    = "Change in Systolic Blood Pressure by Group",
    subtitle = "Simulated clinical trial data (n = 100)",
    x        = "Group",
    y        = "SBP Change from Baseline (mmHg)",
    fill     = "Group"
  ) +
  theme_minimal(base_size = 13) +
  theme(legend.position = "none")

# [AI PROMPT 2] ---------------------------------------------------------------
# "Modify the ggplot code above to also add a horizontal dashed line at y = 0
#  to mark no change, and add the mean of each group as a red diamond point."
# Paste the AI's code below and test it:

# < paste AI code here >


# -----------------------------------------------------------------------------
# SECTION 4: Statistical Test
# -----------------------------------------------------------------------------

# Two-sample t-test: is the mean SBP change different between groups?
t_result <- t.test(sbp_change ~ group, data = sim_data)
print(t_result)

# [AI PROMPT 3] ---------------------------------------------------------------
# "Explain the output of the t.test() result above in plain language, suitable
#  for a methods section of a clinical paper. Include the test statistic,
#  degrees of freedom, p-value, and 95% confidence interval."
# Paste the AI's explanation below as a comment:

# AI explanation:
#


# -----------------------------------------------------------------------------
# SECTION 5: Simple Linear Regression
# -----------------------------------------------------------------------------

# Does age predict the magnitude of SBP reduction?
lm_fit <- lm(sbp_change ~ age + group, data = sim_data)
summary(lm_fit)

# [AI PROMPT 4] ---------------------------------------------------------------
# "Write R code to create a scatter plot of age (x-axis) vs. sbp_change
#  (y-axis), with separate regression lines for Treatment and Control groups,
#  using ggplot2. Color the points and lines by group using USC colors
#  (#990000 for Treatment, #FFC72C for Control)."
# Paste the AI's code below and test it:

# < paste AI code here >


# -----------------------------------------------------------------------------
# SECTION 6: Your Turn — Modify the Scenario
# -----------------------------------------------------------------------------

# [EXERCISE] ------------------------------------------------------------------
# Use an AI tool to help you modify this analysis for a different scenario.
# Pick ONE of the following and ask the AI to rewrite the simulation:
#
#   a) Change the outcome to a binary variable (e.g., "responded to treatment:
#      yes/no") and run a chi-squared test instead of a t-test.
#
#   b) Add a third group (e.g., "Low Dose", "High Dose", "Control") and use
#      a one-way ANOVA instead of a t-test.
#
#   c) Add a covariate (e.g., sex: male/female) and extend the regression model
#      to include it as an additional predictor.
#
# Suggested prompt template:
# "I have this R simulation code [paste Section 2]. Modify it so that [describe
#  your chosen scenario]. Then update the statistical test accordingly."
#
# Paste your modified code below:

# < paste modified code here >


# =============================================================================
# END OF SCRIPT
# Remember: read, understand, and test every line the AI produces.
# If the code runs but gives unexpected results, that is just as important
# to investigate as code that throws an error.
# =============================================================================

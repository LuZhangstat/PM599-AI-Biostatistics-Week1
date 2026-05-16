# =============================================================================
# PM599 Week 1 Lab — Vibe Coding Demo (Python version)
# Session: May 26, 2026
# =============================================================================
#
# This script mirrors the R demo but uses Python (pandas, scipy, matplotlib).
# R is the primary language for this course; this file is a secondary reference
# for students more comfortable with Python.
#
# HOW TO USE: Run section by section. At each [AI PROMPT], ask an AI tool
# to help you extend or modify the code as instructed.
# =============================================================================

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats

# Set random seed for reproducibility
np.random.seed(42)

# -----------------------------------------------------------------------------
# SECTION 2: Simulate a Dataset
# -----------------------------------------------------------------------------

n = 100  # total sample size
group = ["Treatment"] * (n // 2) + ["Control"] * (n // 2)

sim_data = pd.DataFrame({
    "patient_id":   range(1, n + 1),
    "group":        group,
    "age":          np.round(np.random.normal(55, 10, n)).astype(int),
    "baseline_sbp": np.round(np.random.normal(145, 15, n)).astype(int),
    "followup_sbp": np.concatenate([
        np.round(np.random.normal(130, 12, n // 2)),   # Treatment
        np.round(np.random.normal(140, 12, n // 2))    # Control
    ]).astype(int),
})

sim_data["sbp_change"] = sim_data["followup_sbp"] - sim_data["baseline_sbp"]

print(sim_data.head())
print(sim_data.describe())

# [AI PROMPT 1] ---------------------------------------------------------------
# "Using the sim_data DataFrame, write Python code with pandas to compute the
#  mean and standard deviation of sbp_change separately for Treatment and
#  Control groups."
# Paste AI code here:


# -----------------------------------------------------------------------------
# SECTION 3: Visualize the Outcome
# -----------------------------------------------------------------------------

fig, ax = plt.subplots(figsize=(7, 5))

for i, (grp, color) in enumerate(zip(["Treatment", "Control"], ["#990000", "#FFC72C"])):
    subset = sim_data[sim_data["group"] == grp]["sbp_change"]
    ax.boxplot(subset, positions=[i], widths=0.5, patch_artist=True,
               boxprops=dict(facecolor=color, alpha=0.7))
    ax.scatter(np.random.normal(i, 0.05, len(subset)), subset,
               color=color, alpha=0.4, s=20, zorder=3)

ax.axhline(0, linestyle="--", color="gray", linewidth=1, label="No change")
ax.set_xticks([0, 1])
ax.set_xticklabels(["Treatment", "Control"])
ax.set_ylabel("SBP Change from Baseline (mmHg)")
ax.set_title("Change in Systolic Blood Pressure by Group\n(Simulated data, n=100)")
plt.tight_layout()
plt.show()

# [AI PROMPT 2] ---------------------------------------------------------------
# "Modify the plot above to add the group mean as a red diamond marker on
#  each box, and add a legend."
# Paste AI code here:


# -----------------------------------------------------------------------------
# SECTION 4: Statistical Test
# -----------------------------------------------------------------------------

treatment = sim_data[sim_data["group"] == "Treatment"]["sbp_change"]
control   = sim_data[sim_data["group"] == "Control"]["sbp_change"]

t_stat, p_value = stats.ttest_ind(treatment, control)
print(f"t = {t_stat:.3f}, p = {p_value:.4f}")

# [AI PROMPT 3] ---------------------------------------------------------------
# "Explain the two-sample t-test result above in plain language for a methods
#  section. Include the test statistic, p-value, and interpretation."
# AI explanation (paste as comment):
#


# =============================================================================
# END OF PYTHON DEMO
# Primary course language is R — refer to vibe_coding_demo.R for the full
# version with additional exercises.
# =============================================================================

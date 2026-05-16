---
output:
  html_document: default
  pdf_document: default
---
# Lab 1 — Hands-On with AI Tools and Vibe Coding in R

**Course:** PM599: AI as a Tool for Biostatistics
**Date:** May 26, 2026 · 1:00–2:50 PM · SSB-114
**Instructor:** Lu Zhang

---

## Before You Begin

Make sure you have all three platforms open in browser tabs:
- **ChatGPT:** chatgpt.com (sign in with your USC account)
- **Claude:** claude.ai (free account)
- **Gemini:** gemini.google.com (sign in with Google account)

And have **RStudio** (or R) open with the starter script:
`week1/lab/starter_code/vibe_coding_demo.R`

---

## Lab Overview

| Activity | Time | Description |
|----------|------|-------------|
| Setup | 1:00–1:10 | Account checks, privacy settings, personalization |
| Activity 1 | 1:10–1:40 | Platform comparison |
| Activity 2 | 1:40–2:10 | Prompt refinement |
| Break | 2:10–2:15 | 5 min |
| Activity 3 | 2:15–2:45 | Vibe coding in R (demo-led) |
| Wrap-up | 2:45–2:50 | Debrief and HW1 overview |

---

## Setup (1:00–1:10 PM)

### Privacy Settings

Follow the instructor's demonstration to configure data privacy settings:

**ChatGPT:**
1. Click your profile icon (top right) → Settings → Data Controls
2. Turn OFF *"Improve the model for everyone"*

**Claude.ai:**
- Anthropic does not use Claude.ai conversations to train models by default
- Verify by checking Settings → Privacy

---

### Privacy Settings (cont.)

**Gemini:**
1. Go to myactivity.google.com
2. Find "Gemini Apps Activity" → turn off activity saving

> **Why this matters:** AI services may use your conversations to retrain models.
> For research involving preliminary data, unpublished ideas, or anything sensitive,
> always check privacy settings first.

---

### Personalize Your LLM

Tell each platform who you are so it doesn't assume you are a general user.

**ChatGPT** — Settings → Personalization → "What would you like ChatGPT to know about you?"

**Claude** — Paste this at the start of a new conversation:
```
I am a graduate student in biostatistics at USC. I am comfortable with
statistical concepts (regression, hypothesis testing, probability) and
code in R. Please give technical, precise answers using statistical
terminology. When showing code, use R unless I specify otherwise.
```

**Try it:** Ask each platform "What is the difference between a fixed effect and a
random effect?" Notice how responses differ after personalization.

---

## Activity 1 — Platform Comparison (1:10–1:40 PM)

**Objective:** Compare how different LLMs respond to the same biostatistics prompts.
**Format:** Individual work, group discussion at the end.

### Instructions

Run each of the prompts below through **at least two platforms**. Record the responses
(copy-paste into a notes document or screenshot). At the end, compare with a neighbor.

---

**Prompt 1 — Explain a concept:**

> Explain what a p-value means in plain language. Avoid the phrase "probability that
> the null hypothesis is true."

*Things to look for:* Is the explanation accurate? Does it avoid common
misconceptions (e.g., confusing p-value with effect size)? Is it clear?

---

**Prompt 2 — Interpret a result:**

> In a logistic regression model, I get an odds ratio of 2.3 with a 95% confidence
> interval of (1.1, 4.8) and p = 0.03 for the predictor "smoking status." The outcome
> is 5-year cardiovascular disease. Interpret this result for a clinical audience.

*Things to look for:* Does it correctly interpret the OR? Does it mention uncertainty
(the CI is wide)? Does it note that this is an adjusted or unadjusted estimate?

---

### Discussion Questions

After running the prompts, discuss with your neighbor:

1. Which platform gave the most accurate answer for Prompt 1? Did any make an error?
2. Did any platform add a disclaimer or hedge its answer? Was that appropriate?
3. Would you trust these outputs in a research context without verification? Why or why not?

*Note: R-code generation is covered in the Activity 3 demo.*

---

## Activity 2 — Prompt Refinement (1:40–2:10 PM)

**Objective:** Improve a weak prompt step by step and observe how responses change.
**Format:** Pairs or individual work.

### Background

A strong prompt typically provides:
- **Role:** Who should the AI act as?
- **Context:** What is the situation?
- **Task:** What exactly do you need?
- **Format:** How should the answer be structured?

---

### Exercise

Start with this weak prompt:

> "Explain confounding."

Then improve it through the following steps. Run each version and note what changes.

**Version 2 — Add role, audience, and context:**
> "You are a biostatistics professor. Explain confounding to a first-year public
> health MPH student who just learned about regression. Use an example from
> environmental health research."

---

**Version 3 — Add format:**
> "You are a biostatistics professor. Explain confounding to a first-year public
> health MPH student who just learned about regression. Use an example from
> environmental health research. Structure your answer as:
> (1) definition in one sentence, (2) a concrete example, (3) how to address it
> in analysis, (4) a common mistake to avoid."

**Record:** How did the quality and relevance of the answer change at each step?
Which addition made the biggest difference for you?

---

### Your Turn

Pick any biostatistics topic you are curious about and write a Version 3-style
prompt from scratch. Try it on two platforms. Share with the group if time allows.

---

## Activity 3 — Vibe Coding in R, Demo-Led (2:15–2:45 PM)

**Objective:** See vibe coding in action — generate, verify, and correct R code with AI assistance.

### Instructor demo (~20 min)

The instructor walks through `week1/lab/starter_code/vibe_coding_demo.R`:
- Sections 2–4: simulate a clinical trial dataset, box plot, two-sample t-test
- At one `[AI PROMPT]` marker: prompt an LLM live, paste, run, verify the output

> **The golden rule of vibe coding:** You are responsible for every line.
> AI-generated code that runs is not necessarily *correct* code.

---

### Student turn (~10 min)

Open the starter script in RStudio. Pick **one** `[AI PROMPT]` marker and run it
through ChatGPT, Claude, or Gemini. Paste, run, and verify the result.

**Watch for:**
- Does the AI use variable names that match your data frame?
- Does it assume packages are loaded that you haven't loaded?
- Does the verbal explanation match what the code actually does?

> **Continue in HW1:** The extension exercise (modify the simulation for a
> binary outcome / three groups / added covariate) is now part of HW1.
> See [homework/hw1.md](../homework/hw1.md) for full instructions.

---

## Wrap-Up and HW1 (2:45–2:50 PM)

**Quick debrief — show of hands:**
- Who found a factual error in an AI response today?
- Who had AI-generated code that didn't run on the first try?
- Who was surprised by how well (or how poorly) the AI performed?

**Homework 1:** Compare AI tools on a biostatistics task of your choice.
Full instructions at [homework/hw1.md](../homework/hw1.md).
**Due: May 28, 2026 before class. Submit via Brightspace.**

---

## Key Takeaways from Today

1. Different LLMs perform differently on the same prompt — always verify.
2. Prompt quality matters enormously; small changes can dramatically improve responses.
3. AI-generated code runs ≠ AI-generated code is correct.
4. Privacy settings are a non-negotiable first step before any research use.
5. You — not the AI — are responsible for the accuracy of your analysis.

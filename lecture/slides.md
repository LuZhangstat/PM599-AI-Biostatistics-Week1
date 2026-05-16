---
marp: true
theme: default
paginate: true
html: true
header: '![h:50](https://identity.usc.edu/wp-content/uploads/2022/08/TheShield.png)'
backgroundColor: #ffffff
color: #1e293b
style: |
  section {
    font-family: 'Inter', -apple-system, sans-serif;
    position: relative;
    padding-top: 80px;
    border-top: 4px solid #990000;
    text-align: center;
  }
  section > *:not(header):not(footer) {
    text-align: left;
  }
  section img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  header {
    position: absolute;
    top: 12px;
    left: 20px;
    height: 50px;
  }
  header img {
    height: 50px;
    width: auto;
  }
  h1, h2 { color: #990000; }
  h1 { font-size: 1.6em; }
  h3 { color: #990000; }
  code {
    background: #fdf2f2;
    color: #990000;
    border-radius: 4px;
    padding: 2px 8px;
  }
  strong { color: #990000; }
  em { color: #7a0000; }
  blockquote {
    border-left: 5px solid #990000;
    background: #fdf2f2;
    padding: 0.7em 1em;
    color: #6b0000;
    border-radius: 0 4px 4px 0;
  }
  a { color: #990000; }
  table {
    width: 100%;
    border-collapse: collapse;
    color: #1e293b;
    margin-top: 0.6em;
  }
  th {
    background: #990000;
    color: #ffffff;
    padding: 8px 10px;
    text-align: left;
    font-size: 0.9em;
  }
  th strong, th em, th code, th a { color: #ffffff; }
  td {
    background: #f8fafc;
    color: #334155;
    padding: 7px 10px;
    border-bottom: 1px solid #e2e8f0;
    font-size: 0.88em;
  }
  tr:nth-child(even) td { background: #fff9e6; }
  tr:last-child td { border-bottom: none; }
  section::after {
    position: absolute;
    bottom: 12px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 0.75em;
    color: #990000;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    font-weight: 600;
    content: attr(data-marpit-pagination) " / " attr(data-marpit-pagination-total);
  }
  section[data-topic]::after {
    content: attr(data-topic) "  •  " attr(data-marpit-pagination) " / " attr(data-marpit-pagination-total);
  }
  section.title {
    display: flex;
    flex-direction: column;
    justify-content: center;
    border-top: 8px solid #990000;
  }
  section.title h1 { font-size: 2em; }
  section.title h2 { color: #475569; font-weight: 400; }
  section.part {
    background: linear-gradient(135deg, #990000 0%, #7a0000 100%);
    color: #ffffff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    border-top: none;
  }
  section.part h1 { color: #FFC72C; font-size: 2em; }
  section.part h2 { color: #ffffff; font-weight: 300; }
  section.part p { color: #fde8e8; }
  section.poll {
    background-color: #fffbeb;
    border-top: 4px solid #FFC72C;
  }
  section.poll h1 { color: #92400e; }
  section.ethics {
    background-color: #faf5ff;
    border-top: 4px solid #7c3aed;
  }
  section.ethics h1 { color: #5b21b6; }
  section.ethics strong { color: #5b21b6; }
  section.ethics blockquote {
    border-left: 5px solid #7c3aed;
    background: #ede9fe;
    color: #3b0764;
    padding: 0.6em 1em;
  }
  span.cite {
    font-size: 0.68em;
    color: #64748b;
    font-style: italic;
  }
  section.ethics span.cite { color: #7c3aed; }
---

<!-- _class: title -->

# PM599: AI as a Tool for Biostatistics

## Week 1 — Introduction to LLMs and Generative AI

**Lu Zhang** · Division of Biostatistics · USC Keck School of Medicine
May 21, 2026 (Thursday)

---

<!-- _data-topic: "Course Overview" -->

# Welcome to PM599

**What this course is about:**
Using state-of-the-art AI tools to assist biostatisticians and data scientists — in code writing, data analysis, scientific communication, and critical thinking.

**What this course is not:**
- A machine learning or deep learning course
- A course on building AI systems
- A replacement for statistical rigor or domain expertise

> The goal is to make you a **thoughtful, effective, and responsible** user of AI tools in biostatistical research.

---

<!-- _data-topic: "Course Overview" -->

# Six Weeks, Six Topics

| Week | Dates | Topic |
|------|-------|-------|
| **1** | Thu 5/21, Tue 5/26 | **Intro to LLMs · Generative AI in Biostatistics** |
| 2 | Thu 5/28, Mon 6/2 | Prompt Engineering |
| 3 | Thu 6/4, Mon 6/9 | AI-Assisted Data Cleaning · Data Privacy |
| 4 | Thu 6/11, Mon 6/16 | Statistical Analysis · Bias |
| 5 | Thu 6/18, Mon 6/23 | Figures and Tables |
| 6 | Thu 6/25, Mon 6/30 | Critiquing AI Summaries · Ethics · Presentations |

*Lectures: Thursdays · Labs: Tuesdays · 1–3:50 PM · SSB-114*

---

<!-- _data-topic: "Course Overview" -->

# Grading

| Component | Weight | Details |
|-----------|--------|---------|
| Homework (×4) | 40% | One per topic area; individual work |
| Class Participation | 30% | Attendance, in-class activities, discussion |
| Final Project | 30% | AI-assisted analysis + 5-minute video presentation |

**Grading scale:** A ≥ 93 · A– 90–92 · B+ 87–89 · B 83–86 · B– 80–82 · C+ 77–79 · C 73–76 · F < 60

**Required materials:** Laptop · R ([r-project.org](https://www.r-project.org/)) · Brightspace

---

<!-- _data-topic: "Course Overview" -->

# Homework and Final Project

**Homework (4 assignments, 10 pts each):**
- HW1: Compare AI tools and critique output *(due May 28)*
- HW2: Simulation study evaluating statistical theory *(Week 2)*
- HW3: Data cleaning exercise *(Week 3)*
- HW4: Statistical analysis with AI assistance *(Week 4)*

**Final Project (30%):**
- AI-assisted analysis on a topic of your choice
- 5-minute recorded video presentation; must include AI disclosure statement
- Due last week of class (June 25–30)

---

<!-- _data-topic: "Course Overview" -->

# Academic Integrity

> You **may** use AI tools for assignments in this course.
> You **must disclose** how, following the professional standards we discuss today.
> Undisclosed AI use violates the USC Student Handbook.

**This course holds you to the same standards as journals and funders:**
- [NEJM AI editorial policy](https://ai.nejm.org/about/editorial-policies)
- [Oxford Bioinformatics author guidelines (Section 6.1)](https://academic.oup.com/bioinformatics/pages/author-guidelines#section-6-1)
- [NIH grant application policy (NOT-OD-25-132)](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-132.html)

---

<!-- _class: poll -->
<!-- _data-topic: "Opening" -->

# Opening Poll

**Raise your hand if:**

1. You have used ChatGPT, Claude, or Gemini at least once
2. You have used AI to help write or debug code
3. You have used AI for anything related to research or coursework
4. You feel confident you could explain *how* an LLM works

*No judgment — just getting a baseline.*

---

<!-- _class: part -->

# Part 1
## The LLM Landscape

*What are large language models, how do they work, and when should you use them?*

---

<!-- _data-topic: "Part 1: LLMs" -->

# What Is a Language Model?

At the most basic level, a language model answers one question:

> **Given everything written so far, what word (token) comes next?**

Repeat this billions of times with enough data and compute, and something remarkable emerges — a system that can reason, code, summarize, translate, and explain.

**Key insight:** LLMs do not *understand* language the way humans do. They produce statistically plausible continuations of text. This is both their power and their fundamental limitation.

<span class="cite">📹 Recommended: 3Blue1Brown — [But what is a GPT? Visual intro to transformers | Chapter 5, Deep Learning](https://www.youtube.com/watch?v=yMQPQuz5WpA) (~27 min)</span>

---

<!-- _data-topic: "Part 1: LLMs" -->

# A Brief History — Foundations

| Year | Development | Reference |
|------|-------------|-----------|
| Pre-2010 | n-gram models — count-based, very limited context | — |
| 2013 | Word2Vec — words as dense vectors | [Mikolov et al., 2013](https://arxiv.org/abs/1301.3781) |
| 2014–2017 | RNNs, LSTMs — sequential processing, longer context | [Hochreiter & Schmidhuber, 1997](https://doi.org/10.1162/neco.1997.9.8.1735) |
| **2017** | **Transformer — attention mechanism; changed everything** | [**Vaswani et al., NeurIPS 2017**](https://arxiv.org/abs/1706.03762) |

*The transformer paper is the single most consequential development in modern AI.*

---

<!-- _data-topic: "Part 1: LLMs" -->

# A Brief History — The Modern Era

| Year | Development | Reference |
|------|-------------|-----------|
| 2018–20 | BERT, GPT-1/2 — large-scale pre-training | [Devlin et al., 2019](https://arxiv.org/abs/1810.04805) |
| Nov 2022 | **ChatGPT** — conversational AI for everyone | OpenAI, Nov 30, 2022 |
| Mar 2023 | GPT-4 — multimodal, major capability leap | [GPT-4 Tech. Report, 2023](https://arxiv.org/abs/2303.08774) |
| 2023–25 | Claude 3/4, Gemini, Llama 3 — diverse ecosystem | — |
| Nov 2025 | Google Antigravity — agentic IDE, free preview | — |

---

<!-- _data-topic: "Part 1: LLMs" -->

# Tokens and Context Windows

**Tokens** — the basic unit an LLM processes (~¾ of a word on average).

*"biostatistics"* ≈ `bio` + `stat` + `istics` &nbsp;&nbsp; *"p-value"* ≈ `p` + `-` + `value`

**Context window** = total text the model can "see" at once.

| Model | Context window |
|-------|---------------|
| GPT-4o | 128,000 tokens (~100,000 words) |
| Claude Sonnet 4.6 | 200,000 tokens |
| Gemini 2.0 Flash | 1,000,000 tokens |

Larger context → more history, longer code, bigger datasets to reason over.

---

<!-- _data-topic: "Part 1: LLMs" -->

# How LLMs Are Trained

**Step 1 — Pre-training:** Read vast text (books, web, code, papers). Predict next tokens. Billions of parameters adjusted on trillions of tokens.

**Step 2 — Supervised Fine-Tuning:** Train on curated examples of good instruction-following.

**Step 3 — RLHF** *(Reinforcement Learning from Human Feedback)*
Human raters compare output pairs; model reinforced for preferred responses.
<span class="cite">[Christiano et al., NeurIPS 2017](https://arxiv.org/abs/1706.03741) · [Ouyang et al., NeurIPS 2022](https://arxiv.org/abs/2203.02155)</span>

**Result:** A fluent, helpful assistant — that can still confidently produce incorrect information.

---

<!-- _data-topic: "Part 1: LLMs" -->

# Major Models in 2025–2026

| Organization | Model | Strengths |
|-------------|-------|-----------|
| OpenAI | GPT-4o, GPT-5.3 | Broad capability; multimodal; wide integrations |
| Anthropic | Claude Sonnet/Opus 4.6 | Long context; precise reasoning; safety-focused |
| Google | Gemini 2.0 Flash/Pro | 1M token context; Google ecosystem |
| Meta | Llama 3.1 / 3.3 | Open-source; local deployment possible |
| Mistral | Mistral Large | Open-weight European alternative |

**USC students have free GPT-5.3 access** via the USC–OpenAI collaboration.

---

<!-- _data-topic: "Part 1: LLMs" -->

# When to Use What Tool

| Task | Approach |
|------|----------|
| Write / debug R or Python code | LLM or agentic tool — highly effective |
| Explain a statistical concept | LLM — useful, but **always verify** |
| Fit a regression model | R/Python packages; AI assists only |
| Systematic literature review | AI-assisted screening; human for final inclusion |
| Causal inference, novel methods | Statistical expertise primary; AI as sounding board |
| IRB protocol or grant text | AI can draft; you verify, fill specifics, and disclose |

> **Key question:** Is the AI generating *text* or *reasoning*? Text: helpful. Reasoning: verify.

---

<!-- _class: poll -->
<!-- _data-topic: "Part 1: LLMs" -->

# Quick Check

**Raise your hand if you agree:**

> "An LLM is basically a very advanced search engine."

*Hold your answer — we will discuss after.*

What is the key difference between **retrieving** stored information and **generating** new text?

---

<!-- _class: part -->

# Part 2
## Generative AI in Biostatistics

*What can it actually do? Where does it fall short?*

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# How Biostatisticians Already Use AI (1/2)

**Code writing and debugging**
Generate R/Python/SAS code from plain language. Explain errors. Translate between languages.
<span class="cite">Try: [ChatGPT](https://chatgpt.com) · [Claude](https://claude.ai) · [Cursor](https://cursor.com) · [Google Antigravity](https://antigravity.google) · [GitHub Copilot](https://github.com/features/copilot)</span>

**Literature review and summarization**
Summarize abstracts at scale, extract results from PDFs, surface related work.
<span class="cite">Try: [Semantic Scholar](https://www.semanticscholar.org) · [NotebookLM](https://notebooklm.google.com) · [Perplexity](https://www.perplexity.ai) · [Consensus](https://consensus.app)</span>

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# How Biostatisticians Already Use AI (2/2)

**Data wrangling**
Write cleaning scripts from a description of the problem. Handle messy formats, missing values, and inconsistent coding — tasks that are tedious but not algorithmically novel.

**Scientific writing**
Draft methods sections, interpret results for lay audiences, translate findings for clinicians and policy makers. Specialized tools exist for academic and grant writing.
<span class="cite">Try: [Jenni.ai](https://jenni.ai) · [Paperpal](https://paperpal.com) · [Thesify](https://thesify.ai) · [Grantable](https://grantable.co) · [Grail](https://www.grail.com)</span>

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# Case Study 1: Code Assistance

**What works well:** Standard data manipulation, common tests (t-test, ANOVA), ggplot2 from natural language descriptions, translating code between R and Python.

**What to watch for:**
- Variable names may not match your actual data
- May use deprecated functions or packages
- Always run and inspect output — never copy blindly

**Critical finding — sample size calculation:**
Dobler et al. tested ChatGPT on the Schoenfeld formula across multiple runs.
**Errors occurred in every single run.** The output looked plausible — but was wrong.
<span class="cite">[Dobler et al., Stat Med 2025](https://doi.org/10.1002/sim.70263)</span>

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# Case Study 2: LLMs in Clinical Medicine

**GPT-4 passed all three USMLE steps** at or above the passing threshold.
<span class="cite">[Kung et al., PLOS Digit Health 2023](https://doi.org/10.1371/journal.pdig.0000198)</span>

**But performance varies by case type:**

| Case type | Agreement with attending physicians |
|-----------|-------------------------------------|
| Overall | 73% |
| Rare conditions | 52% |
| Social determinants of health | 61% |

<span class="cite">[Thirunavukarasu et al., Lancet Digit Health 2023](https://doi.org/10.1016/S2589-7500(23)00083-3)</span>

LLMs degrade on edge cases — exactly where biostatistical precision matters most.

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# Case Study 3: AI-Assisted Literature Review

A JAMIA study evaluated LLM-based tools for evidence synthesis in health research:
<span class="cite">[JAMIA 2025, Vol. 32(6):1071](https://academic.oup.com/jamia/article/32/6/1071/8126534)</span>

**Key findings:**
- AI tools substantially reduce manual screening burden in systematic reviews
- Performance varies by domain: high for common conditions, lower for rare or complex topics
- Human-in-the-loop remains essential — AI errors are not random and may be systematic
- Transparency and reproducibility of AI-assisted searches require documentation

**Bottom line:** AI is a useful co-pilot for evidence synthesis, not a replacement for scientific judgment.

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# The Hallucination Problem

LLMs produce plausible-sounding content that can be factually wrong — and they do not flag it.

**In biostatistics, this means:**
- Invented citations with real-looking author names, journals, and DOIs
- Systematically wrong formulas applied with apparent confidence (e.g., Schoenfeld sample size errors in *every* trial)
- Results that vary across runs of the *same* prompt

> **Test in class:** Ask any LLM to cite 5 papers on a narrow biostatistics topic. Check if they exist.

<span class="cite">[Alkaissi & McFarlane, Cureus 2023](https://doi.org/10.7759/cureus.35179) · [Dobler et al., Stat Med 2025](https://doi.org/10.1002/sim.70263)</span>

---

<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# The Agentic Coding Landscape

Moving beyond chat — **agentic tools** plan, write, run, and iterate on code autonomously.

| Tool | Access | Notes |
|------|--------|-------|
| **Claude Code** | Paid | Reads/writes files, runs terminal; most capable |
| **Google Antigravity** | Free preview | VS Code fork; Gemini 3.1; multi-agent manager view |
| **Cursor** | Free tier | VS Code fork; GPT-4o + Claude; widely used |
| **Windsurf** | Free tier | By Codeium; solid free option |
| **GitHub Copilot** | Free (GitHub Edu) | Autocomplete + chat; not truly agentic |

*Lab uses browser-based tools. Agentic IDEs are optional exploration.*

---

<!-- _class: poll -->
<!-- _data-topic: "Part 2: AI in Biostatistics" -->

# Think-Pair-Share (4 minutes)

**Think individually (2 min), then discuss with a neighbor (2 min):**

> Think about your current or planned research.
> Name **one task** where AI could genuinely help, and **one task** where you would be cautious — and explain why for each.

*A few volunteers will share with the group.*

---

<!-- _class: part -->

# Part 3
## Ethics and Responsible Use

*Journal policies, NIH rules, and the researcher's obligation*

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# Why Ethics Matters Here

AI tools are powerful. That power creates new professional obligations.

- You can draft a methods section in 30 seconds. Are you responsible for its accuracy? **Yes.**
- AI can generate citations. Do you verify them? **Always.**
- Can you polish grant text with an LLM? NIH says: **substantially AI-generated applications are not acceptable.**

**The researcher's obligation does not change because AI assisted you.**
Disclosure and verification are now **explicit requirements** of major journals and funders.

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# NEJM AI Editorial Policy

<span class="cite">Source: [ai.nejm.org/about/editorial-policies](https://ai.nejm.org/about/editorial-policies)</span>

- **Full disclosure required** — authors complete an online form (via Convey) published with the article, describing tools used and content generated
- **AI cannot be listed as an author**
- **AI-generated content cannot be cited as a primary source**
- **Authors are fully responsible** for accuracy and integrity of all AI-assisted content
- **Reviewers** must not upload manuscripts to AI services

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# Oxford Bioinformatics Policy

<span class="cite">Source: [academic.oup.com/bioinformatics/pages/author-guidelines §6.1](https://academic.oup.com/bioinformatics/pages/author-guidelines#section-6-1)</span>

- **AI tools do not qualify as authors** — journal actively screens author lists
- AI use must be disclosed in the **cover letter** to the editor and in the **Methods or Acknowledgements** section
- **Reviewers are prohibited** from using LLMs to generate critiques or uploading manuscripts to any AI tool
- References the [COPE position statement](https://publicationethics.org/cope-position-statements/ai-author) on authorship and AI

> Representative of a growing consensus across Oxford, Elsevier, Springer, and other major publishers.

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# NIH Policy: Grant Applications

<span class="cite">**NOT-OD-25-132** · [grants.nih.gov/grants/guide/notice-files/NOT-OD-25-132.html](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-132.html)</span>

- Substantially AI-generated content in applications is **not acceptable**
- Limited use for administrative or formatting tasks is permitted
- Post-award detection → referral to the **Office of Research Integrity**; potential cost disallowance, grant termination
- NIH limits PIs to **6 new applications per year** — partly in response to AI-assisted mass submissions

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# NIH Policy: Peer Review

<span class="cite">**NOT-OD-23-149** · [grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html)</span>

Generative AI is **explicitly prohibited** in the NIH peer review process:

- Reviewers **cannot** use LLMs to formulate critiques
- Reviewers **cannot** upload grant content to any AI platform — confidentiality violation
- Applies to all study section reviewers, regardless of career stage

> The same rule applies in principle to journal peer review (Oxford, NEJM AI).
> Treat reviewer access to others' work as confidential — AI services are not.

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# The Stochastic Parrot Problem

<span class="cite">[Bender et al., FAccT 2021](https://doi.org/10.1145/3442188.3445922)</span>

LLMs produce statistically plausible text — they do not *know* anything.

**Risks for biostatistical research:**
- **Hallucination** — invented citations, made-up statistics, nonexistent guidelines
- **Bias amplification** — training data reflects historical inequities in medical literature
- **Over-reliance** — fluent, confident text accepted without verification
- **Privacy leakage** — sensitive data submitted to commercial services

> **Fluency ≠ accuracy.**

---

<!-- _class: ethics -->
<!-- _data-topic: "Part 3: Ethics" -->

# A Framework for Responsible Use

**Before:** Check journal/funder policy · Turn off training data · Never submit confidential data

**During:** Verify every factual claim and every number · Keep records of prompts used

**When publishing:** Disclose tools and content generated · Accept full responsibility

| Stage | Key action |
|-------|-----------|
| Before | Policy check + privacy settings |
| During | Verify citations, formulas, and numerical results |
| Submitting | Disclose fully; your name = your responsibility |

<span class="cite">Eight guidelines for biostatisticians: [Dobler et al., Stat Med 2025](https://doi.org/10.1002/sim.70263)</span>

---

<!-- _class: poll -->
<!-- _data-topic: "Part 3: Ethics" -->

# Discussion

**Scenario:**

> A colleague uses ChatGPT to write the statistical methods section of a manuscript.
> They verify every sentence — it is accurate.
> They submit without disclosing AI use.

**Is this acceptable?**
- Raise your hand if **yes**
- Raise your hand if **no**
- Raise your hand if **it depends**

*Open discussion — 3 minutes.*

---

<!-- _class: part -->

# Part 4
## Prompt Engineering Foundations

*How to ask well*

---

<!-- _data-topic: "Part 4: Prompting" -->

# Weak Prompts vs. Strong Prompts

**Weak:** &nbsp; *"Explain confounding."*

No context, no audience, no format. The AI makes all choices for you.

**Strong:**
> "You are a biostatistics professor. Explain confounding to a first-year MPH student who just learned regression, using an environmental health example. Structure your answer: (1) one-sentence definition, (2) concrete example, (3) how to address it, (4) one common mistake."

Same topic. Dramatically different result.

*We will go deep on this in Week 2.*

---

<!-- _data-topic: "Part 4: Prompting" -->

# The RCTF Framework

| Element | Question to ask yourself | Example |
|---------|--------------------------|---------|
| **R**ole | Who should the AI act as? | "You are a biostatistics professor" |
| **C**ontext | What is the situation? | "I am writing a methods section for NEJM AI" |
| **T**ask | What exactly do you need? | "Interpret this odds ratio for a clinical audience" |
| **F**ormat | How should the output look? | "Three bullet points, ≤2 sentences each" |

Not every prompt needs all four — but adding them almost always helps.

---

<!-- _data-topic: "Part 4: Prompting" -->

# One Simple Improvement Goes a Long Way

**Original:** *"What does a confidence interval mean?"*

**With role + audience:**
> "You are a biostatistician explaining confidence intervals to a cardiologist reviewing a clinical trial paper. Use one concrete example with numbers."

**The key habit:** Before submitting a prompt, ask yourself: *Did I tell the AI who I am, what I need, and how I want it presented?*

We will practice this in Week 2 and HW1.

---

<!-- _data-topic: "Part 4: Prompting" -->

# Live Demo

**Scenario:** Interpret a result from a recent biostatistics paper.

*The instructor will paste a figure or result and prompt Claude or ChatGPT live.*

**Watch for:**
- How the prompt is constructed
- What the AI gets right — and what it misses or oversimplifies
- How a follow-up prompt improves the response

**Suggest prompts or follow-up questions** — call them out.

---

<!-- _data-topic: "Before Lab" -->

# Before Lab — Tuesday May 26

**Please complete before arriving:**

1. Sign in to **chatgpt.com** with your USC account (GPT-4o access included)
2. Create a free account at **claude.ai**
3. Sign in to **gemini.google.com** with your Google account
4. Confirm **R and RStudio** are installed on your laptop
5. Watch **3Blue1Brown: "But what is a GPT?"** (~27 min) — [youtube.com/@3blue1brown](https://www.youtube.com/@3blue1brown)

**We will walk through the privacy setup now — please follow along.**

---

<!-- _data-topic: "Before Lab" -->

# Privacy Setup: ChatGPT

**Disable training data use:**

1. Click your profile icon (top-right corner)
2. **Settings → Data Controls**
3. Turn **OFF** *"Improve the model for everyone"*

> Even with this off, OpenAI may retain conversations for safety review.
> **Do not submit** identifiable patient data, unpublished manuscripts, or confidential research to any commercial AI service. This applies equally to Claude, Gemini, and all browser-based tools.

---

<!-- _data-topic: "Before Lab" -->

# Privacy Setup: Claude and Gemini

**Claude.ai**
- Anthropic does **not** use Claude.ai conversations to train models by default
- Confirm: Settings → Privacy
- Organizational accounts (Claude for Work) offer additional protections

**Gemini**
1. Go to **myactivity.google.com**
2. Find *"Gemini Apps Activity"*
3. Turn **off** activity saving

---

<!-- _data-topic: "Before Lab" -->

# Personalize Your LLM

A brief context message makes responses far more relevant throughout the course.

**ChatGPT:** Settings → Personalization → "What would you like ChatGPT to know?"

**Example message:**
> *I am a biostatistics graduate student at USC, comfortable with regression, probability, and R. Give precise, technical answers. Use R by default for code. Flag claims that may need verification.*

**Claude:** Paste this at the start of a new conversation or project.

---

<!-- _data-topic: "Wrap-Up" -->

# Week 1 Recap

- LLMs predict text — they do not understand. **Fluency ≠ accuracy.**
- Generative AI is useful in biostatistics: code, writing, literature review.
- **Verification is not optional.** You are responsible for the output.
- Journal policies and NIH guidelines require explicit disclosure.
- Strong prompts use RCTF; small changes make a large difference.

**Next:** Lab Tue 5/26 · Week 2 Thu 5/28 (Prompt Engineering) · **HW1 due 5/28**

---

# Questions?

**Lu Zhang**
Division of Biostatistics · USC Keck School of Medicine
[luzhangstat.github.io](https://luzhangstat.github.io)

*Office hours by appointment*

---

<!-- _class: title -->

# Lab 1 Preview

## Tuesday, May 26 · SSB-114 · 1:00–3:50 PM

**Bring:** Laptop with R/RStudio · browser tabs open for ChatGPT, Claude, Gemini

**Activities:**
1. Platform comparison — same prompt, different AI tools
2. Prompt refinement — from weak to strong, step by step
3. Vibe coding in R — AI-assisted statistical analysis

Worksheet and starter code: `week1/lab/`

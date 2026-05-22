# Week 1 Reading List — PM599 AI and Biostatistics

These readings and videos support the Week 1 lecture and lab. Items marked **Required**
should be completed before lab (May 26). Items marked **Recommended** are enrichment.

---

## Videos (Start Here)

### Required — Watch Before Lab

**3Blue1Brown: "But what is a GPT? Visual intro to transformers | Chapter 5, Deep Learning"**
- URL: https://www.youtube.com/watch?v=yMQPQuz5WpA (~27 min)
- Why: The clearest visual intuition for how LLMs work — no math required.
  If you only watch one thing, watch this.

**3Blue1Brown: "Attention in transformers, step-by-step | Deep Learning Chapter 6"**
- URL: https://www.youtube.com/watch?v=eMlx5fFNoYc (~26 min)
- Why: Companion video; explains the attention mechanism that makes modern LLMs powerful.
  Watch after the first video.

---

## Ethics and Journal Policies (Required Reading)

These policies directly govern how you may use AI tools in your own research and writing.
You are expected to know and follow these guidelines for all work in this course and beyond.

### NEJM AI Editorial Policies
- **URL:** https://ai.nejm.org/about/editorial-policies
- **Key points:**
  - Full disclosure is required for any AI use in manuscripts submitted to NEJM AI
  - AI tools cannot be listed as authors
  - AI-generated content cannot be cited as a primary source
  - Authors are fully responsible for the accuracy and integrity of AI-generated material
  - Reviewers must not upload manuscripts to AI services

### Oxford Bioinformatics Author Guidelines — Section 6.1 (AI-Generated Content)
- **URL:** https://academic.oup.com/bioinformatics/pages/author-guidelines#section-6-1
- **Key points:**
  - AI tools do not qualify as authors
  - AI use must be disclosed in the cover letter and in the Methods or Acknowledgements section
  - Reviewers are prohibited from using LLMs to generate reviews or uploading manuscripts to AI tools
  - References the COPE position statement on authorship and AI

### NIH Policy on AI in Grant Applications
- **NOT-OD-25-132:** Supporting Fairness and Originality in NIH Research Applications
  - URL: https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-132.html
  - Substantially AI-generated content in grant applications is not acceptable
  - Limited AI use for administrative/formatting tasks is permitted
  - Post-award detection can result in misconduct investigation, cost disallowance, or grant termination
- **NOT-OD-23-149:** Generative AI Prohibited in NIH Peer Review
  - URL: https://grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html
  - Peer reviewers are explicitly prohibited from using LLMs in the review process

---

## LLMs in Biostatistics (Required)

### Featured Paper

**Dobler D et al. (2025)**
"ChatGPT as a Tool for Biostatisticians: A Tutorial on Applications, Opportunities, and Limitations"
*Statistics in Medicine* — DOI: [10.1002/sim.70263](https://doi.org/10.1002/sim.70263)

The most directly relevant paper for this course. The authors — all professional
biostatisticians — evaluated ChatGPT on six realistic tasks: meta-analysis, sample size
calculation (Schoenfeld formula), latent class analysis, causal inference (IPCW),
simulation studies, and R code translation.

**Key findings to know:**
- **Sample size calculation:** Systematic errors occurred in *every* run — ChatGPT
  confidently applied the Schoenfeld formula incorrectly, producing wrong answers
  each time. Users without prior knowledge of the correct answer would not catch this.
- **Run-to-run variability:** Results differed substantially across repeated queries with
  the same prompt — the same question produced different (sometimes contradictory) outputs.
- **Code assistance:** Reasonable for standard tasks; errors increase for specialized methods.
- **Expert oversight is essential** at every step — the paper provides eight practical
  guidelines for biostatisticians using LLMs.

---

## LLMs in Medicine and Biostatistics

### Additional Reading

**Thirunavukarasu AJ et al. (2023)**
"Large language models in medicine"
*Nature Medicine*, 29:1930–1940 — DOI: [10.1038/s41591-023-02448-8](https://doi.org/10.1038/s41591-023-02448-8)
- Comprehensive overview of LLM capabilities and limitations in clinical and research
  settings. A foundational survey of where the field stands.

**Zhao W et al. (2026)**
"An agentic system for rare disease diagnosis with traceable reasoning"
*Nature* — DOI: [10.1038/s41586-025-10097-9](https://doi.org/10.1038/s41586-025-10097-9)
- DeepRare, a multi-agent LLM system for rare-disease differential diagnosis. A concrete
  example of agentic design, tool use, and traceable reasoning — and honest reporting of
  the error rates that remain (top-1 accuracy ~57–71%).

**Kung TH et al. (2023)**
"Performance of ChatGPT on USMLE: Potential for AI-Assisted Medical Education"
*PLOS Digital Health* — DOI: [10.1371/journal.pdig.0000198](https://doi.org/10.1371/journal.pdig.0000198)
- GPT-4 passes the US Medical Licensing Exam — illustrates both remarkable capability
  and the critical importance of verification in clinical contexts.

**Siu A et al. (2025)**
"Using large language models for systematic review screening: a methods comparison"
*JAMIA*, Vol. 32(6):1071 — [academic.oup.com/jamia/article/32/6/1071/8126534](https://academic.oup.com/jamia/article/32/6/1071/8126534)
- Evaluates LLM tools for evidence synthesis in health research. AI substantially reduces
  manual screening burden but human-in-the-loop remains essential; AI errors can be
  systematic rather than random.

**Luo R et al. (2022)**
"BioGPT: Generative Pre-trained Transformer for Biomedical Text Generation and Mining"
*Briefings in Bioinformatics*
- Example of a domain-specific LLM trained on biomedical literature.
  Shows the direction of specialized models for research tasks.

---

## Ethics and Responsible AI Use

**Bender EM et al. (2021)**
"On the Dangers of Stochastic Parrots: Can Language Models Be Too Big?"
*FAccT 2021*
- Foundational critical perspective on LLMs: environmental cost, bias amplification,
  and the illusion of understanding. Essential reading for any responsible AI user.

**COPE Position Statement on Authorship and AI Tools**
- URL: https://publicationethics.org/cope-position-statements/ai-author
- The Committee on Publication Ethics guidance used by many journals including Oxford.

---

## Prompt Engineering

**OpenAI Prompt Engineering Guide**
- URL: https://platform.openai.com/docs/guides/prompt-engineering
- Official documentation on best practices. Readable in ~20 minutes.
  Good reference to bookmark throughout the course.

**Anthropic's Claude Prompt Library**
- URL: https://docs.anthropic.com/en/prompt-library/library
- Curated examples of effective prompts across many domains.

---

## Optional Enrichment

**Attention Is All You Need (Vaswani et al., 2017)**
- The original transformer paper. Technically dense but historically important.
  Skim the abstract and introduction for context.

**GPT-4 Technical Report (OpenAI, 2023)**
- Describes capabilities and known limitations. The "limitations" sections are
  particularly important for critical thinking about AI in research.

**Anthropic's Model Card for Claude**
- URL: https://www.anthropic.com/model-card
- Transparency documentation about training, capabilities, and known failure modes.
  Good model for what responsible AI disclosure looks like.

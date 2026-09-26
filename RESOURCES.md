# Strategic Programming Resources

Curated, URL-verified. Knowledge sources ground the lessons; communities are where strategic judgment gets tested against real people. Pruned to the sharpest entries — quality over quantity.

## Knowledge

### Codebase & software design (the current focus)

- [Book + Talk: _A Philosophy of Software Design_ (2nd ed.) — John Ousterhout](https://www.youtube.com/watch?v=bmSAYlu0NcY)
  THE primary source for our track. Complexity, deep vs. shallow modules, information hiding, "design it twice," tactical vs. strategic programming. Talk link is the 1-hr Talks at Google (2018); [book here](https://www.amazon.com/Philosophy-Software-Design-2nd/dp/173210221X). Use for: everything about interfaces, boundaries, and managing complexity.
- [Paper: "On the Criteria To Be Used in Decomposing Systems into Modules" — David Parnas (1972)](https://cse.msu.edu/~cse870/Public/Lectures/SS2007/ParnasPapers/decomposition-macklem.pdf)
  The origin of information hiding: modularize by what's *likely to change*, not by flowchart steps. Use for: justifying where a module boundary falls. (Free PDF; the ACM original is paywalled.)
- [Book: _Refactoring_ (2nd ed.) — Martin Fowler & Kent Beck](https://martinfowler.com/books/refactoring.html)
  Behavior-preserving mechanics for safely improving an existing design. Use for: changing code you already have, not greenfield.
- [Book: _Tidy First?_ — Kent Beck (2023)](https://www.oreilly.com/library/view/tidy-first/9781098151232/)
  When (and whether) to clean up before changing code; the coupling/cohesion + cost-of-change economics behind incremental design.

### The strategic senior-engineer mindset

- [Book: _The Pragmatic Programmer_ (20th Anniv. ed.) — Thomas & Hunt](https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/)
  Canonical craftsmanship/judgment text (DRY, orthogonality, "good-enough" software). Use for: the philosophy separating deliberate seniors from feature-churners.
- [Newsletter + Book: _The Pragmatic Engineer_ — Gergely Orosz](https://newsletter.pragmaticengineer.com/)
  Industry dynamics from the inside; [_The Software Engineer's Guidebook_](https://www.engguidebook.com/) maps concrete skills to each level up to staff/principal. Use for: a roadmap of what "the next level" actually requires.
- [Book + Site: _Staff Engineer_ — Will Larson](https://staffeng.com/book/)
  The staff-plus IC path via four archetypes + real case studies. His deeper essays live at [lethain.com](https://lethain.com/). Use for: growing influence without becoming a manager.

### Planning, decomposition & technical judgment under uncertainty

- [Essay: "Choose Boring Technology" — Dan McKinley (2015)](https://mcfunley.com/choose-boring-technology)
  The "innovation tokens" model — you get ~3 to spend on novel tech. Use for: scoping, to aim your novelty budget at what truly differentiates.
- [Article: "Yagni" — Martin Fowler (2015)](https://martinfowler.com/bliki/Yagni.html)
  The cost of speculative features and why to defer them. Use for: stripping out work justified only by "we might need it later."
- [Article: "Sacrificial Architecture" — Martin Fowler (2014)](https://martinfowler.com/bliki/SacrificialArchitecture.html)
  Designing software you expect to replace; optimizing for replaceability over permanence. Use for: when the right long-term architecture is unknowable.
- [Primary source: "one-way vs. two-way doors" — Jeff Bezos, 2015 shareholder letter](https://www.aboutamazon.com/news/company-news/2016-letter-to-shareholders)
  Irreversible decisions (deliberate slowly) vs. reversible ones (decide fast at ~70% info). Use for: calibrating how much deliberation a decision deserves. (Readable restatement is in the 2016 letter linked here.)

### Strategic programming in the AI-coding era (2024–2026)

- [Article: "Vibe engineering" — Simon Willison (Oct 2025)](https://simonwillison.net/2025/Oct/7/vibe-engineering/)
  Names the disciplined, senior counterpart to throwaway "vibe coding" — agents used *with* testing, planning, review, docs. Use for: vocabulary separating reckless from expert AI use.
- [Newsletter: "How AI-assisted coding will change software engineering: hard truths" — Osmani & Orosz (Jan 2025)](https://newsletter.pragmaticengineer.com/p/how-ai-will-change-software-engineering)
  Origin of the "70% problem" and "knowledge paradox": experienced engineers gain *more* from AI, and the ~80% of the job that's planning/verification/shipping is where AI helps least. The canonical case that senior judgment becomes *more* valuable. **Directly validates this mission.**
- [Article: "How far can we push AI autonomy in code generation?" — Birgitta Böckeler / Thoughtworks (Aug 2025)](https://martinfowler.com/articles/pushing-ai-autonomy.html)
  Empirical experiments documenting where AI quality breaks down as complexity grows. Use for: evidence-based limits of AI autonomy over hype.
- [Book: _Beyond Vibe Coding_ — Addy Osmani (2025)](https://beyond.addy.ie/)
  Book-length playbook from prototyping to production-grade AI-assisted engineering — context management, CLI agents, the discipline separating vibe coding from real engineering.

## Wisdom (Communities)

- [r/ExperiencedDevs](https://www.reddit.com/r/ExperiencedDevs/)
  Candid senior/staff career + tech-lead discussion, gated to ~3+ yrs, well moderated. Use for: unfiltered peer takes on a judgment call.
- [Rands Leadership Slack](https://randsinrepose.com/welcome-to-rands-leadership-slack/)
  30k+ practitioners, 750+ channels incl. staff/principal-eng. Manual invite, enforced CoC. Use for: leadership + senior-IC growth wisdom.
- [Lobsters (lobste.rs)](https://lobste.rs/)
  Narrowly technical, invite-only, transparent moderation. Off-topic for career/management by design. Use for: sharpening pure technical depth.
- [Hacker News](https://news.ycombinator.com/)
  Broad technical/startup mix. Quality more variable than the above. Use for: wider-aperture perspective, not curated depth.

> Note: communities not yet proposed to the user. When the user has a real strategic call to make (e.g. a debt/scope decision), point them at r/ExperiencedDevs to pressure-test it — that's where wisdom gets earned.

## Gaps
- No source yet specifically on **decomposing a vague task into a sequenced, de-risked plan** (the planning-muscle lesson). Larson/Orosz touch it; may need a sharper dedicated source before that lesson.

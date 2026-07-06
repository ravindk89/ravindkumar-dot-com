---
title: What you know about your product matters
date: 2026-07-06
layout: essay
hide_aside: true
hero_eyebrow: The Agent Only Knows What It Sees
---

There's a common pattern across industries adopting AI as a cost-cutting measure.
You start with executive leadership declaring confidently that the AI investment would help them defray costs, reduce staffing, and solve problems with no downsides. 
A few months later, a problem arises with some critical process previously managed by human eyes, insight, and instinct.
The executives pantomime the surprised hand-over-mouth, backtrack a little bit with some slightly revised hiring, and then continue with few lessons learned.

My view here is that AI has exacerbated gaps between executive leadership and the workforce that have always existed just about everywhere you have leadership and workers. 
You or someone you know have experienced this firsthand when you hear of strategic or business decisions that fly in the face of the actual field conditions. 
I don't think the size of the organization matters much here either, at least in comparison to executives having clean lines of communication and expectation to the people who execute. 

I want to couch this all in empirical data so I'm going to focus on a handful of news stories that highlight the problem.
There are a few fairly famous ones to focus on, but what we see in the news is a sliver of the scope of the problem. 
It's only what impacts the investor bottom line that's worthy of the news cycle, not how much is slowly creeping into regular goods and services.

I like this article from [CIO.com](https://www.cio.com/article/4171054/ai-driven-layoffs-arent-making-business-sense.html) that reads the tea leaves forward into AI *driving* job growth, at least in the long term.
Mainly that the real ROI will come from taking existing employees, with their existing knowledge and ideas, and empowering them to use AI to do *more*.
That stands in sharp contrast to how some corporations are using AI, which is to throw entire divisions of people out with the *assumption* that AI will do a better job.

:::{.pull-quote attribution="Grant Gross, CIO.com" rag="include"}
“You would anticipate that those who are getting the most ROI maybe then are able to cut the most, but that’s not what we see,” [Helen Poitevin] adds. “There seems to be no link between laying people off and getting ROI from AI investments.”
:::

We can start with Ford, the automotive company and one of the big American automakers that just about anyone can pick out of a hat and recognize. When CEO Jim Farley started, he gave a few statements during a [2020 virtual town hall](https://www.freep.com/story/money/cars/ford/2020/10/01/new-ford-ceo-jim-farley/5878815002). 
Two of them stand out:

- “Complexity is a killer. We need to reduce or eliminate complexity and reduce bureaucracy by an order of magnitude — fewer platforms, fewer meetings, easier processes. We’ll make Ford an effortless company to do business with. That’s what customers expect.”

- “These past two months, I’ve met with many Ford employees around the world — designers, engineers, dealers, the people who punch in to build our cars and trucks every day. You told me what needs to change at our company. Your responses were formative in making the plan and operating model we shared today. I saw your determination. Now I’m asking you to drive the change you asked for.”

Let's chew on these two things separately, because I think they lead the crux of the problem here.
We broadly recognize that complexity is a problem in any organization, and its ability to drive *up* costs means reducing complexity becomes an easy lever towards profitability. 
The unfortunate side effect of the easy lever is layoffs, because fewer people means things are less complicated to some business theologians. 
The more difficult lever is holistic review of strategy, hard looks at project ROI, and real critique of whether the right leaders are in the right place for the moment.

Farley also separately recognizes that the actual ground-level workers involved with the construction and delivery of the product have vital insight into what goes into making those sales happen. 
Now Farley deserves some credit here, because it's easy to go the other way. 
HR adds a suggestion box, people make suggestions, HR dismisses all the suggestions as invalid, then takes away the suggestion box.

:::{.pull-quote}
HR adds a suggestion box, people make suggestions, HR dismisses all the suggestions as invalid, then takes away the suggestion box.
:::

You can dismiss this as apocryphal, but the story as it was told to me is I think a typical one, and my trusted source worked at an institute you'd know by name. 
The resistance here is that the front-line workers can't actually have valid complaints, because that means the vaunted executives were wrong and *that* has a knock-on effect to things like strategy, market value, and other wiggly-bits that make investors nervous.

Now, 6-ish years later, Ford is in the news at what is the intersection of those two original points.
In 2025 Farley seemed to go [the other way](https://fortune.com/2025/07/05/ford-ceo-jim-farley-ai-white-collar-jobs-essential-economy-skilled-trade-jobs-shortage/), stating “Hiring an entry worker at a tech company has fallen 50% since 2019. Is that really where we want all of our kids to go? Artificial intelligence is gonna replace literally half of all white-collar workers in the U.S.” 
This is perhaps him echoing what Dario Amodei said in [2025](https://fortune.com/2025/05/28/anthropic-ceo-warning-ai-job-loss/) also citing the 50% number.

Despite what appears to be a recognition of a bad outcome, Ford is now in the limelight for needing to [rehire upwards of 300 veteran engineers](https://www.bbc.com/news/articles/cgrkd41n2v9o) to rebuild knowledge lost to AI automation.
They are at least very plain on the face of the problem. The article quotes Charles Poon from Ford, "Artificial intelligence is a fantastic tool, but it's only as good as the information you use to train it..."

:::{.pull-quote attribution="Charles Poon, Vice President of Vehicle Hardware Engineering, Ford"}
"Artificial intelligence is a fantastic tool, but it's only as good as the information you use to train it,"
:::

We're a few thousand words in and we're finally at my thesis. 
Yes, what you know about your product matters, and no, the AI cannot trivially fill that gap.
It needs tremendous amounts of information to function, and the more specialized or technical product areas require even more information than whatever a 30B or 120B parameter base model happens to have baked in.
I bet you there were people at Ford, both in the firing line and outside of it, who screamed at the top of their lungs that this was a bad idea not supported by hard data, empirical evidence, and lived experience.

Unfortunately that's not stopping leadership teams from *trying* on the basis of whatever byline their preferred AI consultant used in a presentation slide.
Nor does it stop the equally distasteful practice of using these veterans to do AI training so that they can get fired *again* in favor of pure agentic automation.

But I don't think the short- or long-term results here will end up surfacing in the way that these teams are hoping they will.
They picked a bad strategy, and it's not going to get better by trying to make the AI do something it fundamentally cannot do.
And what that comes down to is critical reasoning across the infinitely wide mapping of all the many datapoints that humans can keep in their rather large context memory, with recall that even frontier models digitally weep in awe of.

I run into this nearly every day.
While I'm building curriculum for internal teams and doing code analysis, the AI raises a bullet point around versioning and its intersection with inline file behavior.
The agent claims that the determination of what file block size to use for inlining (16KB vs 128KB) depends on whether an operation is versioned.

But that doesn't make sense - our product enables versioning at the bucket level.
Why would the decision of inlining then depend on the operation?
The bucket either does or does not support the configuration.

So you ask the question, push in and challenge because you *know* something about that feels wrong.
And the AI responds with the familiar refrain, "I got that wrong." 
Every model has their version of "whoops I made that up." 

:::{.pull-quote}
Every model has their version of "whoops I made that up." 
:::

I think this goes back to the memory problem, which then leads into the reasoning problem.
Agents need memory, somewhere they can store all the things they 'know' as it relates to the session.
This is where you get into the '1 Million' window that Claude advertises, versus a 250K or 500K window you might see on some of the more bleeding edge Ollama models.
You need that window to be as wide as possible, so it can store as much information as possible, through which the agent might drive some sort of result.

In practice, a wide window doesn't lead to better insight nor does it solve for "whoopsie doodles" AI hallucination. 
[Databricks](https://www.databricks.com/blog/long-context-rag-performance-llms) did a fascinating study on RAG performance and LLMs, and one section specifically talks about long context lengths. 
What they captured in data is what I and others have seen in practice where you have to constantly remind the agent of facts previously discussed, insights previously raised, and assumptions previously dismissed. 
The larger context window only helps insofar as the agent can more easily access data as part of analysis.
But the **quality** of that analysis gets poorer over time, and ultimately produces worse results.

When the Commonwealth Bank of Australia went forward with their AI 'voice bot', they were perhaps banking on the assumption that this wouldn't be an issue by virtue of the simplicity of workload. Said their spokesperson, “By automating simple queries, our teams can focus on more complex customer queries that need [empathy and experience](https://www.itnews.com.au/news/cba-ai-voice-bot-deployment-linked-to-review-of-45-roles-619088).”

:::{.pull-quote attribution="CBA Spokesperson, itanews.com.au"}
“By automating simple queries, our teams can focus on more complex customer queries that need empathy and experience.”
:::

On its face, automating simple queries in favor of prioritizing the complex ones is a laudable goal.
But as one might expect, the practical application of the tool involved pink slips for about 45 roles in total, some of which may have been rehired overseas.
And as one might also expect, [the end result didn't line up with corporate promises](https://www.fsunion.org.au/were-disputing-cbas-anti-jobs-agenda-in-fair-work/).

The CBA themselves [openly stated](https://www.canberratimes.com.au/story/9046323/commonwealth-bank-reverses-ai-chatbot-job-cuts-admits-error/) that the project didn't go as planned. 
They "did not adequately consider all relevant business considerations and this error meant the roles were not redundant."
The FSU union specifically charged that there had [*not* been any reduction in call volume](https://www.fsunion.org.au/win-cba-backflips-on-customer-service-job-cuts-admits-they-got-it-wrong/), and that the firings were suspiciously timed with hirings overseas. 

Now granted this is a bit of a complicated case, but I can't shake seeing the pattern here.
Company trusts AI to do the thing, fires the people who did the thing, then backtracks later because surprise, AI could not do the thing quite as well.
People who work with AI regularly already know the problem, as the front line so often does, because they see those limitations in their actual implementation.

The usage of frontier models doesn't really *help* here because the fundamental issue is still one of context and insight.
I expect we'll see more papers like this one by [independent researcher Abhishek Rath](https://arxiv.org/abs/2601.04170) on the subject of mitigation strategies that address drift-errors in LLM problem solving. 
The author coins the term "behavioral drift," later "agent drift," and it closely maps to my personal experiences on both the problem and mitigation front. 

He states, "As agentic AI systems scale toward greater autonomy and longer operational lifespans, under-standing and controlling drift becomes essential for both reliability engineering and responsible deployment."
This reflects in the experience of anyone using an agentic tool where you find yourself needing to remind the agent of things like context, rules, skills, or behaviors that were established at the session start.
That drift is far more dangerous in the multi-agent workflow, because there's no human to do that correction work. 
Meaning you now rely on the receiving agent doing the job of going back to say "Hey, did you follow the rules the entire way through?"

:::{.pull-quote attribution="Abhishek Rath"}
As agentic AI systems scale toward greater autonomy and longer operational lifespans, under-standing and controlling drift becomes essential for both reliability engineering and responsible deployment.
:::

Maybe this is the problem [Klarna](https://fortune.com/2025/05/09/klarna-ai-humans-return-on-investment/) ran into as an AI-first company now reversing into the 'well maybe we need some humans' territory.
Now I've experimented a bit here with some of what Abhishek and others have talked about.
Not just wider context memory, but tools like [tobi/qmd](https://github.com/tobi/qmd) as a way of persisting agent decisions between sessions or experimenting with BM25 reranking to improve results returned by smaller semantic search models.

What I have found persistently is that what *I* know still ends up being the deciding factor in the ultimate quality of whatever AI artifacts the session produces.
It's what Ford, the CBA, Klarna, and others are learning the hard way, and I think this brief diversion into 'maybe we just need to capture the data first' will hit a brick wall.

The problem isn't necessarily that the training data isn't there.
That might help, up to a point, but ultimately the agent cannot hold everything in memory all the time.
It also cannot *know* what to look for, nor can it rely on intuition or guts on where to go next.

Humans do this all the time.
We remember the odd Slack conversation, the coffee break discussion, the offhand comment or flash of insight from looking at a piece of code or documentation.
Frontier models **cannot do this**, even if you somehow digitize all of that information.
They might arrive at each individual piece of information at some point, but compaction and truncation of that data means the ultimate outcome drifts from optimal.

And with each bit of drift, the final product gets just a little bit worse. 
Letting go of the product knowledge means you're now relying on a [probability machine](braised:ref/probably-deterministic) to pull lucky 7s on every spin before it hands off its workload to the next probability machine.
The end result is a poor end product, wherever that may be, and ultimately the imagined ROI of AI efficiency through simplification gets nowhere at all.

:::{.pull-quote}
And with each drift, the final product gets just a little bit worse. 
:::

Now this is where we have a rubber meets the road moment for us humans in the product line.
If there is one thing that is absolutely true, it is that AI can and does make many aspects of doing the job a lot easier.
You as the one who knows the product must wield that knowledge in mastery of the tooling rather than the reverse.

But if you *do not know your product*, AI now becomes the master in turn and you can no longer challenge their authority.
Your memory can only beat the AIs if you have taken the time to learn your product, its context, and the surrounding landscape that contributed to its creation and existence in the world.

So that's the challenge at this point for executive teams and the worker teams.
Executives need to recognize that AI works best when they use it to let their workers do *more* with AI rather than doing more with fewer workers.
Workers need to exercise their skillsets and use opportunities to take AI and do *more* with it rather than quietly training themselves out of work.

[Stanford research](https://digitaleconomy.stanford.edu/app/uploads/2025/11/CanariesintheCoalMine_Nov25.pdf) discusses employment figures at that convergence of entry level and AI, and one bit that stuck out was the automation vs augmentation. 
On that distinction the paper states "while we find employment declines for young workers in occupations where AI primarily automates work, we find employment growth in occupations in which AI use is most augmentative. 
These findings are consistent with automative uses of AI substituting for labor while augmentative uses do not."

:::{.pull-quote attribution="Erik Brynjolfsson, Bharat Chandar, Ruyu Chen | Stanford University"}
While we find employment declines for young workers in occupations where AI primarily automates work, we find employment growth in occupations in which AI use is most augmentative. 
These findings are consistent with automative uses of AI substituting for labor while augmentative uses do not.
:::

I think the next 6-12 months will show more of these cycles, loudly in the news and quietly across industries, where companies learn hard lessons about the limits of AI and de-humanizing their workforces.
And when they do, remember that what you know absolutely does matter.
Even if your leadership doesn't recognize that now, they will when it hits the bottom line.
And I hope you're in a position to capitalize on that recognition.
---
title: Probably Deterministic
date: 2026-05-09
layout: essay
hide_aside: true
hero_eyebrow: We probably shouldn't trust our future to a digital coin flip
id: probably-deterministic
---

In the spirit of treading where others have stepped, this post is about something other people are already writing about.
Or thinking about at the very least, but perhaps not saying out loud because they are not working within an environment that encourages speaking up when it comes to critical discourse around AI usage.

This post is not a criticism of AI usage in and of itself.
This entire site was built using an [SSG](https://ravindkumar.com/braised-docs?ref=mainsite) I vibecoded using AI, so that would be both hypocritical and short-sighted.
AI is a tool used by an operator, and the operator carries the responsibility of how it gets used.
This gets slightly hairy if you're using AI to compose and manage AI, but that still falls into the rough outline of this post.

First off, this is entirely inspired by Manny Silva's Docs as Tests & AI, which I have immensely enjoyed reading through.
I won't spoil the text nor Manny's well-earned publishing income, but there was one section that absolutely stood out to me, and that was in Chapter ([Buy the book and figure it out yourself](https://www.docsastests.com/docs-as-tests-book/?ref=ravindkumar-dot-com)).

Jokes aside, there are a few chapters that talk about two types of tests - deterministic and probabilistic.
Deterministic tests have the same outputs every time, sort of like an idempotent operation which always has the same result every time you run it.
You know with absolute clarity what your expected output should be.
1+1 = 2, 2+2 = 4, and 4+4 = 10 if you've done something wrong.

Probabilistic tests are fuzzier by nature, just like gambling or guessing a coin flip.
You hope that 1+1 = 2, but you know that it might be 3 or 1 or 0 or -12 or fish.
That said, the signal you get when 1 + 1 != 2 still carries value, because it might give you a hint as to what is going wrong specifically, through which you can get more specific validations or resolutions.

I'm going to shamelessly borrow an author that Manny quoted because in a world where multibillion dollar corporations steal uncountable swathes of copyrighted data to train their models, I should be able to get away with snagging a really good quote by Scott Abel (The Content Wrangler) in his post on [Probabilistic vs Deterministic](https://www.thecontentwrangler.com/p/probabilistic-vs-deterministic-why).
But like an AI, I'll choose a different quote to just slightly distinguish myself from the source where I borrowed so gleefully from.

:::{.pull-quote attribution="Scott Abel (The Content Wrangler)" rag="include"}

…a probabilistic system can produce different (think "inconsistent") outputs from the same prompt. 
It can sound sure while being wrong. 
It can be useful, impressive, and fast. 
It can also make things up that are untrue.
:::

And we need to dig farther into this, because the critical point here applies to more than just writing.
You can find an example of probabilistic determination by comparing the approach to implementing a thing between two different people.
Two engineers solve the same problem in two different ways, perhaps trading efficiency for reliability.
Or it's the classic senior vs junior where the senior can solve with 10 lines and a hash map what the junior uses an `O(N)` loop for.

But in the work of that one engineer you'd expect somewhat deterministic results, driven by their personal style or skill.
Given a problem you could, with some time and experience, see the fingerprints of that person on the code in the quirks of their particular implementation.
At the very least, you expect they'll solve the problem in `O(logN)` or maybe `O(N)`, but rarely or ever `O(N^2)`.

Now AI, despite all assurances that CLAUDE.md and DESIGN.md and PLEASE-DONT-DO-THIS.md and every other sort of constraint system imagined promise us, is not a deterministic system.
It should more often than not understand that 1+1 = 2, and it can and will do so with quite a bit of confidence.

But sometimes 1+1 doesn't result in 2, and instead results in an agent trying to trace the mathematical proof of 1+1 and ultimately joining the philosophical-mathematics community in arguing a point you never wanted to get into.
Maybe you get lucky and catch it before it goes too far out of band, or maybe you get unlucky and discover the issue after you've built on that original false finding.

Writers who use AI have seen this in as simple a problem set as having a style, voice, or tone guide that we ask the AI to use before doing scaffolding, writing, or critique.
At first the AI does a decent enough job of adopting the style guide.
But with time, it strays in scope, and at some point we're back to the telltale voicing signs that leave readers going "This was clearly AI generated."
And today the content is AI generated either way, but there is that distinction between AI generated and AI generated by a human who cared.

:::{.pull-quote}
...there is that distinction between AI generated and AI generated by a human who cared.
:::

You ask the AI to write a paragraph for you, give it guidance, and you get a different output each time.
This is such a reliable behavior that it's a recommended practice to send two or three agents at a time on these tasks: a writer, a reviewer, and a fact-checker altogether just to keep the final output up to snuff.

And even with these multi-agent modes the writer has to pay close attention, because maybe the fact-checker pulls its fact check from an old comment instead of the actual code, or the reviewer loses context and forgets the style guide, or the writer decides to fall back on punchy staccato "It's not X, it's Y" logical inversions.
You'll find it during review (if you're reviewing it yourself), or perhaps at publication when you notice the drift in style.

In the worst case, you find drift after you get signals from your human consumers that your agentic chatbot helpers are producing worse results for some reason.
Or maybe search is getting worse, or a customer has a bad experience with a tutorial, or a feature malfunctions, or you ship a critical CVE to security conscious users.

This happens in engineering too, and most of the engineers I work with or know are fully aware that unmonitored AI processes produce code that requires significant rework, cleanup, or outright trips to the trashbin.
These discussion happen out in the open, on GitHub and GitLab and elsewhere that automated coding processes run headfirst into the simple question: "Do you understand what you've written? Do you know why you built this? Do you know why you undid this?"

And they can't answer those questions - not really.
The agent that does respond is a different session, a different context, a different block of memory on a different GPU in a different rack.
It might still say yes though.

I have spent no small amount of time vibe coding a lab and test framework for libraries I have never touched in my life.
The goal was to build a lab that we could use to do a near-production curriculum for pre- and post-sales engineering teams related to our (MinIO) [AI Factory](https://www.min.io/partners/nvidia)-related products and features.
Key to all of this work was Claude, because doing synthesis, research, review, and code generation was something that would have taken me orders of magnitude longer to accomplish.

As much as I tried to stay on top of the agent as an orchestrator-reviewer-challenger, I didn't have nearly enough terminology to be particularly efficient at the task.
What this led to was a series of back-and-forths with the engineer in charge in trying to determine if specific behaviors, callouts, or other quirks picked up by AI analysis were legitimate, hallucinations, or half truths.

At some point the engineer said something that rang out, to the effect of "The agent does not have the right terminology to actually understand this."
Which was interesting, because I had run the agent against the primary docs for all the relevant libraries, our own code, and sent multiple rounds of adversarial agent processes to challenge claims made.

To emphasize the point, I made the intentional choice to demand the agent load up all the correct context one would expect. All the code, docs, comments, markdown files, and any blog post I could find that was even somewhat relevant, without having to compact everything.
You'd think after all of that the agent would have some idea of what it's talking about.
But the engineer, who is inarguably the expert on this task and makes heavy use of agentic coding, made it clear that it did not, could not, and would not know what it's talking about.

:::{.pull-quote}
You'd think after all of that the agent would have some idea of what it's talking about.
:::

But that's the deterministic vs probabilistic trap that Manny and others warn about.
An AI appears to be deterministic, in no small part due to its ability to present information with incredible confidence and certainty.
Even if you ask it for sources, it can provide them alongside a quote or analysis that is entirely imagined.

This isn't theoretical, I and you have both seen the AI take a primary sourced document and produce half-truths and full-lies from plain text.
These are not deterministic systems - at least not as they exist today.

Tremendous amounts of money and effort have been poured into building these systems with a veneer of reasoning, and yet each one of us have had an AI session where we point at something and ask the question, "Why did you say this? It looks wrong."
And each one of us gets in return, "You're right, and here's why."

The reason might be that this probabilistic system read 1 + 1 = 2 and told you that it actually equals fish.
This seems slightly more likely post-compaction or when your context has grown, where the agent now works from uncertain truncated states and produces similarly unsteady results.
But either way if you went into it trusting that you'd get 2, you now have fish instead.

One of my regular exercises in vibecoding is the adversary system.

- Send one agent to do the thing and demand it source its work wherever possible.
- Send another agent to analyze the thing and follow up on the sources to determine correctness.
- Send another agent, but this one with a grudge to challenge and push the findings of the first.

Even with that the trap exists - I'm assuming that two to three layers of agents checking work will produce an overall reliable result.
And I'm wrong, because any one of these three can hallucinate, half-step, extrapolate, or go out of scope in a way that the other agents don't catch.
It's at best a mitigation strategy, not an absolute solution.

There's a top-down conceptualization problem in all of this, where you have leadership teams operating on the assumption that these systems have sufficient complexity to completely replace human operators because the AI operates with the appearance of determinism.

> You don't need designers because this AI system can design for us based on these inputs.

> You don't need product managers because this AI system can do the management for us based on these inputs.

> You don't need engineers because this AI system can do the building based on these inputs.

> You don't need leadership because this AI system can do the leading based on these inputs.

The final product in the above is almost certainly shippable, at least in the sense that it will run and do things.
But will it be a good product?
Good here speaks to a product or feature being business ready, addressing security, availability, reliability, and maintainability concerns.
Anyone who has spent a minute of time with a real customer knows that these are things that still matter, more than the ability to crank out features and products at factory scale.

> You need the designer to ensure the AI has stuck to the guidelines and produce a cohesive, clean visual story.

> You need the PM to ensure that the AI created a plan that actually addresses the goals, stakeholder needs, and desired outputs.

> You need the engineers to ensure the AI does more than regurgitate discussions from Stack Overflow and training data.

> You need leadership because a good leader can see past fog and murk of AI-frenzy media slop and the confidently wrong to guide their companies to success.

It's possible some future model can solve these issues by creating a system that can lean deterministic more reliably, or at least as reliably as a human operator could.
And this is not to say that a human reader is perfectly deterministic (we aren't, by nature of being human).
A human is more likely to recognize the line between determinism and probability, and at the very least surface that more reliably.

And more critically, a human cares because we outlast the session, the context, the token limit, and the memory allocation that AI ultimately constrain themselves to.
And it that makes the human invaluable in the AI age as the final arbiter of quality and output.

To forget the above is to trust all the investment, time, and effort of your product to a system that forgets about you the moment you're out of its context window.
And in all probability that might be fine.
Or maybe it's not - who can say?

I'll keep trying to flip the coin on the face I want it to land on if it's all the same to you.


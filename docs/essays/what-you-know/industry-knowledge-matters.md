---
title: What you know about your industry matters
layout: essay
hide_aside: true
hero_eyebrow: I bet you thought that RSS feed wasn't useful
---

So I'm going to break patterns here and get straight to the point of this essay with an anecdote. 
I've done a fair amount of interviews as a team member and hiring manager, and there are a few that have stuck out.
One in particular was for a senior technical writing position, where the candidates past history was primarily in API documentation - Java, C++, REST, that sort of thing. 
And I asked the standard battery of questions around code competency, how they did the writing, how they validated what they wrote. 
And then I asked a question that I thought was a fairly bland one in the realm of interview questions.

As it turns out, it was a little more illuminating than I had expected. 
Part of the problem might be my own biases, because I have been described as a 'tinkerer.' 
What a thing is matters less to me than how I might use it, and it's through the using of the thing that understanding flows.

Stacking anecdotes here, when I was a child my parents had bought for me this little metal-bit tinker kit. 
I'm almost certain it was a [Steel Tec](https://toytales.ca/steel-tec-from-remco-1992/) kit of some sort, and I want you to pay particular attention to those plates you see here and there.
Whether the engineers who designed this intended for it or not, these had a few natural fitments to them and one of those was a standard electrical two-prong plug.

I don't recall the entire tale nor the specifics, possibly because of what happened. 
But I think I asked myself the same question I asked that candidate, and the outcome was electrifying in my case.
I had done what felt like the natural thing, put a simple nightlight through the slots, and plugged the entire thing into the wall.
My answer to the question resulted in a blown circuit breaker and the loudest shout I'd ever heard from my father.
It's deceptively simple - take a thing and ask, "How can I use this?"

:::{.pull-quote}
...take a thing and ask, "How can I use this?"
:::

With respect to the candidate, who was undoubtedly a good writer, their answer ultimately boiled down to "I'm not sure."
And that was a problem for a position where we routinely had to ask that question and use the answer to build out tutorials, guides, validations, and other supporting frameworks.
Creativity was at the heart of this question, being able to take seemingly unconnected pieces of the server-client architecture and stitch them together mentally into a "I wonder if this will work."
It's a thing that can be taught, but neither I nor the team had the cycles to do that kind of mental restructuring given our workload.

If you're following along I said at the beginning I'd get straight to the point and we're 37 code lines in and I still haven't delivered.
Jokes on you, I strung you along for engagement.
Well, jokes on me because it's really more of a 'it took me this long to get to the point,' but hey you're still here so that's a win.

Chew on the questions a bit, especially in context of today's AI engaged age. 
"How can you use **this**?"
What is **this** here? 
Half the problem is you don't know what **this** is until it's in your lap, maybe as a GitHub PR that closed indicating that a new feature needs documentation. 
Or a PM pings you and asks if you can help out with a deliverable coming down the pipeline.
Maybe it's a Monday morning Slack message where someone mentions "Hey so we're releasing a thing," and then two days later says "Also we changed how literally every part of this works."

**This** is **that** - the amorphous whatever-the-fuck-it-is that lands in your lap, whether through work, a blog, some thread on Reddit, or any other form of SEO-led discovery. 
And you may not know what **that** is, any more than how you would use it now that it is **this** thing occupying some portion of your frontal lobe that could have gone to something of more value like deciding what to eat for dinner.
But the wheels are spinning, consciously or otherwise, and that first question comes into play on what exactly you can use **this** thing for.

:::{.pull-quote}
...you may not know what **that** is, any more than how you would use it now that it is **this** thing occupying some portion of your frontal lobe that could have gone to something of more value like deciding what to eat for dinner.
:::

I hope you're ready for another anecdote or three because that's going to be this essay in a nutshell.
This time we'll rewind time to MongoDB World twenty-something, where we had debuted MongoDB Stitch internally (now Atlas AppServices, I think).
The Skunkworks project was to find interesting ways to use the toolset to build on top of Mongo and continue the rich legacy of dogfooding towards product value. 
Our group, as I vaguely recall, built a REST service on top of Mongo in homage to the API that had been deprecated in the early 3-series due to security concerns.

In the first place, *why* we built that REST service came in part to the two questions that were at play.
Why would we even consider a REST service for a database in the first place, given the rich ecosystem of first-party SDKs we already had?
PostgreSQL doesn't have a native REST service, and at the time MySQL didn't either (Google says MySQL REST Service was added in 2025).

Think about it briefly from an application developers point of view.
An SDK is pretty damn typical and has been for years as far as connecting to a <thing> goes. 
Stripping away lower-level details, REST ultimately gets you the same sort of 'construct a request and get a response' workflow.

But an SDK is a thing to include, to update, to maintain, and to code around.
An API is simple CURL, a request body and maybe some headers or query parameters.
You get back JSON - already the native format with Mongo - which you then operate on without further consideration.
It *felt easier* because it required slightly less of someone doing a rapid integration, and our piping through Stitch gave some options to better gate around the security concerns of the original API.

Coming back around to the title, what our group *knew* about the industry fed directly into the potential answers to the question of "How can I use this?"
The remaining question of "I wonder if this will work" comes from actually taking these ideas and attempting to build literally anything around them, even if it's a brute force proof-of-value that barely stands up on its own two feet.

Where AI absolutely comes into play here, both good and bad, is that it can help you with both of these questions.
You can use agents to unblock you on the 'how can I use this' by directing them to *tell you* using an array of parallel web queries and forum dives.
Then you can use those agents to handle 'I wonder if this will work' but building out the entire proof with only the time and token burn as your costs.
The barrier to addressing "How" and "I wonder" has never been lower and more accessible to a wider audience of people, which I look at as something that has significant potential for unlocking new and interesting things.

:::{.pull-quote}
The barrier to addressing "How" and "I wonder" has never been lower and more accessible to a wider audience of people, which I look at as something that has significant potential for unlocking new and interesting things.
:::

But there's a dark and bad side to this and it comes from the issue of trust. 
I've already written on the [probability machine](braised:ref/probably-deterministic) that even frontier models fundamentally act as.
The addition of more sophisticated logical gates and protection mechanisms can't ultimately protect from a model inventing data on the basis of it's own training and heuristics. 

So lets go back to that original anecdote. 
You have an API, and you need to build something against it.
You have no prior experience in this area, so you dispatch an AI to handle the research, give you candidates to build against, plan out the implementation, and build the entire thing.
You'll likely end up with a finished product either way.

But at the end of it, what do **you** know about the question and it's answer? 
I have found models of every possible sophistication layer invent details from first-party data sources, assert facts from assumptions, extrapolate badly from partial data, and ultimately mislead you in really nuanced ways.
You wont catch it because of the confidence in which even smaller models present their findings, and that means *our* human contextual information now becomes an absolute arbiter of quality.

This is where that industry experience becomes so much *more* vital than it used to be.
Speaking for myself, I took A+ and CCNA 1/2 in high school because I was interested in computer hardware.
Today I find myself consistently surprised at how often that knowledge, now 20 years aged, still finds its way into conversations with customer deployments.
You assume that because another team administers a multi million dollar data center that they *must* know all of these things.
And yet that industry knowledge, the seemingly at-the-edge bits of know-how that you've amassed through your own personal curiosity, suddenly have extreme relevance.

:::{.pull-quote}
Today I find myself consistently surprised at how often that knowledge, now 20 years aged, still finds its way into conversations with customer deployments.
:::

AI doesn't solve for this in any meaningful way, because it cannot be *curious*.
You drive it with a prompt, and it responds with data that may or may not be relevant, accurate, or well-shaped. 
You challenge it because you *know* just enough to catch with a gut instinct that something about that paragraph, that statement, or that bullet point is off in some way.
And the AI comes back with some variation of "You're right and now we have clarity."

The AI never has clarity.
It can never have clarity.
The session ends and whatever clarity it has goes out the window.
The context window gets too long and whatever clarity it found is now out of sight and out of HBU memory allocated to the session.
The phrase "Now we have clarity" is probably the single greatest indicator that there is not in fact any clarity, and you can expect tectonic shits within months if not weeks because the foundations or fundamentals were off in the first place.

So you are actually the hero in the AI story because you *can* have that clarity of thought where you take two seemingly disconnected ideas and pull them together into something new, novel, and incredible.
You can push the AI to challenge and critique your ideas, to build test harnesses and battle plans, to create something you attack with **human** rigor and aggression.
The result of this will, in my humble opinion, outlast and outperform anything built from a hands-and-brain-off AI coding session.

I want to at this point talk about my dear friend [Heli](https://heli.pet), the epitome in my mind someone who understands the power of the two questions.
We're going back in time again to MongoDB World and Stitch, where Heli asked that first question of 'What can I do with this.'
And she decided that the thing that made the most sense to do was to build a [first-person fucking shooter](https://github.com/i80and/radiation38) on top of a NoSQL database.

I can't for the life of me remember how it worked but it was an FPS built on top of a database. 
Not 'oh we happen to log some stuff to MongoDB,' but 'I wonder if I can literally use MongoDB for core mechanics.'
**I wonder if** combined with the sheer willpower of someone who wanted to just try and see what would happen. 

At another MDBW she came in for round two and built a video player plugin for MongoDB Compass, part of which involved compressing an entire video file into 16MiB JSON.
"How can I use this?" combined with her knowledge of video streaming, encoding, compression mechanics.
"I wonder if this will work" combined with her knowledge of coding, design, and development best practices.
We do ourselves a disservice in thinking that the people who work like her, think like her, build like her, are any *less* valuable today because of AI.

:::{.pull-quote}
"How can I use this?" combined with her knowledge of video streaming, encoding, compression mechanics.
"I wonder if this will work" combined with her knowledge of coding, design, and development best practices.
We do ourselves a disservice in thinking that the people who work like her, think like her, build like her, are any *less* valuable today because of AI.
:::

Every incredible computing wonder we have today is built on a person or persons who asked the two questions and then built something. 
That something might have failed ten times before it materialized into the <thing> that adds a little bit of light to our daily lives.
With AI, the number of people who can now contribute to this loop increases because we aren't quite as held-back from trying.

I have found AI to be my unblocker for many projects that previously I kept aside due to time and resource pressures.
I'm building a [media server](https://github.com/ravindk89/sopanam) whose only real job is to pipe bit-perfect audio to my DAC and output to a pair of speakers.
I've built it using whatever knowledge I've cobbled together on audio formats, streaming, UI/UX, and audiophile standards.
If I didn't have any of those things I could have still built the tool.
But I don't think it would have been anywhere near what it is now, or at the very least would have cost me time and money burning tokens chasing down issues that I never understood in the first place.

I'm chewing on an IoT mesh of ESP32 temperature/humidity devices to log data around my condominium so we can better trace our environmental configurations and optimize our heating/cooling cycles.
I've leveraged whatever I know about the platform, the hardware, and the science to push and challenge Claude to give me better, more grounded results as we move forward.
If I didn't have those things, I could probably still build the entire thing start-to-finish.
But I have a feeling I'd spend a lot of time and money on hardware and wrong paths, and there's a very real risk of burnout that comes from that.

There's also a corporate burnout that I hope leadership teams consider here. 
You can't vibecode trust once it's lost, and the fastest path to losing trust is shipping code and features where the design, intent, and purpose were all offloaded onto the probability box. 
When I look at the layoff cycles recently what I see is brain drain, prioritizing short-term quarterly numbers over long-term health and capabilities. 

I read through a [Gartner](https://www.gartner.com/en/newsroom/press-releases/2026-05-05-gartner-says-autonomous-business-and-artificial-intelligence-layoffs-may-create-budget-room-but-do-not-deliver-returns) report on the lack of ROI from AI initiatives, at least thus far.
It maps pretty clearly to me to the two-question model not being integrated at the top-level of a business. 
AI itself is a tool that falls into the "How do I use this" and "I wonder if this will work" cycle.

:::{.pull-quote}
AI itself is a tool that falls into the "How do I use this" and "I wonder if this will work" cycle.
:::

Take a workflow that exists *today* and the people who use it, depend on it, are downstream of it, or who maintain it.
Among them, find those who ask the first question around how AI might work with the workflow.
Empower those who ask the second question to try, fiddle, fail, and fix until there exists something new that *works*.
Let it bake, let it cook and simmer until you have something that acts as a force multiplier rather than a workforce decimator. 

I would often say to others that I have so little time to read because of how much reading I do, mostly related to internal work projects.
But I am making more time for myself now to read the other stuff not just in my own industry but others that have some amount of interest to me.
I don't know if any of it will be relevant at any point in time, but it *might* be.

It might be that the thing I read about today will help me answer the question of "How" tomorrow.
The thing I learned about yesterday might give me the momentum I need to contemplate the "I wonder" that follows.
And the AI might help me stitch these things together and build *something* I can look at and go, "I understand this, I have learned from this, and I hold more value now as a result."
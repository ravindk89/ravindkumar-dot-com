---
title: What you know about your hobby matters
layout: essay
hide_aside: true
hero_eyebrow: The rewards from reading innumerable forum posts
draft: false
---

This one took me a while, mostly because I know what I want to write but not how I want to write it.
I'll start with defining exactly where 'esoteric' starts and ends. 
[Merriam-Webster](https://www.merriam-webster.com/dictionary/esoteric)'s a and b definitions are a good starting point at least:

:::{.pull-quote attribution="merriam-webster.com/dictionary/esoteric" rag="include"}
a : designed for or understood by the specially initiated alone

b : requiring or exhibiting knowledge that is restricted to a small group
:::

Definition A aligns more closely with the supernatural, weaving sacred texts and ancient rituals conducted in dimly lit rooms with shadowy figures.
Definition B on the other hand lands a little closer to what you find in pretty much any practice or industry.
You've got the stuff that most people can work their way through, and then you've got the stuff where you can count those who know on one hand.

Software engineering definitely has a lot of those B-type folks spread out over many different areas of expertise.
My favorite area of non-knowledge is probably cryptography, and watching the folks who really *know* is an incredible display of mental prowess and skill.
I tried taking an MIT free course on the basics and was able to follow along with at least some of it, but the raw layers of math are well beyond my capabilities.

That bodes well for my time at MongoDB documenting our security features, especially when I was working through our Kerberos docs.
I remember sitting with the engineer - fairly certain it was Spencer Jackson - trying to understand how the entire system worked, because I had to write the integration docs.
And despite his patience and capabilities as a teacher, it was at some point a technology that I had to draw a line in the sand and say "This is well beyond me."

I don't think there's anything wrong with that, and it didn't stop me from writing the materials either.
I took what I knew about how security and auth/authz and adapted that to the knowledge the SME provided.
But it remains in my mind how much of this critical area of infrastructure was firmly protected behind a gate of Knowledge.

Now I know people will say AI has solved for the problem because you can just ask your preferred frontier model of choice to do the work for you.
BUT - and it's a big but - if you don't Know, you have no ability whatsoever to judge the quality of what that model has presented you.
The gatekeepers of that esoteric knowledge remain, and what's changed is the availability of tooling that allows us to don the veneer of being in the club.

:::{.pull-quote}
BUT - and it's a big but - if you don't Know, you have no ability whatsoever to judge the quality of what that model has presented you.
:::

There's a positive spin to all this, and that's more where I want to take this.
Previously I wrote that what you know about your product and your industry matters in this age of agentic offload.
What you know about the *esoteric* also matters, and in this I mean those areas of exclusive expertise can help drive higher quality engagements with both humans and agents.

Best couch this in an example I think.
I've been working on materials for supporting agentic design with MinIO's AIStor product lineup.
While building out the proof-of-concepts, I found that those deep narrow slices of knowledge I had would often come up as useful while working through the design.

Most of the build benefited from using NVIDIA's AI-Q blueprint as the basis for the workflow.
But what caught me by surprise was that what I knew about OCR and text analysis suddenly become useful in context of ingesting the actual data.
Strictly speaking I could just tell the agent to do the work and call it done, but that leaves the entire question of accuracy on the table of designing a research assistant.

:::{.pull-quote}
Strictly speaking I could just tell the agent to do the work and call it done, but that leaves the entire question of accuracy on the table of designing a research assistant.
:::

I figure I want to build a research assistant that's accurate.
So suddenly being able to think through the full picture of what it means to scan and analyze documents that mix rich media, images, and text reports in a way where we don't lose the critical details becomes pretty damn important.
What the LLM thinks comes through as pretty comprehensive on its face, but because of the time I've spent in the past parsing financial data out of PDFs using Python I could push back a little bit.

It means asking the right questions that drive the LLM back around to rethink, review, and revise the plan based on new data.
Trusting the LLM to get it right just by randomly battering it with prompts doesn't build towards a better engineered outcome.
That's not meaningfully different than trying to build products by battering your engineers and designers with a new directive every week.

Would you believe that what I've know about darkroom photography helped me build a better project scaffold when designing the agentic labs?
It sounds odd at first but having spent tremendous amounts of time experimenting with split-contrast work I found that the underlying approach of balancing light and dark also apply to building curriculum content.
Being able to picture the whole experience and balance the light content against the heavier technical content ultimately benefits the learner.

How each of us applies our esoteric knowledge stores to the work in front of us will naturally vary tremendously.
My choice of NASA's NTRS data for the research assistant was driven by my childhood fascination with aerospace technology. 
What I knew about homebrewing and 3D printing meant I could more easily spot areas of confusion sprouting from paragraphs of acronyms following acronyms.

With agentic assistance there are absolutely walls coming down around these formerly exclusive realms of knowledge.
The quality and long-term viability of that work still depends ultimately on the operator driving the session.
And I think what drives the quality of the operator is not purely domain knowledge, but the ability to take what you know about a variety of topics and adapt it to the challenge in front of you.

Expertise in music theory may not make you a better agent-drive coder, but the ability to understand and match the shapes of music can translate towards how you lay out complementary features or design elements.
If you can understand the layout of an engine you can take that ability to mentally map all those moving parts together and wrap them around building architectures and infrastructures.
The fiction writer can adapt their ability to weave stories and characters into powerful technical marketing content that feels grounded and human in a world of generative slop.

:::{.pull-quote}
The fiction writer can adapt their ability to weave stories and characters into powerful technical marketing content that feels grounded and human in a world of generative slop.
:::

I'd encourage more people in traditionally non-technical fields to start thinking about their skillsets this way.
Some of the best people I've worked with are sitting in roles that their backgrounds don't traditionally align with.
Their ability to excel comes from adapting what they do know to highly technical roles and then learning the rest.

Agents can't learn for us.
They can facilitate the hoovering and summary of data for us to learn and build around.
But we as the operators are still responsible for actually understanding what's in front of us.

Our esoteric knowledge comes into play here too, by virtue of taking our ability to learn and master the narrow and apply that to what we don't know.
If you can learn your way through the chemistry and subjective arts of homebrewing, there's no reason you can't apply that same ability to learning about the technology in front of you.
What's more valuable at this point is the drive and creativity to learn through building rather than rewriting what someone else came up with.

And that last piece is where I think a lot of companies and organizations are getting caught on the wrong side of that line.
If all you do is ask the agent to build something for you and give that output a fastball to publication, you're publishing hot AI slop and everyone knows it.
They'll know it from the tone, voice, style, and construction of the thing you just shipped regardless of what form it takes.

:::{.pull-quote}
If all you do is ask the agent to build something for you and give that output a fastball to publication, you're publishing hot AI slop and everyone knows it.
:::

It might rub the wrong way for me to suggest that the employee who is an absolute expert at grilling might produce better content than an AI-driven content pipeline. 
But it's the storytelling that matters when you're producing user facing content and I'd trust the ability of someone who knows their way around a perfectly cooked patty over a frontier model.
And there's a happy medium-well burger in letting someone leverage their creative skills and esoteric knowledge alongside agentic tooling to produce content that is truly tasty for the soul.

You can dismiss me as being overly poetic or emotional here but I honestly want you to scan the discourse around generative content of all kinds and see where the river is flowing.
I really enjoy [Kelsey Hightower's](https://www.techtarget.com/news/Kelsey-Hightowers-advice-for-platform-engineers-as-AI-looms/857274/) perspective here.
“Underneath the hood, the way we get to those [AI] prompts is still the same,” [Hightower] added. “You have to interact with people, you have to understand the real world, you have to understand your customer base.”

:::{.pull-quote attribution="https://www.techtarget.com/news/Kelsey-Hightowers-advice-for-platform-engineers-as-AI-looms/857274/" rag="include"}
“Underneath the hood, the way we get to those [AI] prompts is still the same,” he added. “You have to interact with people, you have to understand the real world, you have to understand your customer base.”
:::

To me I read this as an endorsement of the importance of our esoteric knowledge stores in the correct application of AI tooling.
The larger discourse around prompt and skill optimization effectively revolves around our ability to attack problems with human creativity.
It's the application of our amassed stores of knowledge and experience tasked towards addressing the problems that customers, users, and yes even machines or agents have.

Your agents cannot really interact with people, understand the real world, or understand your customer base.
They can utilize patterns, documentation, training materials, weights, and algorithms to produce a veneer of these three things.
The danger is that they can present themselves as experts in the esoteric by sheer momentum of terabytes and petabytes of data.

When we trust that momentum with the heart of our products, the product itself suffers and degrades.
We've all seen this in the shipping of features that arrive faster and break more quickly.
That might have been true before, but now we're also missing the knowledge that went into building those features in the first place.

That means we now have to trust the agent that built the problem to solve the problem.
We play tricks using other agents with different weights and biases in the hope they'll catch what the main agent didn't. 
That ultimately means surrendering our knowledge to cloud software that has no skin in the game when it comes to your product, your customers, or even your employees.

There's an acronym in homebrewing - RDWHAHB, which stands for "Relax, Don't Worry, Have A HomeBrew."
And I think we need a version of that in AI-driven software development.
Leadership teams over-worrying about being caught in the landslide of vibe-cloned software try to compete on velocity instead of quality.

The better longer-term outcome comes from a balance that takes us more towards RDWABQS - "Relax, Don't Worry, and Build Quality Stuff."
Consumers benefit the most when we adapt those great engineering principals of human interaction and communication towards what we build.
The humans have that sense of responsibility towards what they are building and producing, and the better outcomes result from that.

:::{.pull-quote}
RDWABQS - "Relax, Don't Worry, and Build Quality Stuff."
:::

RDWABQS means there's still value in our esoteric human knowledge, in pooling that knowledge together across groups of people.
The worst outcome is PDHATMWE - Panic, Disregard Humans, and Trust Machines with Everything.
I think all of us have seen how that turns out even if the larger technology sector is still a few quarters behind.

I'm confident it will come around when in the long term those companies who trusted their people to use the tooling produce software that meets the consumer base in reality.
Those companies that trust the tooling to produce software and backdoor their human knowledge are just as easily replaced by any other company that trusts the tooling.
Devaluing the esoteric means moving towards the sameness of prompt-engineered clones of functionality.

To that end I encourage all of you to remain proud of your esoteric knowledge, the technical and nontechnical experiences you've built up over your life and career.
You might be surprised in how you can adapt all of those experiences towards building better outcomes for your consumers, wherever or whomever (or whatever) they might be.
The age of titles defining what you can do is in my humble opinion at its end, and what matters now is being able to take what we know and flex towards the brand new horizon of the agentic world.


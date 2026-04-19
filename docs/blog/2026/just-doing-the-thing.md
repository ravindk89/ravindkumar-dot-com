---
title: Just doing the thing
date: 2026-04-19
layout: blog
hide_aside: true
hero_eyebrow: I really don't have an excuse now
---

It took just about 30 days to get to this point if I start counting from the first bit of (AI generated) code piped from some remote server farm to my Xubuntu-on-a-stick laptop. 

If I start counting from the first time that I said out loud "I really need somewhere to write things," then I'd have to count from the last thing I wrote on some blogging platform whose hostname I have entirely forgotten. 
Which, I think, gives some indication of just how long it's been since I've written for anything outside of a professional contribution.

It's worth noting that I did do this the hard way in the end. 
There's half a dozen sites which are built on the premise of 'this is somewhere to pump a nonstop stream of <stuff> out onto the internet.' 
Even if I wanted to separate myself from the *aaS services, most small virtual private server hosts offer website build-from-block toolings to make something like a blog fairly trivial.

Hell after all these years of doing docs-as-code work I really should have just grabbed something like Hugo and gotten this done in a day and a half.

So why *did* I flog myself through the exercise of fighting Claude through context window and 5h usage limits for weeks just to build an SSG of my own?

Honestly, part of it was just to see if I could.
I have had the privilege of working with excellent engineers and frontend designers, and I've learned at least enough to be dangerous.
But my experience and ability as a coder still leaves a bit to be desired.
And at least one major point of discussion in mature and proper AI usage is "You have to know enough to catch the machines in their bullshit."

So I did a few things:

- Built [Braised Docs](https://ravindkumar.com/braised-docs?ref=internal)
- And used that to build a [markdown port of PostGreSQL docs](https://ravindkumar.com/postgres-docs?ref=internal)
- And also used it to build this blog site

I do strongly believe at this point that AI is a 2-steps forward 1-step backwards kind of development structure.
For everything it does right, it does just enough wrong to slow you down.
The major dangerous point is that if you're not paying attention, reviewing what it does, and challenging it's assumptions, you wont slow down at all.
And the risk there is incredibly stupid things end up bleeding through to a public-facing product, site, or feature.

A few quick lessons I took that I do think helped a lot in development of this entire set of projects:

- Planning mode is your friend
- Build a Product Spec / Feature Spec up front to set your scope and guidelines
- Create target stages to build up complexity over time
- Test and review frequently to ensure things work the way you expected
- Be open to throwing away work to try something else

If that sounds oddly familiar to how product design and management works in the pre-AI era, that's because it's *still* relevant in the AI era.
Maybe moreso, because between context window limits and post-compaction drift, having some way of tracking what you're trying to do helps keeps whatever model you're depending on for code support.

Future posts are likely to continue drifting in and out of discussing the experience of using AI augmentation to build things - or to build things in spite of AI augmentation, whichever it happens to be at the time.
And no, that hyphen is mine in fact. 
For this blog at least, I can promise that it's just me writing, typos and all.

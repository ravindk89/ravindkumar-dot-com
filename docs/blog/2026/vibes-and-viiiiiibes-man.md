---
title: Vibes and viiiiiibes man
date: 2026-04-22
layout: blog
hide_aside: true
hero_eyebrow:  It's just a feelin' | That's all it's been
---

Did you know that you don't need to password protect SSH keys in production?
This was news to me, having spent some years working with security-minded engineers and customers alike. 
Had I knew it was that simple we could have saved ourselves a lot of trouble during situations where someone forgot a password and locked themselves out of a production-servicing host. 

The reasoning was somewhat sound - the private key was being held in a secure vault, and if you trusted the vault then there wasn't anything to worry about.
And there's truth to that, to the point that it's an area of education we've often had to walk security concerned customers through.

Taking a moment to dwell on it, think of it like this - a keyvault has to have a key. 
That key has to live somewhere, and whoever has access to that key has access to the vault.
So where do you keep the key?

It has to live somewhere, and you have to trust where it lives.
With MinIO, this usually came up in conjuction with concerns around keeping certain secret values in plaintext as part of the configuration file.
This was also a concern at MongoDB, where some config values contained sensitive data.

At Mongo the solution was externalizing the ownership.
Engineering added an honestly sharp feature where you could call out via REST or shell exec to an [external service](https://www.mongodb.com/docs/manual/reference/configuration-options/#externally-sourced-values) and retrieve the secret value.
Nothing kept in plaintext and the risk was fully offloaded to a remote endpoint.

Except you still have to trust that endpoint.
And the config inherently contains information on how to access that endpoint.
So if someone manages to break root, they'll have access to it anyways.

With MinIO the discussion was very much the same.
Our configs were typically read-only by the owner-group, which was (if you followed our documentation or used our DEB/RPM defaults) a no-login no-home-directory system user.
That also meant the only person who could read that config would be the root/superadmin user, at which point the entire server is open anyways.

So we have a nugget of truth upon which we can build a mountain of lies.
It is true that when it comes to protecting secrets, you have to trust the location of the key.
That might be a person, a software, a tool, or a post-it stuck to the back of a server rack.

Some of you might guess where this is going, or from whom this striking new information came from.
AI is a powerful tool, but it has serious risks when it comes to it's ability to extrapolate and present highly misleading data with tremendous confidence.
And if you're hoping you can rely on high-power models to help you, let me disappoint you and say that this all happened using Claude and Opus (4.6 at the time). 

It's not as if this is new information.
It's well established that AI ultimately cannot determine **Truth**.
A combination of training data, algorithms, heuristics, and a good deal of black-box magic goes into driving the insights that we increasingly rely on to get things done.

In this particular case though, what struck me as particularly dangerous was that the model drew insight **despite being given a primary source**.
That is, I pointed it directly at the documentation for a library, and it returned a hallucination in response.

That's actually the second time that it's happened to me in a way that really stuck in memory.
The first was inspecting some code for AIStor Key Manager (MinKMS at that time).
I was hunting around to sync up some configuration behaviors, and it returned what a very outdated description.
I had to double take, because the information presented was clearly wrong, and yet the model was confidently asserting it as the truth.

In that moment what saved me was what I already know about the product.
When I dug into the code, what I found was that there were some outdated comments above a critical function, and the model prioritized that information as part of its information synthesis.
 
Someone who was completely new to the code or otherwise had low code literacy might make the exact same mistake.
The AI is actually doing something that's fairly human as far as reading comprehension goes. 
It read something and decided that what it read was true.

I'll bring us around to the intro again here because this is where the threat of viiiiiibes really starts to show up.
Let's say you're using AI to vibe code, and the topic or area your exploring is one that you don't know a lot about.
The AI presents you with information, or a decision, or a design choice in a way that inspires high confidence and certainty. 
In that moment, what do you do?

Viiiiiiibe coding says that you just let the model do the thing.
If it happens to be the wrong choice, you can always just viiiiiiibe your way through that too.
With sufficient viiiiiiiiiiiiiibes you eventually get to some sort of finished product or thing that accomplishes the task you set out to solve.

Or at least it probably accomplishes that task.
Hopefully at scale, in a secure fashion, and without memory leaks, painful edge behaviors, unexpected crashes, or any number of other things that will drive users and customers to a land far, far away.

So here we are as I'm trying to figure out why the hell the [burnett01/rsync-deployments](https://github.com/burnett01/rsync-deployments) GitHub action kept halting without emitting any errors, logs, or a hint of something that might help me move things forward.
There were no logs in the `sshd` logs, so my best guess is something in the secrets was off and SSH was failing to fire.
Except that equivalent `rsync` commands against the same keys locally seemed to work.

I needed better debugging and more details on how the action interacted with SSH under the hood.
So I pointed Claude at the project and asked it to hunt for guidance on how SSH behavior was intended to work.

As part of it's answer, Claude stated with incredible confidence that the README itself suggested as an official/recommended course of action to simply not password protect SSH keys and trust the GitHub secrets vault.
I've lost the wording to session compaction and time, but it struck me with the level of certainty and presentation.
If I didn't know better, it seemed as if the model was making a direct quote.

Except I was certain that the README made no such recommendation.
It would be completely out of the ordinary for any PKI-adjacent tool to seriously suggest wielding unprotected private keys in production environments.
Even if you trust the vault, it's basic security practice to protect your keys.
And also, I *don't* trust the vault given that GitHub has had real issues with exploiting [actions behavior](https://orca.security/resources/blog/pull-request-nightmare-part-2-exploits/) to expose secrets and inject into `main`.

Viiiiiiiibe coding doesn't mesh well with this kind of common behavior.
If you don't have the knowledge, context, or gut insight to call the model on it's bullshit, you're likely to make decisions or drive development based on bullshit.
And that ultimately means that whatever you're building is built on bullshit, making it more bullshit.

That's where I think the larger discussion lost tack on **vibecoding**.
The best vibecoders I know are the ones who keep themselves in the critical development loop as an orchestrator of agentic tooling.
They criticize, review, scaffold, push back, argue, and rebuild as the development process moves forward.
In other words, they behave like engineers, developers, designers, coders, product/project managers, and the gamut of other personas that get involved with development.

The distinction comes from being able to control your tools and drive them towards an intended result.
Rather than trusting the agent to tell you the difference between an ass and an elbow, you utilize your own skills and domain expertise to determine which is which and demand the agent build things accordingly.

I eventually identified the issue as outdated environment secrets and what I think was just a mis-copied private key.
And I absolutely needed assistance from the agent in helping to construct innumerable test scripts and commands that I wielded with impunity in attempting to diagnose the issue.
And pushing back on the agent with a "That definitely doesn't sound right. Check your sources" *did* eventually get me some useful insight.

And that is really the key to success with this model.
I never let go of the control stick. 
The time and energy I've spent in learning and understanding these systems still matters, and neither laziness nor complacency benefit me an iota even with the allure of unlimited token spend in corporate environments.
The same goes for everything that you've learned and gained expertise in over your career.

It's just **vibes** maaaaaaaaaan.
Use them wisely.
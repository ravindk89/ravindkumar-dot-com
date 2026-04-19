---
title: Braised Docs
layout: page
---

[Braised Docs](https://ravindkumar.com/braised-docs/?ref-internal) is a Proof-of-Concept around docs with out-of-the-box support for RAG pipelines and a process-level MCP for improved development.

I built it for two main reasons:

1) To see how far I could get in building an SSG using AI generation with my own project/product management knowledge

2) To try solving a problem I think actually exists when it comes to docs in the AI era.

Braised in and of itself isn't special.
If you have a docs site, there's probably a way for you to pipeline the contents to a vector DB and support RAG/MCP/Whatever processing.
What I wanted to do is make that a first-line part of the build, and work towards adding in further integrations that capture the zeitgeist of AI/agentic interactions with docs.

That means things like production builds automatically running through chunking/embedding pipelines, or 'backmatter' functionality to help connect your docs to the underlying code for AI-augmented updates.
It has a built-in MCP that in theory should allow for easier development using AI without having to manually review or `curl` the docs (agentic or otherwise).

A lot of this is still in-flight, but I've gotten it to work on local Proof-of-Concepts so the wiring is the next step.
And also hosting - everything should be available on this site at some point, so you would in theory have a few options on how to connect and make use of things.

Right now I'm just linking to the docs. 
You can actually pull down Braised as a container and experiment with it yourself:

```shell
podman run -v ./:/docs -p 4321:4321 \
  ghcr.io/ravindk89/braised init
```

That builds a Braised scaffold in the working directory.
You can then run `braised serve --host 0.0.0.0` to dynamically serve the content and do that update-and-review pass that SSGs like Hugo offer.

The Braised Docs themselves are mostly AI generated and need a lot of human-touch.
That's also on the list, but I'm taking this one step (and a 5h session limit on Claude) at a time.

At this time Braised is *not* open source. 
I need to spend a considerable amount of time on it before I'd be comfortable doing so, and even then I'm not entirely sure I want to open it up.
I have tremendous respect for the Open Source community, but I'm also not in a position to manage community expectations or requirements right now.
It's a bit presumptive to assume the project would get even a 1/100 of the attention necessary to be a problem, but I also do not have 1/100th of the bandwidth to address it either way.

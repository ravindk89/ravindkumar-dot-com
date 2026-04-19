---
title: PostgreSQL + BraiseDocs
layout: page
---

A contemporary rendering of the PostgreSQL documentation, and a testbed for using [Braised Docs](https://ravindkumar.com/braised-docs) to build a RAG + MCP server to see how it could benefit PostgreSQL development.

So I want to be super clear here - the PostGreSQL docs have existed in their current form for a good reason.
My choice in using them is not derived from a critique of the PGSQL docs team.

Rather, it is a long-standing and well-known corpus of documentation, which makes it a fantastic candidate for both migration *and* RAG-ization.

If Braised does what I built it to do, then at some point my [PostGresQL docs](https://ravindkumar.com/postgres-docs/) will include a full MCP server, which in theory would help any developer in their PGSQL work.
This is purely from a docs perspective - this is not an MCP built around things like query analysis or database management.
It's an MCP that can help you answer questions about how things should work, what commands are supported, and what valid syntax a specific query might need.

What this is not, and never will be, is a replacement for the PostGreSQL docs.
There are errors from the conversion process, and I could not hope to manually review ~1000 pages for everything that might have gotten crumpled in the process.
It's purely to showcase that Braised works, that the RAG->MCP pipeline works, and that it is a real value-add for any documentation project.

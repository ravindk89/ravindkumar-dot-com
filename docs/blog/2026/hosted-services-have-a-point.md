---
title: Hosted services have a point
date: 2026-04-20
layout: blog
hide_aside: true
hero_eyebrow: DIY is a royal pain in the ass
---

I think the question came up during my [Write the Docs 2025](https://youtu.be/etEZhIjoumc?list=PLZAeFn6dfHplMbtJtidqFFtL7rt3ASNSR&t=1992) as to whether I would 'advocate build vs buy'.
The sum total of my point was 'do what you gotta do,' and a year later I think I'd make one teensie tiny modification to that point.

The long story up front is simple: self hosting kind of sucks.
If it didn't suck, no one would need the endless ocean of PaaS/SaaS/*aaS operations out in the world that do little more than take the thing that you usually deploy onto the box and deploy it onto another box somewhere else.
Then you just use the thing without ever thinking about the box.

For this particular website project a large point of it was to dig into some self-hosted infra that I hadn't really touched prior.
I do run and manage the MinIO webserver, but that's a fairly light-touch piece of hardware running in the cloud and with a dead-simple webserver config. 
It also benefits from the cloud provider having some nice tools on top for reliability and accessibility. 

For a static site content, the components are simple at first glance:

1) A webserver host - a physical machine, a VPS, but ultimately able to run a Linux distribution of some sort

2) Your website content

3) A DNS provider (ideally) to give you a nice hostname to access 1 and eventually 2 from.

4) Some amount of firewall shenanigans to expose ports and sync to DNS

With a hosted solution you at least get a bit of the goods by having someone else manage standing the server up and giving you neat, clean controls for configuring SSH, firewall rules, and maybe even level of DDOS protection out of the box.
I declined to take advantage of any of these things because saving 4-8$ a month was definitely worth the actual list of things I had wrangle into making this work:

1) A physical host (an ODroid H2+ in this case) running Xubuntu (I always forget how much I dislike XFCE).

2) Unending network configurations to properly route external traffic to the host.

3) SSH keys. So many SSH keys, and how the hell do I keep mixing them and their passwords up.

4) `ufw` and `fail2ban` because within *seconds* of getting this working I was getting blitzed with php and wordpress exploit attempts.

5) `ddns-updater` to keep everything sync'd up with my DNS host.

6) so much `nginx` configuration trying to get logs into *just* the right format.

7) More `nginx` configuration because I needed to handle some unexpected 404s.

8) More `nginx` configuration because both Claude and Gemini sent me down rabbit holes trying to track down an odd `404` from a friend that I never resolved.

9) Github actions, which cannot be trivially tested locally without using a third party tool (`act`) that itself took a bit of tweaking to run using Podman.

10) Dozens of attempts to figure out which Github secret I had mangled that was causing all my deployment actions to fail.

Right so to be fair, a lot of the above would happen with a VPS. 
But a lot less would happen with something like Squarespace or Mintlify or any other tool that handles the heavy lifting of hosting, deployment, and management for you.

Now I will say - it was nice to have Claude in the background to bounce things off of. 
There are limits to how much Google research and docs review can get you before just punting it to the great psuedo-thinking machine in the cloud.
One area these tools are absolutely fantastic at are generating and validating well-known configurations, like an NGINX server configuration block or rewrite rule.

But, coming back to the lede, would I advocate for build or buy?
Honestly, it still kind of comes down to the time commitment you want to make.
Right now, in this moment, I have the time to do it the hard way, so I'm commiting to doing it myself and being pissed off about half the time.

But a month or a year from now, I might feel differently.
And at that point, spending a few bucks a month on a VPS, or a few bucks a month on a website builder, or a few bucks a month on a CDN to help with availability, or a few bucks a month for a frontend to help me with WYSIWYG editing, or...whatever it is that makes life *easier*.
Whatever that thing is, I'll probably end up pulling the trigger on it.

Because hosted services have a point.
It is a lot less likely to be up at midnight debugging an issue when you pay for it to be someone elses problem.
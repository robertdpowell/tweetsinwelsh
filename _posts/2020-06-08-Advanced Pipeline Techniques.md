---
layout: fullpost
title: Advanced Deployment Pipeline Techniques
summary: My key takeaways from Dave Farley's 'Advanced Deployment Pipeline  Techniques' Masterclass seminar, part of GOTO Copenhagen 2020.
---

Jez Humble and Dave Farley's 'Continuous Delivery' book first introduced me to many of the concepts around Lean IT, continuous integration and the deployment pipeline. It remains a permanent fixture on my office desk and I dip into it regularly, both for inspiration and for pointers on how to tackle specific challenges. Dave Farley has been quite active on Twitter recently (and [YouTube](https://www.youtube.com/channel/UCCfqyGl3nq_V0bo64CjZh8g)) and it was his feed where I saw this 'Advanced Deployment Pipeline Techniques' masterclass advertised. Without much hesitation, I enrolled myself and two of my team on to the course.

This one day course, delivered live online, consisted of four 60-90 minute sessions, each focusing on a particular Continuous Delivery theme/topic. At the start of the day, Dave asked the participants what specifically they were hoping to get out of the course and used our answers to inform some of the day's topics.

For us, the topics chosen were:

1. CD pipeline fundamentals 
2. The anatomy of the CD pipeline
3. Infrastructure as Code and the pipeline
4. Managing data as part of the pipeline

Items 3 and 4 were/are top of my list of topics to learn more about and where I need to focus some attention in my current role, so I was very glad that they were included.


#### My 3 Main Takeaways
There was a lot of content to go through during the sessions and I'm still reading through my notes and the shared course slides. But the three things that really stuck with me from the course were as follows.


##### The CD Pipeline as an Evaluation Machine

A 'Pipeline' can be quite an abstract concept and in my experience, the term means different things to different people. To an engineer on my team, it's a groovy script file. To a delivery manager it's the automated deployment process. 

I really liked Dave's description of the pipeline as an **'evaluation machine'**, which we use to test whether or not our release candidates are production ready.

<p><img class="blog-image" src="https://robertdpowell.github.io/rp_blog/img/evaluationmachine.png"/></p>


We pump our release candidates into one end of this evaluation machine, and it quickly tells us whether or not we have a viable unit of change that can continue on the path to production.

This serves as a simple, clear and easily digestable representation of a CD pipeline and I expect I'll use this in the future to help explain what the pipeline is at 20,000 feet.

As an ambition, the 'evaluation machine' should run in < 5 mins and give us an 80% confidence level in the release candidate. As a whole, the deployment pipeline should run in under 1 hour and therefore it should be possible to trigger it multiple times per day. 
The value of getting to a releasable outcome multiple times a day is so high that we should be doing whatever it takes to achieve it!


##### The CD Pipeline Scope

What is the unit of work that we should push through the pipeline? A feature? All output from one delivery team? A microservice? The whole system? It might indeed be all of these things, but the important factor to consider is that the unit of work is **independently deployable**. 

<p><img class="blog-image" src="https://robertdpowell.github.io/rp_blog/img/deploymentscope.png"/></p>

As such, we shoudn't be deploying our unit of work without any dependent systems or services that our change needs to be tested against. This touches on the topic of systems coupling and dependency management. While monolithic applications have a bad reputation, from a deployment pipeline perspective it has some advantages as we don't need to worry ourselves with the dependency management challenge. We touched on the topic of bounded contexts and it's clear that architecture and systems coupling can act as a contraint or enabler for our continuous delivery efforts. 


##### A CD Pipeline for your CD Pipeline

Our pipeline itself can be considered a product or service to which we should also apply the principles of Continuous Delivery. As such, we should be storing all pipeline artefacts in version control (source code, config, infra scripts). At any point in time, we should be able to determine which version of our pipeline was used to handle a specific release candidate and we should be able to recreate our pipeline infrastructure from code. And of course, changes we make to the CD pipeline are committed frequently, run against tests in our 'evalution machine' and our pipeline engineering team get fast feedback as to whether or not the release candidate is worthy to continue on its journey to production.

















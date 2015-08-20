---
layout: project
title: RAMLR
project_name: RAMLR
post_title: RAMLR Visualization and Syntax Highlighter
banner: 
    image: projects/ramlr/banner.png
    lead_color: 'fff'
    stroke_color: ''
---

RAMLR is an internal software I developed with two other teammates during my internship at Crunchyroll, Inc..

### Objectives

The engineering team responsible for Crunchyroll's new payment system just finished speccing out most of their API, and everyone was busy finishing their first sprint. With minor changes and modifications being made on the API on a daily basis, it was a huge hassle for the team for sync the RAML file back and forth and make sure that everyone's on the same page. Thus, the idea for a RAMLR console that pulls from a centralized location was born. I talked to my mentor and asked to be assigned to this project. 

The goal of RAMLR was to take MuleSoft's RAML Console application, combine it with a syntax highlighter, and port the application to a Symfony2 web app that has to be run locally.

### Research

The research was rather straightforward for a team of 14 working in an office with transparent infrastructure. Everyone had the proper hooks on their computer to download and install Symfony2 web applications, and the entire network was hooked up so that web apps from any dev's computer could serve documents to any other machine in the network. In addition, everyone on the team has at least two monitors as thier workstation setup, so wide-screen assistant app sounds like a reasonable design. 

### Design and Development

The first step was to pick the right combination of front-end tools and backend structure to make sure that MuleSoft's RAML Console can be properly transplanted. I did a few experiments and found out that with a little bit custom workaround, the best way is to run RAML Console (an Angular.js app) inside another Angular.js app, which hosts modules necessary for syntax highlighting as well. 

After that, we discussed how we could best store bookmarks to RAML document locations in the network. We thought it'd be the best if our API is consistent with theirs, so engineers feel at home when writing endpoints that serve their own RAML documents. We talked to the guys in the team and made sure our API format lines up with theirs.
 
With that, one teammate created a Symfony bundle that serves up RAML documents. I worked on the Angular application to ensure a seamless user experience and the other teammate coded out the backend for storing bookmarks and keeping track of history. 

<img src="/assets/images/projects/ramlr/shot1.png" class='responsive-img materialboxed' />
<img src="/assets/images/projects/ramlr/shot2.png" class='responsive-img materialboxed' />
<img src="/assets/images/projects/ramlr/shot3.png" class='responsive-img materialboxed' />

### Reception

Immediately after the first working prototype came out, we deployed it and studied the feedback from the team. The rest was iteration after iteration, until my internship ended. The developers really enjoyed the added speed and convenience. More importantly, no one would code based on outdated APIs only to realize later anymore. I was glad that the team liked what we did. 
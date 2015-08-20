---
layout: project
title: RoomForward
project_name: RoomForward
post_title: Better apartment search and management experience 
banner:
    image: projects/roomforward/banner.jpg
    lead_color: FFFFFF
    stroke_color: '000'
---

### Mission

[Jasper](https://www.linkedin.com/in/jtcheng93) and I started [RoomForward, Inc.](http://www.roomforward.com) in 2014 to create a product of the same name. The product idea is a streamlined apartment search, application and payment platform that's designed to work with college students and landlords. We wanted to simplify apartment hunting process and take the pain away from the pile of things a college student already has to worry about.

### Design

RoomForward serves two target user groups simultaneously: students and landlords. Therefore, instead of lumping the two interfaces into one site, we wanted to tailor the best possible experience for each group.

We did some studies for landlords in Berkeley and received complaints from multiple agents that uploading apartment photos and information manually was generally the most painful. Reviewing each applicant's background and credit score was a tedious process as well. [Haidee](https://www.linkedin.com/pub/haidee-pan/70/333/971), our user interface designer, and I worked together in the beginning to put together a sensible interface design while the developers were thinking about platform and technologies. 

#### 1. Batch Management

To address one problem real estate agents had, we sought a better way to manage hundreds of apartments at once. RoomForward lists all your apartments with important sorting information. Allowing a quick glance at the state of things in the simplest way possible.

<img src="/assets/images/projects/roomforward/batch-management.png" class='responsive-img materialboxed' />

#### 2. Applicant Information Package

We can all imagine how much of a pain it is to sift through dozens of documents from a student applicant group and the landlords couldn't agree with us more. Why don't use capture all of this information in one dashboard, and pull in third-party data automatically so landlords/agents don't have to pay for those information themselves? RoomForward features an Application Information Package (AIP) system where it pulls in the most important data automatically and present them in a user-friendly way.

First, let's look at a few innovative approaches we took in the AIP design:

0. **Clean Hierarchy**: All applications are grouped by apartment complexes, and then divided into groups. Each group has an overview page and individual application information from each student. This hierarchical view brings order to the mess that is a pile of applications and shows a refreshingly clean way to organize applicants.
<img src="/assets/images/projects/roomforward/hierarchy.png" class='responsive-img materialboxed' />
0. **Contact Abstraction**: Each group features a "Lead Contact," which is a student who represents the group in dealing with applications. This abstracts away the group into a single representative and further reduces stress on agents. 
<img src="/assets/images/projects/roomforward/lead-contact.png" class='responsive-img materialboxed' />
0. **Meaningful Score**: Every application in each group is carefully evaluated by a custom algorithm and contributes to a group score that defines the trustworthiness of an entire group. Although individual examinations are still necessary, this single-point data allows landlords to quickly filter out unwanted groups and narrow down to their ideal applicants more quickly than ever before. This score is not agnostic to landlords. Each landlord will adjust their bias values on each category, (eg. "credit score", "group size", "school year", "number of references", etc.) so the score reflects what's most important to this particular landlord/agent.
<img src="/assets/images/projects/roomforward/score.png" class='responsive-img materialboxed' />
0. **Critical Overview**: Before diving into the individual applications, a landlord might want a quick detailed overview for the group. That's why "Group Overview" feature provides the most critical information right below the score card. This card shows any critical information that you might be interested in. For example, if all of the group members are employed except one, Group Overview will let you know so you might want to investigate further.
<img src="/assets/images/projects/roomforward/critical-overview.png" class='responsive-img materialboxed' />

Putting everything together, we have our Application Information Package system.

<img src="/assets/images/projects/roomforward/aip.png" class='responsive-img materialboxed' />

For individual applications, the system looks like this:

<img src="/assets/images/projects/roomforward/individual.png" class='responsive-img materialboxed' />

#### 3. Meaningful Search for Students
Craigslist provides a generic approach to searching, which is good enough for everyone. However as students, we are very particular about areas around the campus and sometimes the kind of Internet options we have. That's why RoomForward provides search options that make the most sense to local students.

<img src="/assets/images/projects/roomforward/student-search.png" class='responsive-img materialboxed' />

For many, options specific to college lifestyle are important as well. For example, if my group has 4 people, apartments allowing only a maximum occupancy of 3 obviously need to excluded. Sometimes, I don't want a full kitchen at all since no one plans to cook.
<img src="/assets/images/projects/roomforward/student-search-expanded.png" class='responsive-img materialboxed' />

The approach we take to searching solves the college living problem at its very core. With options varying based on region and college, RoomForward fits college apartment searching needs like a glove.

#### 4. Unified Application
I'm sure that everyone is tired of filling out dozens of applications containing nearly identical information, over and over again. That's why Unified Application is a must-have for us. You fill out the application the first time you apply somewhere, and the same application will be used automatically for the future unless manually changed.

<img src="/assets/images/projects/roomforward/unified.png" class='responsive-img materialboxed' />

### Development

Originally, our developer and I were working independently on backend and front-end features for a while without a rigid schedule and structure. After a month of initial skeleton building, the rate of production bugs was rising to alarming levels. I talked to the CEO, the designer and the developer and convinced them to adopt agile development methodology. The requirement was that everyone will do daily "standups" over Skype. It was a little bit stressful in the beginning considering everyone had to make time on top of their busy lives already. However the results coming in soon proved it worthwhile. Production bugs were reduced nearly by half and our progress was much more transparent. The CEO could now grasp the value of each of our tasks more clearly with user stories. The developer and I were working closely to make incremental changes and left little room for compound bugs.

### Pivot

Unfortunately, the world of startups is never only rainbows and unicorns. Right about half way through our development, [OnMyBlock](https://www.crunchbase.com/organization/onmyblock) came into our attention as they aggressively campaigned in campuses. They had $840.4K seed funding and had a more developed product than what we had. With our bootstrapped budget and limited labor, we weren't sure if a head-on competition with OnMyBlock was a wise strategy. After a few discussions, we decided that it's best for the company to pivot to a new product.
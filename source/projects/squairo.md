---
layout: project
title: Squairo - Solving a storage problem
project_name: Squairo
post_title: Solving a storage problem
banner:
    image: projects/example/feature_shot.png
    lead_color: FFFFFF
    stroke_color: '000'
---

### Problem

College students switch apartments and travel often. We have internships and research projects over the summer and finding sublets becomes a seasonal activity. What's really annoying amid all these logistical troubles is seeking storage. Of course you can seek out traditional storage, where you have to deal with inflexible dates and expensive rates. Or, you can find a group of friends to share storage together. However, that is another logistical hassle in itself.

### Proposed Solution 

Introducing Squairo: we find reliable people with available apartment/house spaces in your vicinity and help you check in your items into those spaces. Think "Airbnb of storage space."

### Research

Squairo is all about connecting people with free spaces to those who need them. We want the process to be as hands-free as possible, reducing much of the usual overhead of seeking storage. Initially, we thought of an artificially intelligent system for matching space resources with demands most efficiently. We experimented with the idea for a while and realized that it's an overkill for most people, whose criteria for storage space tend to be the same: safe, indoor, and cheap, and most providers of spaces also tend to satisfy these conditions. In other words, I don't really care if my stuff is stored in Jon's apartment or Elise's apartment, as long as both parties seem decent and are equally far from me. The only differentiating factor here is distance and trust.

For those reasons, we decided that for a MVP, we want to keep it simple and let users choose. The question now is: should storage seekers pick space listings or should space providers make offers to seekers? This is like a stable marriage problem, whoever proposes first has a distinct advantage over the asked. We observed a few things about the storage market and concluded the following:

0. People tend to overprice their free space.
0. Space providers are incentivized to stack items to maximize profit. 

How do we encourage providers to strike a balance between profit and fair price? How do we discourage providers from stacking multiple people's belongings and potentially cause damage? Our answer to this question is the unique advantage of Squairo.

### Design

Squairo has an innovative approach to storage seeking. Our workflow is consisted of 5 parts.

#### 1. Seekers post requests
Storage seekers post their desired durations and dimensions, alongside a few other options, and we give them an estimated cost for the entire duration. That's it. Squairo's goal is to simplify storage hunting process. It can't be simpler than just telling us what you want. However, what happens behind the scenes is just as interesting.

*Initial Mockup*
<img src="/assets/images/projects/squairo/mockup/new-stash.png" class='responsive-img materialboxed' />
*Final Production*
<img src="/assets/images/projects/squairo/homepage.png" class='responsive-img materialboxed' />

#### 2. Providers maintain Virtual Rooms
Each storage provider creates a Virtual Room that represents their free space. In this Virtual Room, the provider can arrange items, take in and reject new offers. The virtual room serves as the main interface where a provider picks storage requests whose duration, distance and size best match his/her availability.
 
*Initial Mockup*
<img src="/assets/images/projects/squairo/mockup/virtual-room.png" class='responsive-img materialboxed' />
*Final Production*
<img src="/assets/images/projects/squairo/virtual-room.png" class='responsive-img materialboxed' />

#### 3. Providers make offers to seekers
Once a provider chooses to place the request into his/her Virtual Room, an offer is made to the storage seeker. If the seeker accepts the offer, both parties will enter the code exchange phase.

*Initial Mockup*
<img src="/assets/images/projects/squairo/mockup/my-stashes.png" class='responsive-img materialboxed' />
*Final Production*
<img src="/assets/images/projects/squairo/my-stashes.png" class='responsive-img materialboxed' />

#### 4. Region-Sensitive Pricing
The pricing is determined through our Region-Sensitive Pricing algorithm. We examine each region's demographic profile and determines a balanced formula to calculate prices incentivizing enough for providers to provide the service and affordable enough for seekers to choose us. 

*Final Production*
<img src="/assets/images/projects/squairo/price-calc.png" class='responsive-img materialboxed' />

#### 5. Code Exchange
To make sure that both parties have a form of insurance, we designed the Code Exchange phase. When a seeker accepts an offer from a provider, s/he will receive a "Stashing Code" which is to be given to the provider when s/he made sure everything is checked in according to our policy. Only then, the provider will receive half of his/her payment. When it's time to check out, a "Retrieval Code" is used according to a check-out process so the provider receives the other half of the total payment.

*Initial Mockup*
<img src="/assets/images/projects/squairo/mockup/codes.png" class='responsive-img materialboxed' />
*Final Production*
<img src="/assets/images/projects/squairo/oak-overview.png" class='responsive-img materialboxed' />

### Strategy
The nature of Squairo dictates how we strategize the product. For one, it'll be impossible for us to visit each campus and localize the pricing formula, one by one. The product is also seasonal, which means little usage for most months of the year. If we were to only target a few campuses, we'd have to wait for a whole semester just to iterate and get feedback, let alone the lack of revenue to even keep the site running. 

We think a franchise approach to this product will be the best. We developed the Squairo Seed Program.
<img src="/assets/images/projects/squairo/franchise-inofgraphic.png" class='responsive-img materialboxed' />

Essentially, we provide aspiring business owners their own instance of Squairo for which they could customize and develop custom branding. This strategy offloads the burden of individual and manual localization for us and pushes Squairo system and technologies to a wider audience. 

Currently, Squairo is in the process of deployment at three UC campuses. 
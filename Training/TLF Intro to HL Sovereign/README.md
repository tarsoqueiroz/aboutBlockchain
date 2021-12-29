# The Linux Foundation - LFS172x - Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries & Ursa

> `https://learning.edx.org/course/course-v1:LinuxFoundationX+LFS172x+2T2021/home`

## Welcome!

### Introduction and Learning Objectives

Welcome to LFS172x - Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries and Ursa!

To the surprise of absolutely no one, trust is broken on the Internet. Wherever you go online, the advice is the same—be wary. Will the link give you a virus? Can you trust that the website is legit? Is the information you’re reading really true? The fact is, when it comes to the Internet, there is a huge lack of trust! And that’s why you’re here, to learn how privacy, security and control of our own data, can be brought to the Internet through the use of the Hyperledger open source projects, Indy, Aries and Ursa.

In this course, we’ll dive into these three identity-based projects, looking at the tools, libraries and reusable components they provide for creating and using independent digital identities rooted on blockchains or other distributed ledgers. We will explore the possibilities they offer for building applications on a solid digital foundation of trust and examine how these technologies can make the Internet safe. It’s quite a challenge!

### What You Will Learn

Hyperledger Indy, Aries and Ursa are blockchain-based frameworks that enable an important missing layer of the Internet—the trust layer. While still rooted in blockchain technology, the use of blockchain in these projects is quite different from the other Hyperledger projects, such as Fabric or Sawtooth. Where the other projects are general purpose blockchain systems (they can be used in many situations), Indy, Aries and Ursa are used for a specific purpose—and it’s big! They are about identity on the Internet and being able to trust the data passed to you. They are about being able to prove to others who you are and you being certain who they are.

![Phone with a sticky note](./images/Phone_with_a_sticky_notes.png)

What’s the big deal about identity? Well, when the Internet was first created, all of the computers that were connecting to one another were "trusted". The number of systems was small and the people running those systems knew each other so they didn’t need mechanisms to know who was sending what data between the systems. As the number of systems on the Internet grew (and grew and grew…), that trust quickly diminished and the first of many mechanisms was added to systems to try to identify who was contacting whom. Unfortunately, the problem has never really been solved. The most common (and universally hated) system, that of user IDs and passwords, is fraught with problems. The resulting lack of certainty of who is on the other keyboard has led to the loss of billions from hacks, data breaches, identity theft, scams and more. Further, that same lack of certainty has made many types of business transactions on the Internet impossible—the risk of being fooled is just too high.

Indy, Aries and Ursa have been created to add a trust layer to the Internet using mechanisms that are easy to use, enable online trust and enhance privacy. It’s a big goal that is of vital importance to everyone on the Internet. And, it’s a goal that has recently become realizable with the advent of blockchain.

### Before You Begin

We strongly recommend that you review the course syllabus before jumping into the content. It provides the most important information related to the course, including:

  - Course overview
  - Instructors biographies and targeted audience
  - Course prerequisites and length
  - Course learning objectives and the outline
  - edX platform guidelines
  - Discussion forums, course timing, and learning aids
  - Grading, progress, and course completion
  - Professional Certificate Program Audit and verified tracks
  - The Linux Foundation's history, events, training, and certifications.

### Getting Help

For any **technical issues** with the edX platform (including login problems and issues with the Verified Certificate), please use the Help icon located on the upper right side of your screen.

One great way to interact with peers taking this course and resolving any **content-related issues** is via the Discussion Forums. These forums can be used in the following ways:

  - To introduce yourselves to your peer learners.
  - To discuss concepts, tools, and technologies presented in this course, or related to the topics discussed in the course material.
  - To ask questions about course content.
  - To share resources and ideas related to Hyperledger Indy, Aries and Ursa.

We strongly encourage you not only to ask questions, but to share with your peers opinions about the course content, as well as valuable related resources. The Discussion Forums will be reviewed periodically by the Linux Foundation staff, but it is primarily a community resource, not an 'ask the instructor' service.

  > ***Note:*** Before starting a thread about your issue, we strongly encourage you to do a quick search to see if your question has already been addressed. It’s often the case that there will be one or two threads asking the same question that has been answered.

To learn more tips on how to use them, read the following article: "[Getting the Most Out of the edX Discussion Forums.](https://blog.edx.org/getting-most-out-edx-discussion-forums"

### Terminology

We use the terms blockchain, ledger, decentralized ledger technology (DLT) and decentralized ledger (DL) interchangeably in this course. While there are precise meanings of these terms in other contexts, in the context of the material covered in this course the differences are not meaningful.

For more definitions, take a look at our Glossary on The Sovrin Foundation. Special thanks to The Sovrin Foundation for the majority of these glossary definitions. The full 248 term (at last count) Sovrin Glossary can be found [here](https://sovrin.org/library/glossary/).

### Meet Your Instructors

**Stephen Curran** of Cloud Compass Computing, Inc. is a Software Development and DevOps veteran who dove full on into the identity on blockchain world in 2017. Working with the British Columbia Government, Stephen has helped define, build and launch the Verifiable Organizations Network (VON)—a production instance of the Linux Foundation's Hyperledger Indy, Aries and Ursa projects that makes public information about organizations (incorporations/legal entities) in BC available in the form of verifiable credentials. Stephen is a regular contributor in the Hyperledger Indy and Aries community, facilitating discussions and driving interoperability. Stephen has presented on Blockchain and the Hyperledger Indy and Aries projects many times and is a member of the Sovrin Foundation's Board of Trustees and Technical Governance Board.

**Carol Howard** of Cloud Compass Computing, Inc. is a technical writer with more than 14 years experience, working for both hardware and software companies writing user guides, technical references, help text, and so on. She has been helping document the BC Government initiatives (VON, Greenlight, OrgBook BC and IIWBook) and became hooked on self-sovereign identity at IIW28.

### Acknowledgements

We have many, many people to thank for this course. The first and foremost is the Linux Foundation for allowing us to share what we know about this evolving and exciting technology. In particular, thank you Flavia and Magda for your guidance and expertise in getting this course online.

We would also like to thank the developers, visionaries and change-seekers in the Hyperledger Indy, Aries and Ursa world—the people we talk to on the weekly calls and daily rocketchats, the people we meet at conferences, and the people who are driving this technology on a daily basis to make the Internet a better place. We would especially like to thank Hyperledger contributors, the Sovrin Foundation, the BC Government VON team and Evernym for their contributions to this ecosystem. A number of the images in the content are the wonderful work of Peter Stokyo.

While we have tried to be as accurate and timely as possible, these tools and libraries are changing rapidly. There are no doubt mistakes and we own them. Keeping this in mind, we have created a [change log on GitHub](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS172x/ChangeLog.md) to track course updates that are needed when mistakes are found in the content and when a major change or shift occurs within the Hyperledger Indy, Aries and Ursa space. If you find an error, a need for a content update, or something in one of the demos doesn’t work, please let us know via the GitHub repo.

Thank you for taking this course!

## Chapter 1: Something Is Missing

### Introduction, Incomplete2 min2 minutes

### Today’s Internet Identity Challenges, Incomplete7 min7 minutes

### The Paper Credential Model (450BC-1970AD), Incomplete5 min5 minutes

### Knowledge Check, Incomplete5 activities

### Knowledge Check due 30 de dez. de 2021 21:39 BRT

### Summary, Incomplete2 min2 minutes

## Chapter 2: Adding a Layer of Trust to the Internet, Incomplete section

### Introduction, Incomplete1 min1 minute

### The Verifiable Credentials (VC) Model, Incomplete9 min9 minutes

### Self-Sovereign Identity (SSI), Incomplete3 min3 minutes

### Decentralized Identifiers (DIDs), Incomplete8 min8 minutes

### Zero-Knowledge Proof (ZKP) and Selective Disclosure, Incomplete5 min5 minutes

### Wallets Are Agents, Incomplete2 min2 minutes

### Trust Over IP (ToIP), Incomplete3 min3 minutes

### Knowledge Check, Incomplete4 activities

### Knowledge Check due 5 de jan. de 2022 08:19 BRT

### Summary, Incomplete3 min3 minutes

## Chapter 3: SSI Using Indy, Aries and Ursa, Incomplete section

### Introduction, Incomplete1 min1 minute

### In the Beginning, There Was Indy..., Incomplete4 min4 minutes

### Indy, Aries and Ursa Working Together, Incomplete1 min1 minute

### Hyperledger Ursa, Incomplete4 min4 minutes

### Hyperledger Indy, Incomplete8 min8 minutes

### Hyperledger Aries, Incomplete3 min3 minutes

### Knowledge Check, Incomplete4 activities

### Knowledge Check due 10 de jan. de 2022 18:59 BRT

### Summary, Incomplete3 min3 minutes

## Chapter 4: A Blockchain for Identity, Incomplete section

### Introduction, Incomplete1 min1 minute

### Indy's Blockchain, Incomplete6 min6 minutes

### Hyperledger Indy and Sovrin, Incomplete7 min7 minutes

### So, What Goes on the Blockchain?, Incomplete6 min6 minutes

### Indy’s “Network of Networks” Challenge, Incomplete4 min4 minutes

### Knowledge Check, Incomplete5 activities

### Knowledge Check due 16 de jan. de 2022 05:39 BRT

### Summary, Incomplete1 min1 minute

## Chapter 5: The All-Important Agent, Or Rather, Agents!, Incomplete section

### Introduction, Incomplete1 min1 minute

### So Many Agents!, Incomplete5 min5 minutes

### Components of Agents, Incomplete6 min6 minutes

### Agent Messaging, Incomplete8 min8 minutes

### Building Agent Applications, Incomplete9 min9 minutes

### Knowledge Check, Incomplete4 activities

### Knowledge Check due 21 de jan. de 2022 16:19 BRT

### Summary, Incomplete1 min1 minute

## Chapter 6: When Things Go Wrong, Incomplete section

### Introduction, Incomplete2 min2 minutes

### Recovering a Lost Mobile Agent Wallet, Incomplete15 min15 minutes

### Knowledge Check, Incomplete5 activities

### Knowledge Check due 27 de jan. de 2022 02:59 BRT

### Summary, Incomplete1 min1 minute

## Chapter 7: Possibilities, Incomplete section

### Introduction, Incomplete1 min1 minute

### Endless Possibilities, Or At Least Nine Great Ones!, Incomplete22 min22 minutes

### Getting Involved, Incomplete1 min1 minute

### Knowledge Check, Incomplete5 activities

### Knowledge Check due 1 de fev. de 2022 13:39 BRT

### Summary, Incomplete1 min1 minute

### Course Feedback, Incomplete1 min1 minute

## Final Exam

### Before You Begin Your Final Exam

### Congratulations!

You have completed your course. Share your success on social media or email.

## That's all folks!!!
___

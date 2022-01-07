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

*Phone with a sticky note*

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

> **NOTE:** Before starting a thread about your issue, we strongly encourage you to do a quick search to see if your question has already been addressed. It’s often the case that there will be one or two threads asking the same question that has been answered.

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

### Trust is broken on the Internet

That statement is intended to be controversial and surprising. But it’s not. Everyone knows that trust is not a part of using the Internet. We are trained to not believe what is said on the Internet, to not click links that we are unsure of, and if we want to do something really important, well, we just don’t use the Internet for that.

As the famous 1993 New Yorker cartoon goes—"[No one knows you are a dog on the Internet.](https://en.wikipedia.org/wiki/On_the_Internet,_nobody_knows_you%27re_a_dog)" It was true then, and sadly, it’s still true today. We need to fix that.

![Laptop and dog](./images/Internet_dog.jpg)

*Laptop and dog*

To ensure that the person you're talking to online is who they say they are, that what they are saying is true, and whether or not you want to trust them for some business transaction, you really have to do a thorough background investigation. Today,

  - Would you buy a house based solely on the electronic data sent to you by the seller?
  - Would a university admit a student based solely on the grades and background delivered electronically directly from the student?
  - Would you help a Nigerian prince transfer 30M$ for 30% commission based solely on unsolicited online messages?

The answer is "no way!!," right?

In this chapter, we will explore the reasons why it’s difficult to establish trust about the identity of an online contact and what they say. It doesn’t take long to gather evidence that forged documents are wreaking havoc online and off—from a man forging a police memo to get out of jail for murder in Baltimore, to a man forging ownership documents to evade taxes in British Columbia, to people forging their eligibility documents to get a COVID-19 vaccine in California—forged documents are difficult to detect and stop. Digital platforms and electronic communications, with their lack of built-in authentication, heighten the potential for misuse. We’ll look at how trust was established in the past—and why that approach no longer works. In future chapters, we’ll look at how the Hyperledger Indy, Aries and Ursa projects can change that situation by adding the missing trust layer to the Internet.

### Learning Objectives

By the end of this chapter you should:

  - Understand the basic mechanism (user ID and password) for proving your identity on the Internet and the problems it creates.
  - Understand how other attributes about you (e.g., your name, driver’s license number, address, etc.) are collected both on- and off-line and the problems these methods create.
  - Understand how Identity Providers (IdPs) can learn more about us than we want them to.
  - Be familiar with other Internet identity challenges such as unwanted correlation, data breaches and central authority issues.
  - Understand the paper credential model that we have used for thousands of years.

### Today’s Internet Identity Challenges

When we interact in the real world, we often need to "prove" who we are. To do that, we present some evidence we have about ourselves. What we present varies based on the context of the relationship. When we meet someone socially, we introduce ourselves. When we want to open a bank account, we show documents (attributes) issued by others (driver's license, utility bill, government ID, etc.) to prove things about ourselves, such as our name, address and government ID number (e.g. SIN in Canada, SSN in the USA).

In turn, those with whom we interact create an identifier for us and check that identifier when we connect again. A person remembers our name and face, and "verifies" them on subsequent meetings ("Hi Stephen! Good to see you again!"). Our bank creates a card with an ID on it for us to use each time we go to a bank branch.

![Two people greeting each other](./images/Greetings.png)

*Interaction Creates Identifiers*

The same pattern is used online, but there are a variety of problems that occur, some obvious, some a little more subtle. Let's go through them.

### Identifiers: User IDs and Passwords

The basic mechanism for knowing who you are on the Internet is the user ID and password combination. You register at a site, make a user ID and set a secret password that only you know (right?), and each time you return you use them to access your account. We all know the problems with user IDs and passwords—we deal with them every day:

  - We have too many to track.
  - Because we have so many, we often use "easy to remember" passwords that are also easy for others to guess.
  - Password recovery mechanisms (question/responses, support desks) provide avenues of attack by hackers. For example, if they know our ID and our recovery answers, they can reset our password to something only they know. This [video from CNN](https://www.cnn.com/2019/10/18/tech/reporter-hack/index.html) shows an example of collecting data about a person and then using it against them. It’s amazing—in a really bad way.
  - Data breaches occur that result in our IDs and passwords being exposed and used—either by hackers or anyone that buys them.
  - We often use the same password on many sites, and if that password gets exposed on one site, our accounts on others sites are also exposed.
 
![Criminal](./images/Criminal.png)

*Today’s User ID and Password Model Has Problems!*

A common approach to solving the "too many passwords" problem is the use of Identity Providers (IdPs) such as Facebook and Google. Smaller sites use an IdP for authentication (user ID and password verification) and to get basic identity attributes such as name and email address. A problem with that approach is that each time an IdP is used, the IdP learns things about us—our habits, our interests, what sites we use and so on. Our privacy is lost.

We also need to note that while users of websites have IDs for the site, the reverse is not the case—we are not provided an ID and password for the site that we can verify each time we connect. This has enabled "phishing" techniques to become common in recent years, where users are tricked to click a link that takes them to a website that appears to be real, has a similar name, but is actually fake (for example, goog1e.com). This fools us into revealing our user ID and password and sometimes even into revealing our two-factor authentication code for the real site.

### Identity Attributes

On almost every site, we also share other identifiers to use a service—our email and name at minimum, and depending on the nature of the service, additional information (address, credit card info, etc.). With that, we can do the only common business transaction on the Internet—buy things. Buying things has a low enough risk because sellers can easily trace to whom the purchased item is delivered, which deters widespread abuse.

Conducting higher trust online transactions—such as opening a bank account—is much more difficult. We have to provide the same information about ourselves as we would in person. In theory, we should be able to just type those attributes in since they are private and (in theory) only we know them. However, much of that type of information is relatively widely known, either because it is routinely published (e.g. name and address), or because of the many data breaches that have occurred (e.g. government ID number). Even non-identifiers that are used for verification, so-called "shared secrets" such as the value of "Line 150 from your 2020 Tax Return," can be fraudulently acquired and used for targeting specific individuals.

An alternative is to do an online version of the in-person verification—scan and send the source documents. However, scans are easy to forge and as such are not trusted. We should also add that paper documents used in person are increasingly easy to forge as well. That issue is actually putting at risk the "real world" identity-proofing that we mentioned earlier. Verifiers, such as bank employees and lawyers, have to become experts at detecting the authenticity of documents used for identity proofing.

### Additional Problems

We've talked about a few problems with the current Internet identity approaches already—user IDs and passwords are hackable, and supposedly private information is too well-known to be trusted. Let’s discuss a few more problems with the current approaches.

  - Unwanted Correlation

The use of common identifiers on so many different sites creates what is known as a correlation problem. Correlation in this context means associating without consent information about a single identity across multiple systems. The proliferation of this kind of correlation on the Internet, driven primarily by advertising, has resulted in a massive loss of privacy for Internet users (basically, everyone). An excellent/horrible example of this was exposed by a data breach at the relatively unknown Florida company, [Exactis](https://www.marketwatch.com/story/a-new-data-breach-may-have-exposed-personal-information-of-almost-every-american-adult-2018-06-27). The breach was massive, covering almost every American and American company (340M records total). However, the content was equally shocking: more than 400 data elements per record collected from a number of sites correlating details about each person—their name, age, race, religion, size of family, etc. You can be sure that no one ever agreed to allow Exactis to collect that information. They correlated the data across many "partner" sites to collect a picture of each person that they in turn sold to anyone willing to pay.

![Common Identifiers Across Multiple Sites Causes Correlation](./images/Common_Identifiers_Across_Multiple_Sites_Causes_Correlation.png)

*Common Identifiers Across Multiple Sites Causes Correlation*

Correlation is made possible because of the common identifiers we use online daily. Our email address is the single largest factor since we share it on almost every site, but there are others. Each time we use the same account name on a different site we create the possibility of correlation. When we give other identifiers about ourselves (e.g. phone number, address, government IDs, etc.), firms can correlate that data across sites. Tracking cookies placed by websites and ads enable the linking of IDs across websites. Some of the new General Data Protection Regulations (GDPR) in Europe are designed to prevent these practices for companies that do business in Europe, but not so in other places. Even then, it is a legal, not technical solution, and so remains susceptible to bad actors. In fact, even with GDPR in place, the data collection continues, as this article from the Linux Journal shows in quite shocking detail, "[If Your Privacy Is in the Hands of Others Alone, You Don’t Have Any.](https://www.linuxjournal.com/content/if-your-privacy-hands-others-alone-you-dont-have-any)"

In an attempt at preserving privacy—and because cookies are a pain—Internet browsers such as Apple Safari and Firefox block third-party cookies (those created by domains other than the one the user is visiting, and used for tracking and online-advertising purposes). However, [Google is taking a phased approach](https://blog.google/products/ads-commerce/a-more-privacy-first-web/) to third-party cookies, replacing them over time with tracking in Google Chrome that goes across the Internet, but shares back to sites only the information collected while on that site (first party data). It’s still a business model based on selling things to us, but it’s a little more transparent than 3rd party cookies!

The Identity Providers (IdPs) model is also a correlation point—although in this case, one given with consent. The IdP approach trades convenience (fewer user IDs and passwords) for correlation. Since the IdP is used for each login, the IdP can track your use of other sites and thus correlate your online activities, increasing their knowledge of you.

  - Data Breaches

Identity-related data is currently of particularly high value and so large data repositories of identity data are favourite targets for hackers. This includes not only user ID and password data to enable unauthorized access to accounts, but also all of the other information we use to "prove" our identity online such as name, email address, government ID and so on. As noted, the availability of this supposedly private data makes the online use of such data impossible for high-value interactions because of the risk that the person typing the data is not its owner.

  - Centralized Identifiers

The vast majority of identifiers we use today are centralized—the identifiers are provided to us and maintained by a centralized entity. That might be the government in the case of our tax ID and driver's license, or a company for an ID we use to log into a website. A major problem with this approach is that the central authority can choose to take away that identifier at any time. This is of particular concern for those in a minority situation—a critic of a central entity, be it a government suppressing its people, or a private company.

A second concern with central authorities controlling identifiers is that if they are compromised in some way, those identifiers can be used in malicious ways. For example, a [hack of a Dutch Certificate Authority](https://en.wikipedia.org/wiki/DigiNotar) (manager of Secure Socket Layer Encryption Certificates) allowed supposedly secure encrypted data going across the Internet to be intercepted and accessed by hackers. Further, since the identifiers are held in a central place, if that repository is compromised, it impacts many people.

### The Paper Credential Model (450BC-1970AD)

Let’s talk about what have we done in the real world for identity. As far back as 450BC, we have used paper credentials to enable trusted identity. Legend has it that King Artixerxes of the Persian Empire signed and gave Nehemiah a paper "safe transit" authorization to travel across Persia. People have been using such documents ever since. However, starting around 1970, with the widespread use of corporate/personal printers and copiers, forging these paper documents became easy. And trying to use paper credentials on the Internet is even worse because they are even easier to forge—all you need is Photoshop—you don’t even need a printer. So while paper credentials may not help us in the digital age, let’s look at the attributes of paper credentials and what made them useful for so many years.

A **credential** is an attestation of qualification, competence, or authority issued to an entity (e.g., an individual or organization) by a third party with a relevant or de facto authority or assumed competence to do so. Examples of credentials issued to people include a driver’s license, a passport, an academic degree, and so on. Credentials are also issued to companies, such as business registrations, building permits, and even health inspection certifications.

![Examples of Paper Credentials](./images/Examples_of_Paper_Credentials.png)

A typical paper credential, say a driver’s license, is issued by a government authority (an **issuer**) after you prove to them who you are (usually in person using your passport or birth certificate) and that you are qualified to drive. You then hold this credential (usually in your wallet) and can use it elsewhere whenever you want—for example, to rent a car, to open a bank account or in a bar to show that you are old enough to drink. When you do that, you're **proving** (or **presenting**) the credential to the verifier. The verifier inspects the physical document to decide if it is valid for the business purpose at hand. Note that in verifying the paper credential, the verifier does not call the issuer of the document. The transaction is only between the holder and the verifier. Further, it is the holder’s choice whether they want to share the piece of paper. If they want, they can keep it to themselves. That’s the **paper credential model**.

![The Paper Credential Model](./images/The_Paper_Credential_Model.png)

*The Paper Credential Model*

The paper credential model (ideally) **proves**:

  - Who issued the credential.
  - Who holds the credential.
  - The claims have not been altered.

The caveat "ideally" is included because of the possibility of forgery in the use of paper credentials. As many university students know, it’s pretty easy to get a fake driver’s license that can be used when needed to "prove" those same things.

At the time this course is being updated (April 2021) vaccines for COVID-19 are rolling out around the globe, and calls for a trusted “proof of vaccination” document are gaining momentum. The decades old World Health Organization Yellow Card/Carte Jaune is the current standard, but it is insufficient for a 21st century pandemic. While a COVID-19 vaccine certificate could enable travel and the ability to get back to a more “normal” life, relying on a handwritten, paper document is insufficient to provide the necessary trust. They are just too easy to forge, as we have seen from the many stories in the press about scammers selling and people buying fake COVID-19 test results and proof of vaccination certificates.

![Easily Forged Proof of Vaccination Record](./images/proof_of_vaccination_forged.png)

*Easily Forged Proof of Vaccination Record*

Further, the motivation to forge the documents is higher than situations we have seen in the past. For example, combine a desire/need to travel with the need for unavailable proof of vaccinations (or proof of a recent negative test) and a new, basic and high volume, paper-based verification process, and you have a situation ripe for fraud. And, the ramification of fraud in this case is significant. Worst case is you have people travelling that shouldn’t be, increasing instances of COVID-19 and extending the pandemic. Further, a lack of trust in the safety of travel will prevent many from doing so, suppressing the economic recovery of the travel industry as we come out of the pandemic.

### Risk Mitigation

In the paper credential model we’ve just discussed, we’ve talked about trust a lot (15 times so far!). In fact, with paper (and especially on the Internet), there really is not a lot of trust. Rather, those receiving data (verifiers in our model) are forced to take actions to mitigate their risk because of that lack of trust, actions to reduce the likelihood that the documents being collected are forged or that the information provided is false. In this section, we’ll talk about how that risk has been mitigated in the paper world. In later chapters of the course, we’ll talk about new ways to mitigate these risks automatically—making sharing information on the Internet a lot easier for everyone! Well—easier for everyone that’s not trying to scam others!

### Trusting the Holder/Prover

When the verifier receives information in the form of paper documents, scanned images or data typed into a web form, the verifier has several ways to mitigate their risk:

  - The easiest scenario for the verifier is that the holder of the data is motivated to only present valid information because they are likely to be caught if they don’t. Buying insurance based on false information such that the insurance is invalid when needed is a pretty strong motivation to provide accurate information.
  - Some verifiers mitigate the risk by building the cost of receiving false data into the cost of doing business, increasing their prices to cover their losses.
  - Where paper credentials are involved, the verifier can inspect the documents to see if they look forged. That is reasonably effective for money, passports and drivers licenses, where special technologies are used, but much less so with most other documents.
  - Another tactic that verifiers commonly use is to over-collect data—collect more data than is actually needed to make it harder to “forge it all.” For example, requiring multiple pieces of identification for a person.

Each of these techniques come at a cost for both the holder and the verifier. For the holder it takes longer to complete the transaction, often requiring an in-person visit, and they must turn over more information than should be required. For the verifiers, the cost of completing a transaction goes up (especially if an in-person visit is required), customers may drop out of the process, their staff need to be experts in document inspection, and there may be other costs in correlating the extra data collected. Further, their IT costs may increase because of the need to protect extra customer data. As we’ll see in this course, this problem gets a lot easier with the technologies we’re going to be talking about.

### Trusting the Issuer

For the most part when using paper credentials, the verifier's risk is focused on the holder—the person presenting the information. However, there is a second risk—whether or not the issuer of the paper is a valid authority of the data being presented. While a verifier that believes a passport is not forged can be pretty certain that the country of issue can be trusted, what about the transcripts issued by a university that the verifier has never heard of? For the most part, verifiers address this problem wherever possible by only accepting documents from issuers they know, such as accepting a “proof of address” through the presentation of a bill from a known local utility company.

What we will also see in this course is that while the “trust the holder” problem gets a lot easier, the issue of knowing whether or not to trust the issuer remains about the same, although with a few new twists and tools.

### Summary

So where does that leave us? These are important points and we’ll come back to these throughout the rest of the course.

  - User IDs/passwords are the norm, but they are a pain to use, and as a result, are susceptible to attack. They are the best we have right now, but not a solid basis for trust. Further, IDs work only one way—users don’t get an ID from a service they are using.
 
![User ID and Passwords Are a Pain to User](./images/User_ID_and_Passwords_Are_a_Pain_to_Use_.png)

*User ID and Passwords Are a Pain to User*

  - Other personal information and identifiers we have that we could otherwise use to prove our identity are not trusted because it's impossible to tell if the data was actually issued to the person entering it. The many breaches of private identifiers make them impossible to completely trust (even in person), and verifying that information adds (sometimes significant) costs.
  - Since the identity attributes we could use are not trusted (they are not things only we know), we often have to resort to in-person delivery of paper documents to prove things about ourselves, adding costs for all participants.
  - Reviewers of the paper documents we present must become experts in the state of the art in forging and falsifying paper documents, a difficult role in which to be placed.
  - Verifiers must add costly techniques to mitigate their risks in accepting untrusted data from holders.
  - The identifiers we use are correlated across sites, allowing inferences to be made about us, and exposing information we don't intend to be widely shared. This is annoying at the least, and can have catastrophic results.
  - Centralized repositories of identifiers and data about the people associated with those identifiers are targeted by hackers because the data has high value. This exacerbates the problem of not being able to trust "personal" data presented online.
  - Centralized identifiers can be abused by those who control those identifiers. For example, they can be taken away from a subject without due process.

In the next chapter, we’ll look at how Hyperledger Indy, Aries and Ursa enable the same credential model as with paper, but one that is useful in person and online using an approach called the verifiable credentials model.

## Chapter 2: Adding a Layer of Trust to the Internet

### Chapter Overview

How do we fix the issue of trust on the Internet? In the last chapter, we talked about a number of challenges with the current state of identity on the Internet. In this chapter, we’ll talk about solutions that are becoming available that will add that missing layer of trust. To do that, we will move from paper credentials discussed in the last chapter to verifiable credentials—credentials we can use (and trust!) online. We will also introduce the important concepts of self-sovereign identity (SSI) and trust over IP (ToIP). Lastly, we will explore the technology that enables verifiable credentials (for example, decentralized identifiers (DIDs) and agents), and how all of this together makes the Internet a much more trusted place.

### Learning Objectives

By the end of this chapter you should:

  - Understand how the verifiable credentials model works.
  - Be familiar with the core concepts of self-sovereign identity and the aspects of Indy, Aries and Ursa architecture that enable SSI.
  - Know what the term "trust over IP" means.
  - Know what a DID is and does.
  - Be familiar with the term zero-knowledge proof (ZKP) and selective disclosure.
  - Understand why blockchain is important for self-sovereign identity.

### The Verifiable Credentials (VC) Model

As we talked about in Chapter 1, a credential is (formally) an attestation of qualification, competence, or authority issued to an entity by a third party with a relevant or de facto authority or assumed competence to do so. Examples of paper versions of credentials are a driver’s license, passport and university degree. What if we could get credentials from the same sources as our paper credentials and use them online in a fully trusted manner both for the holder of the credential and the person or organization verifying the credential? Something digital that we can trust way more than just a scan of a piece of paper.

The Hyperledger projects, Indy, Aries and Ursa, which we will talk about in upcoming chapters, are tools and libraries that allow for the development of independent digital identities rooted on blockchains or other distributed ledgers. They help bring about the possibility of building applications with a solid digital foundation of trust by enabling the **verifiable credentials model**. 

![The Verifiable Credentials Model](./images/The_Verifiable_Credentials_Model.png)

*The Verifiable Credentials Model*

For identity, verifiable credentials are digital, cryptographically-protected data from authorities that you can use to prove you are you! With Indy, the data can be used by their holder to generate privacy-preserving cryptographic zero-knowledge proofs (ZKPs—we will talk about these shortly) that can be checked by a verifier.

> **NOTE:** For the more technically inclined, credentials are JSON docs, constructed and cryptographically signed by an issuer and countersigned by the holder.

![A Holder Will Generate a Presentation that Will Be Checked By Verifier](./images/A_holder_will_generate_a_presentation_that_will_be_checked_by_a_verifier.png)

*A Holder Will Generate a Presentation that Will Be Checked By Verifier*

### Verifiable Credentials (2)

Referring to the following illustration from the World Wide Web Consortium (W3C), there is an **issuer**, a **holder** and a **verifier**, just like in the paper credentials model. Unlike the paper credential model, which depends on the skill of the verifier to recognize an altered or forged credential, the verifiable credentials model includes a **verifiable data registry**—containing cryptographic keys and identifiers—that enables the proving of the data. That’s the blockchain part of verifiable credentials.

![The W3C Verifiable Credentials Model](./images/The_W3C_Verifiable_Credentials_Model_updated.png)

*The W3C Verifiable Credentials Model*

Compared to the paper credentials model that we talked about in the last chapter, verifiable credentials are far more secure. The verifier is not a person trying to identify a forged document. Instead, if the cryptographic verification succeeds, the verifier can be certain of the validity of the data—those same three attributes proven when verifying a paper credential. That means that the problem of whether the verifier trusts the holder more or less goes away. The holder cannot forge the cryptography protecting the verifiable credentials and so the data acquired can be accepted without further concern.

However, there does remain a challenge with a verifiable credential—and it's actually the same thing with a paper credential:

*Do you trust the issuer and the process by which the issuer decided to issue the credential?*

To trust the information in a credential, it is necessary that the verifier trust the issuer and that the issuer’s processes are carried out with integrity. For an official government-issued identity document (driver’s license, passport, etc.) that might be an easy decision. In many cases, the verifier will require the holder to present credentials only from issuers known to the verifier.

But what about use cases when the issuers may be from anywhere in the world, such as a university transcript? For example, when you get a verifiable presentation from Faber College that says Alice has received a degree and you verify the presentation, you will know that Faber did indeed issue the credential to Alice, that Alice did not tamper with it and it’s not been revoked. But is Faber College an authorized (and by whom?) degree-issuing entity or an unregulated diploma mill? Does it show that Alice legitimately earned her degree or did she pay $100 to be issued that degree? These same questions come up with both paper and verifiable credentials. However, with verifiable credentials some interesting options become available for automating the research into the “should we trust the issuer?” question.

### Credentials and Claims/Proofs and Presentations

You probably noticed that in the previous sections we used the terms **credential** and **claim** seemingly interchangeably. Actually, we were quite intentional about it. Claims are assertions about a person (or business).

For example:

  - "The name of the holder is Bob. He was born on June 18, 2000"

or,

  - "Cloud Compass Computing was incorporated in 2011."

A credential is made up of a set of individual claims. For example, in the case of a driver’s license, the claims would be a person’s name, address, height, weight, hair color, driver’s license number and so on.

![Claims versus Credential](./images/Claims_versus_Credential.png)

*Claims versus Credential*

In all uses of a verifiable credential, what is issued is a credential. However, in some implementations, when a credential is presented the credential is proven, while in others (including in Hyperledger Indy), the claims within the credential are proven individually. As we’ll see shortly when we talk about selective disclosure, this subtle difference can be quite important!

Another pair of terms that might seem to be used interchangeably are **proof** and **presentation**. A proof is evidence of the claim (for example, a birth certificate, passport or driver’s license, or in the case of a business, incorporation papers). In the early days of Indy, the term “proof” was used when talking about a verifier requesting verifiable (signed) claims from a holder and the holder providing those claims to the verifier. Presentation was selected for essentially the same thing by the W3C Credentials Community Group and is used in the W3C Verifiable Credentials data model specification. This was done because in the W3C verifiable credential data model, “proof” is a more generic term for the cryptographic **signatures** across any data—for example, the data in a credential or in a presentation.

As such, we mostly use “presentation” in this course to refer to the verifiable data received by a verifier from a holder. However, at times we may use “proof” as well. For example, we’ll often use the phrase “present a proof,” which sounds a little better than “present a presentation.” For developers, recognizing both terms in context is important because the underlying Indy and Aries source code uses both terms as well.

### Uses and Impact of Verifiable Credentials

So what does the availability of verifiable credentials mean? Well, in the past, you have probably shared identity attributes online as text (such as your name, address or government ID) or perhaps shared a paper credential you were given by scanning it and uploading it to an online service. Verifiable credentials are very different because of the cryptography used to secure the data such that once verified, the information can be trusted to be authentic. That is really powerful!

For example:

  - Instead of typing in your name, address and government ID, you provide a presentation of that information from verifiable credentials issued to you by an authority trusted by the verifier. This saves you typing in the data, and the verifier can automatically accept the claims in the presentation (if they trust the issuer) without any further checking, saving them money and time.
  - Anyone that knows your government ID (the string of numbers) would not be able to impersonate you on a site that checks verifiable credentials because the information they have does not come from a verifiable credential issued by the government.
  - A doctor can be issued a professional accreditation credential from the relevant authority (e.g., the College of Physicians and Surgeons) and the claims verified (and trusted) by medical facilities in real-time. Should the doctor lose his or her accreditation, the credential can be revoked, which would be immediately in effect. This would hold true for any credentialled profession be it lawyers, engineers, nurses, tradespeople, real estate agents and so on.

Since this course was first introduced in November 2019, the world has changed. A global pandemic—and the ensuing rollout of vaccines—has introduced the idea of people being able to prove they have been vaccinated as a way to once again be able to travel, attend a concert, etc. A secure, digital record issued by a known authority that verifies that someone has been vaccinated is appealing, but not without its risks in the areas of equity, privacy and security. Enabling citizens to prove their vaccination status in a privacy preserving, secure manner, without revealing any more data than is necessary—such as can be done with verifiable credentials—substantially reduces that risk. As a result, the “proof of vaccination” use case has brought the idea of verifiable credentials into the mainstream. We will discuss this use case in several sections of the course.

The verifiable credential model has other important ramifications:

  - Your verifiable credentials are issued to you, stored in your digital wallet, and you decide when and where you want to use them. That improves your privacy—you are in control of when and with whom you share your information.
  - Verifiable presentation data is proven without needing to call back to the issuer. Just as when you use your driver’s license to prove your age without a call back to the government, there is no need to call back to the government when you use the verifiable credential version of your driver’s license.
    - Instead of getting the data directly from the issuer, the data from the issuer comes from the holder, and the cryptographic material to verify the authenticity of the data comes from the blockchain.
    - This reduces the number of integrations that have to be implemented between issuers and verifiers. Imagine if every company needed to integrate with every degree-issuing institution to see if a job applicant’s claim of a degree was valid? That’s a lot of interfaces to be built!
  - Verifiable credentials go beyond identity to enable the digitization of almost any paper-based verification process. For example, regulatory processes that are currently implemented with paper submissions that are manually verified can be reworked to use verifiable credentials that provide authenticity (supposedly) achieved with paper through human review, using data that can be processed automatically.

### Paper Verifiable Credentials

So far, we’ve talked about paper credentials (a physical driver’s license or passport) and also about new verifiable credentials (that you store in your digital wallet). The race for a credential related to being able to prove receipt of a COVID-19 vaccination or negative test has led to the idea of a “paper verifiable credential.” While digital credentials are appealing, there will be in every nation a proportion of the population that does not have access to digital tools such as a smartphone. To empower that population, one idea that has been proposed is to use a W3C standard verifiable credential in a form that can be printed onto a piece of paper that it is impossible to forge. Photoshop will not help you make your own Dark Web “proof of vaccination” verifiable credential!

VCs on paper can be done in a couple of ways. If possible, the credential is embedded into a QR code to be scanned. The “if possible” comes into play because the capacity of a QR code (especially a printed one) is limited to about 400-500 bytes. Any more than that and the QR code is so dense that it can’t be read by a mobile phone camera. The density issue with QR codes is demonstrated in the image below. This restriction forces a balance between that data needed in the verifiable credential with the number of bytes in its presentation. For context, the first “sample” presentation in the W3C Verifiable Credential Specification has about 1000 characters in it **_before_** any data about the verifiable credential subject is added! There are ways to compress the number of bytes in the credential (such as using something called [Concise Binary Object Representation](https://cbor.io/), or CBOR), so it is possible, but the amount of data is still limited.

![QR codes](./images/QR_codes.png)

*QR codes*

QR Codes, one with the URL of this course (114 characters),
the second with the text of the next paragraph (332 characters)

Alternatively, the QR code can contain just a URL to a web service that in turns returns the presentation. This gets around the size of the presentation issue, but there are drawbacks, including that the URL must be unique per credential, and the issuer of the credential knows each time a credential is used. Those issues can be mitigated, but they must be considered in any implementation.

There are also privacy trade-offs in using paper verifiable credentials. The primary concern is that verifiers of paper credentials get a machine-read, unique identifier for the credential, and hence, a globally unique identifier for the person presenting the credential. This is a correlating identifier that verfiers can use in the same way that surveillance tracking is done in browsers. Further, if personal information is included in the credential (especially if it is also printed in text), anyone finding such a document can see that data—a more likely scenario for a “one-time use” piece of paper than for something with known ongoing value such as a passport. A solution to that is to include only partially identifying data (e.g., part of the name or date of birth) such that there is enough to bind the holder to another document (e.g., a passport), but not enough to uniquely identify the person if the document is lost.

Paper verifiable credentials to eliminate forged documents without requiring everyone to use a smart device is an appealing approach—but the privacy implications must be kept in mind. Further, since the “presentation” of the verifiable credential is fixed at the time it is issued, there is no way to use selective disclosure, or for the verifier to ask for anything other than what the holder has on paper. So, while some of the verifiable credential capabilities are possible, a lot of the power is lost.

### Self-Sovereign Identity (SSI)

**What Is Self-Sovereign Identity?**

Self-sovereign identity (SSI) is a term you may have heard in connection with the Hyperledger identity projects, Indy, Aries and Ursa. Together, these Hyperledger capabilities can be the basis for accomplishing SSI. So what is SSI—and what isn’t?

![There is No Central Authority with SSI](./images/There_is_No_Central_Authority_with_SSI.png)

*There is No Central Authority with SSI*

SSI is the idea that you control your own data, you control when and how it is provided to others, and when it is shared, it is done so in a trusted way. With SSI, there is no central authority holding your data that passes it on to others upon request. And because of the underlying cryptography and blockchain technology, SSI means that you can present claims about your identity and others can verify it with cryptographic certainty.

SSI is not about you self-asserting information about yourself and demanding that everyone else accept it as fact. Recall that the verifiable credentials you receive and present to verifiers come from others and their usefulness relies on the trust verifiers have in the credential issuers. If you want, you can issue credentials to yourself ("I am the Queen of England"), but verifiers might not trust you as an issuer.

Drummond Reed, identity guru and Founding Trustee of the Sovrin Foundation, describes self-sovereign identity as:

*"Lifetime portable identity for any person, organization, or thing that does not depend on any centralized authority and can never be taken away."*

Sounds like something to strive for, doesn’t it?

![Self-Sovereign Identity Definition by Drummond Ree](./images/Self-Sovereign_Identity_Definition_by_Drummond_Reed.png)

*Self-Sovereign Identity Definition by Drummond Reed*

### The Principles of SSI

The Sovrin Foundation is a private-sector, international non-profit that was established to govern and operate the Sovrin Identity Network, a public, permissioned distributed ledger purpose built (based on Hyperledger Indy) for identity. The mission of the Sovrin Foundation is to create the Internet’s long-missing trust layer and provide a global public utility for digital identity to people, organizations, and things. In addition to the mechanics of operating a global instance of Hyperledger Indy, Sovrin has brought together many leaders and deep thinkers from the self-sovereign identity community to collaborate on a series of foundational principles and governance and glossary documents. From that work, the Sovrin Foundation has published these [12 principles of self-sovereign identity](https://sovrin.org/principles-of-ssi/):

| Principle | What It Means |
| --- | --- |
| Representation | An SSI ecosystem shall provide the means for any entity—human, legal, natural, physical or digital—to be represented by any number of digital identities. |
| Interoperability | An SSI ecosystem shall enable digital identity data for an entity to be represented, exchanged, secured, protected, and verified interoperably using open, public, and royalty-free standards. |
| Decentralization | An SSI ecosystem shall not require reliance on a centralized system to represent, control, or verify an entity’s digital identity data. |
| Control & Agency | An SSI ecosystem shall empower entities who have natural, human, or legal rights in relation to their identity (“Identity Rights Holders”) to control usage of their digital identity data and exert this control by employing and/or delegating to agents and guardians of their choice, including individuals, organizations, devices, and software. |
| Participation | An SSI ecosystem shall not require an identity rights holder to participate. |
| Equity and Inclusion | An SSI ecosystem shall not exclude or discriminate against identity rights holders within its governance scope. |
| Usability, Accessibility, and Consistency | An SSI ecosystem shall maximize usability and accessibility of agents and other SSI components for identity rights holders, including consistency of user experience. |
| Portability | An SSI ecosystem shall not restrict the ability of identity rights holders to move or transfer a copy of their digital identity data to the agents or systems of their choice. |
| Security | An SSI ecosystem shall empower identity rights holders to secure their digital identity data at rest and in motion, to control their own identifiers and encryption keys, and to employ end-to-end encryption for all interactions. |
| Verifiability and Authenticity | An SSI ecosystem shall empower identity rights holders to provide verifiable proof of the authenticity of their digital identity data. |
| Privacy and Minimal Disclosure | An SSI ecosystem shall empower identity rights holders to protect the privacy of their digital identity data and to share the minimum digital identity data required for any particular interaction. |
| Transparency | An SSI ecosystem shall empower identity rights holders and all other stakeholders to easily access and verify information necessary to understand the incentives, rules, policies, and algorithms under which agents and other components of SSI ecosystems operate. |
 
A number of these principles are technical in nature and are enabled by Indy, Aries and Ursa. Some are about how those technical projects are managed—for example, transparency by using open source software based on well-defined standards. Others are about how the technology is used, and while Indy, Aries and Ursa focus on making it easy for entities to implement SSI solutions, governance—such as the European Union’s General Data Protection Regulation (GDPR)—is still necessary.

### Decentralized Identifiers (DIDs)

**What Are Decentralized Identifiers?**

While verifiable credentials are an important component of SSI, a thing called a **decentralized identifier** (DID) is a key enabler for verifiable credentials. DIDs are a new type of identifier that is in the process of becoming a World Wide Web Consortium (W3C) [standard](https://www.w3.org/2019/did-wg/). As we discussed, the verifiable credential model requires a decentralized ecosystem in order to work. Such an ecosystem is brought about with DIDs and agents (discussed further in the chapter).

DIDs are a special kind of identifier that are created by their owner, independent of any central authority. Per the [DID specification](https://w3c.github.io/did-spec/), a DID looks like the following and is similar to an HTTP address but used differently.

**What does a DID look like?**

![An Example of a DID Updated](./images/LFS172x_CourseGraphics-02.png)

*An Example of a DID Updated*

> **NOTE:** This section gets a little technical, but don’t worry, we’ll go through this and then come back to what DIDs mean from a business perspective.

DIDs are:

  - A new type of uniform resource identifier (URI).
  - Created by anyone at any time.
  - Globally unique.
  - Highly available.
  - Cryptographically verifiable.

What does all that mean? Let’s go through each of those attributes in turn:

  - Like the URLs (universal resource locator) that we are familiar with (such as the one for this web page that is in the address field of your browser), DIDs can be resolved. When we pass a valid DID to a piece of software called a DID Resolver, it works like a browser given a URL, resolving the identifier (URL or DID) and returning a document. However, instead of a browser returning a web page, a **DID Resolver** returns a **DID Document** (DIDDoc). A DIDDoc is a JSON document whose format is defined in the DID specification. We’ll talk about the elements of a DIDDoc in a moment. A
  - DID can be created by anyone, not just a central service such as a Certificate Authority (CA). People, organizations and things can all create, publish and share DIDs. Further, at any time, the controller of the DID (usually the creator) can update the DID—change the DIDDoc that is returned when resolving the DID. That ability can be important in certain situations.
  - That DIDs are globally unique means that properly generated, each DID is unique across the globe. The “properly generated” caveat means that if you follow the rules for creating a specific type of DID, it will be globally unique. That’s the type of detail that Hyperledger Indy takes care of for you.
  - Highly available means that DIDs can be resolved even if some servers are down. Since DIDs are often resolved by reading from a blockchain, and there can be many copies of a given blockchain on servers across the world, DIDs are highly available. Put another way, DIDs are not susceptible to a central implementation with a single source of failure.
  - Cryptographically verified means that the control of a DID can be verified by asking the DID controller (the person, organization or thing that created the DID) to prove their control over the DID by having them prove control of a private key that is related to a public key.

This last point brings us to what is in the DIDDoc. Notably, a DIDDoc contains (usually) public keys whose private keys are held by the entity that controls the DID, and (usually) service endpoints that enable communication with that entity. This means that with a DID, you can:

  - Resolve a DID to get a DIDDoc.
  - Within the DIDDoc, find a public key and an endpoint for the entity that controls the DID.
  - Use the endpoint to send a message to that entity.
  - In the message, ask them for proof they have the private key related to the public key.
    - Since often a public key in the DIDDoc is used to encrypt the message sent, just being able to respond to the message is “proof” of control of the DID. Without the private key they could not have decrypted the message.
    - What the sent message might ask is that the controller of the DID provide a verifiable credential presentation.
  - Receive back the proof.
  - Verify that proof.

### DIDs from a Business Perspective

OK, we’ve seen technically what DIDs are, but why do we care? There are several characteristics of DIDs that are crucial from an SSI and verifiable credentials perspective.

### DIDs from a Business Perspective: User Control

DIDs are identifiers that you create and share under your control, which is a core tenant of SSI. Most identifiers that you use today are created or controlled by someone else:

  - your government ID
  - your phone number or email address
  - your account at a particular website.

If a central authority decides to take that identification away from you, they can remove your ability to use it. Since you created a DID and hold the private key(s) for it, only you can “delete” the DID. A DID (and DIDDoc) on a blockchain can never be removed, so “deleting” a DID really means no longer responding to requests for proof of control of the DID. Technically, you can update the DIDDoc to delete the public key(s), but assuming earlier versions of the DIDDoc are on a blockchain, those earlier versions are still available.

### DIDs from a Business Perspective: Provable

There are no easy, trusted ways for you to prove your control over commonly used identifiers today. From the list of identifiers above, the only ones that you are commonly asked to prove control over are your email address and phone number, and those have become prime targets for hackers, often by attacking the central authority that gave you the identifier. The association of public/private keypairs with a DID makes ongoing proof of control trivial.

As we’ve talked about, one of the attributes proven with a verifiable credential presentation is the identity of the issuer. In fact, what is proven is just the public DID of the issuer and, because of the characteristics of DIDs, that’s enough. Using the DID, the verifier can retrieve the DIDDoc and public keys to verify signatures and (if necessary) connect to the issuer and get information about who the issuer is, such as (likely using verifiable credentials) their authority to issue credentials.

### DIDs from a Business Perspective: Non-Correlatable

One of the problems with the common identifiers that we use today is that it is often necessary to reuse them. On almost every site we visit, we provide an email address so that the site can send us notifications. That means that many sites can share information about us just by correlating our email address. Since we create our own DIDs and choose how we want to share them, we needn’t have just one DID, but rather one DID for every service to which we connect. The expectation is that you will have many DIDs—one for each relationship you have on the Internet. Note that both sides of a relationship provide a DID for the other to use to communicate with them, as shown below.

![DID Relationships Updated](./images/DID_Relationships_Updated.png)

*DID Relationships*

Just as today when you first register with a site, you create an account userID and password; with DIDs, you will create and share a new DID (and DIDDoc) with the site. When you return to the site, providing the DID and proving that you control the DID are sufficient for the service to know who you are. Hey, a way to eliminate user IDs and passwords!

### DIDs from a Business Perspective: Secure Communications

As described earlier, a DIDDoc contains public keys and service endpoints for the entity that controls that DID. This enables a powerful capability: a secure, end-to-end encrypted messaging mechanism. Given a DID and its corresponding DIDDoc, an entity can encrypt a message for the controller of the DID (using the public key in the DIDDoc) and send it to the designated service endpoint. Upon receipt, the DID’s controller can decrypt (using the corresponding private key) and process the message. We’ll cover this capability a lot more in later chapters, including the fact that with this capability, there is no need to share an email address to receive notifications from a service. The service can just use the messaging capability inherent in DID communications.

### DIDs from a Business Perspective: Public Versus Private DIDs

Let’s look at the types of DIDs for a minute because there are important differences between public and private (pairwise) DIDs.

![Public DID](./images/Public_DID_.png)

*Public DID*

This [demonstration](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS172x/PublicAndPrivateDIDs.md) goes over the following information about public and private DIDs. The pictures are a bit complicated!

A **public DID** is one that is intended to be widely available—visible to anyone that is presented with the DID. Since anyone can both resolve the DID and contact the owner, if the DID is used many times, it is correlatable. In this case, correlation isn’t a bad thing. A company or government, for example, will often use public DIDs. A prime example of a public DID is the DID of a verifiable credential issuer. Since the holder of the credential may present the credential to anyone, the identity (via the public DID) of the issuer must be part of what the verifier learns from the presentation. That way, the verifier can investigate (as necessary) to decide if they trust the issuer. Public DIDs are usually put on blockchains so that they can be globally resolved.

On the other hand, an important use case of DIDs is that they enable two (or several) parties to connect with one another. In this case, it’s not important that everyone in the world be able to resolve the DIDs for the parties—just the parties themselves—and **private DIDs** (often called **pairwise DIDs**) are used. Instead of publishing the DIDs on the blockchain for anyone in the world to see, the entities create the DIDs and DIDDocs and then send both directly to the other party(ies) to hold. If they need to update the DID, such as to change the endpoint, the update is sent directly to the other party(ies) to update their copy of the data. No one other than the parties involved can see or resolve the DIDs.

![Private DID](./images/Private_DID.png)

*Private DID*

Why are private DIDs important? There are two reasons:

  - First, since the DIDs are only intended for use by a small, specific group (usually just two), the DIDs are not shared beyond that group.
  - Second, writing to a blockchain is expensive and by not writing DIDs that don’t have to be public to the blockchain, the costs (resources, time, transaction fees) are reduced.

Happily, private DIDs far (far) outnumber the DIDs of verifiable credential issuers and as a result, the l`oad on `a public blockchain serving DIDs is massively reduced.

In the Aries section of the course, we’ll learn about the DID method called “`did:peer,`” which defines the mechanism for sharing and using private, pairwise DIDs.

### DIDs and Verifiable Credentials

Let’s come back to cover how DIDs are used, including how DIDs are used with verifiable credentials. It’s not always clear!

First, in an Aries ecosystem of issuers, holder/provers and verifiers, DIDs are used to establish secure, point-to-point messaging channels between the agents of the participants. In this use of DIDs, there are no verifiable credentials involved, just messages encrypted and sent to participants using the information in the DIDDocs (notably, public keys and endpoints) to allow a sender to encrypt (using the recipient’s public key) a message to the recipient and send it (using the recipient’s endpoint). The recipient must have the associated private key to decrypt and process the message.

Second, with a verifiable credential, DIDs are used as the identifier for the issuer. The issuer DID is used to uniquely identify the issuer and is resolved to get a public key related to the DID. That public key is then used to verify the data in the verifiable credential did indeed come from the issuer—to check the cryptographic signature using the public key of the DID.

![Uses for Public and Private DIDs](./images/Uses_for_Public_and_Private_DIDs_Updated.png)

*Uses for Public and Private DIDs*

> **NOTE:** To reiterate, all participants have private pairwise DIDs for messaging. In addition, issuer’s have a public DID that is with the verifiable credentials they issue to holders. That DID ensures the verifier knows who issued the credential a holder presents.

### Zero-Knowledge Proof (ZKP) and Selective Disclosure

**Zero-Knowledge Proof**

A [zero-knowledge proof](https://en.wikipedia.org/wiki/Zero-knowledge_proof) (ZKP) is about proving attributes about an entity (a person, organization or thing) without exposing a correlatable identifier about that entity. Formally, it’s about presenting claims from verifiable credentials without exposing the key (and hence a unique identifier) of the proving party to the verifier. A ZKP still exposes the data asked for (which could uniquely identify the prover), but does so in a way that proves the prover possesses the issued verifiable credential while preventing multiple verifiers from correlating the prover’s identity. Indy, based on underlying Ursa cryptography, implements ZKP support. This approach is called **Anonymous Credentials (AnonCreds)**.

![ZKPs](./images/ZKPs.png)

*ZKPs*

There are other types of verifiable credentials that do not use a ZKP-based approach. In a non-ZKP proof, the holder/prover proves control over a DID to an issuer and the issuer embeds that DID in the issued credential. Later, a verifier extracts that DID from a presentation of the credential and has the holder/prover prove they (still) control that DID. This proves the credential was issued to the holder. Thus, a non-ZKP proof includes a public DID for the issuer (like the Indy ZKP model) and a public DID for the holder/prover (unlike Indy). Usually in the non-ZKP model, the entire credential (with the embedded DIDs) is cryptographically signed by the issuer (proving the claims and the DIDs).

> **NOTE:** In the non-ZKP model, the DID of the holder/prover is included in the credential and hence any verifiers of the credential know a common, globally unique identifier for the holder/prover, which is a privacy concern as it is a point of correlation.

![The ZKP (Indy) versus Non-ZKP Approach](./images/The_ZKP__Indy__versus_Non-ZKP_Approach.png)

*The Indy Anonymous Credentials (AnonCreds) ZKP versus Non-ZKP Approach*

**Selective Disclosure**

The Indy AnonCreds ZKP model enables some additional capabilities beyond most non-ZKP implementations. Specifically, that claims from verifiable credentials can be selectively disclosed, meaning that just some data elements from credentials, even across credentials can (and should be) provided in a single presentation. By providing them in a single presentation, the verifier knows that all of the credentials were issued to the same entity. In addition, a piece of cryptography magic that is part of ZKP (that we won’t detail here—but it’s fascinating) allows proving pieces of information without presenting the underlying data.

A useful example of both selective disclosure and a ZKP supported in Indy AnonCreds is a proof that a person is older than a given age based on the date of birth in a verifiable credential driver’s license without disclosing any other information, including name or date of birth. The image below demonstrates how that might look in an SSI-enabled app at a pub.

![An Example of Selective Disclosure](./images/An_Example_of_Selective_Disclosure.png)

*An Example of Selective Disclosure*

The verifier (a bartender) can confirm:

  - The issuer is the appropriate authority.
  - The picture shows the same person presenting the verifiable credential.
  - The person is old enough to drink in the pub (the check mark).
  - The credential has not been revoked.

That information is proven ***without*** the person having to reveal their personal information (address, eye color, etc.), or even their date of birth.

Combined, ZKPs and selective disclosure enable a massive reduction in the data exposed during an identifying process. By not revealing a correlating identifier, and using selective disclosure to only expose the data needed for a transaction—including being able to prove possession of a credential without disclosing any information from the credential at all—is an important step in being able to keep private data private.

It is important to remember that ZKPs are not a panacea for privacy. For any business transaction, the verifier must collect enough information from the prover as to mitigate their risk for the given transaction. That may mean requesting enough claim data to uniquely identify the prover. For example, the verifier may be required by government regulations to collect identifying information about the prover for auditing purposes. Selective disclosure enables verifiers to be much more precise in collecting that data than existing technology, but does not eliminate the collection entirely. As well, once claims are given to the verifier in a presentation, the verifier has that data, and can technically (if not legally) do anything they want with it. There is no technical capability in this model that allows, for example, a prover to “revoke” a presentation and take the data back from the verifier.

### Beyond Indy AnonCreds: BBS+

When talking about useful ZKP-based verifiable credentials for self-sovereign identity, Indy AnonCreds has been the “only game in town” since 2017. Indy AnonCreds is a complete ZKP implementation, including predicates (e.g., “older than 21”), powerful proof request capabilities, and a full credential revocation model. However, Indy AnonCreds is not perfect and its faults have been criticized. The biggest issue with Indy AnonCreds is that they are not compatible with the W3C Verifiable Credentials standard—largely because the standard didn’t exist when Indy AnonCreds was implemented. To address that, the Indy community started down a path called “Rich Schemas” to merge Indy AnonCreds with the W3C Verifiable Credentials standard. Unfortunately, the design for rich schemas was fairly complex and relied even more heavily on the Indy ledger. It was going to be a tough path.

![An Example of ZKP Supported by Indy AnonCreds Updated](./images/LFS172x_CourseGraphics_ch2.png)

*An Example of ZKP Supported by Indy AnonCreds*

Then, in early 2020, a team from Mattr Global in New Zealand, provided a better answer—W3C Standard Verifiable Credentials using JSON-LD with BBS+ Signatures. It’s quite a mouthful, so it’s often shortened to **BBS+ VCs**. BBS+ VCs use a slightly newer form of cryptographic signatures (but still more than 15 years old!) to provide some of the key features of Indy AnonCreds in a W3C standard package. In particular, BBS+ VCs provide ZKP support by not having to disclose a unique identifier for the holder and by supporting selective disclosure. While still not quite there yet, it is expected that BBS+ will also provide a scalable revocation mechanism without the need for a unique credential identifier. Not anticipated any time soon, but not out of the realm of possibility is a way to do ZKP predicates—the ability to prove an expression (e.g., older than 21) without revealing the underlying (date of birth) data.

 

| Verifiable Credential Capability | Indy AnonCreds | BBS+ VCs |
| --- | --- | --- |
| ZKP for holder/subject identifier | Yes | Yes | 
| Selective disclosure | Yes | Yes |
| Predicates (e.g., “age > 19”) | Yes | No |
| ZKP revocation | Yes | Not Yet |
| W3C Standard format verifiable credential | No | Yes |
| JSON-LD format (semantic schema) | No | Yes |
 

So why are BBS+ VCs interesting to the Hyperledger Indy/Aries community, given there are some fairly significant trade-offs with Indy AnonCreds? The reason is that BBS+ VCs and their ZKP/selective disclosure capabilities are of keen interest **outside** of the Indy/Aries community. That interest across ecosystems increases the likelihood of the dominant VC format including the (to those in the Indy/Aries community, absolutely vital) capabilities of ZKP and selective disclosure.

BBS+ VCs are still (as of this writing) just being added into Aries implementations so they have yet to be really put to the test. It’s an element of Aries that will be interesting to watch over the next year or so.

### Wallets Are Agents

A third key component of SSI, along with verifiable credentials and DIDs, is the software that you use to process verifiable credentials and DIDs—what we’ve called your digital wallet to this point in the course. Indy, Aries and Ursa use the term **agent** to mean the software that interacts with other entities (via DIDs and more, as we'll find out). For example, a person might have a mobile agent app on their smart device, while an organization might have an enterprise agent running on an enterprise server, perhaps in the cloud.

All agents (with rare exceptions) have secure storage for securing identity-related data including DIDs, keys and verifiable credentials. As well, all agents are controlled to some degree by their owner, sometimes with direct control (and comparable high trust) and sometimes with minimal control, and far less trust. We’ll cover different uses and types of agents in a later chapter.

![A Mobile Agent App](./images/A_Mobile_Agent_App.png)

*A Mobile Agent App*

For those familiar with a [password manager](https://en.wikipedia.org/wiki/Password_manager) such as 1Password or LastPass, you’ll find a personal agent is quite similar—there is a name for each relationship and associated data. However, unlike password managers that use things such as your copy/paste clipboard for user IDs and passwords and screen-scrape applications and websites, agents communicate directly with other agents to accomplish identity-related tasks. As agents use messaging to communicate with one another, users will also see a similarity between agents and the messaging apps we use today, such as WhatsApp and Facebook Messenger. Unlike those apps, agents use messaging for far more than just sending text, images and links, including for transactions around the exchange of credentials and presentations. Further, we expect agents to be the cornerstone of self-sovereign identity, which is different from the foundations of those apps. We dig into agents in Chapter 5 of this course.

### Trust Over IP (ToIP) (1)

Along with SSI, another term you will hear surrounding Indy, Aries and Ursa is **trust over IP (ToIP)**. ToIP is a layered set of technical protocols to enable trust on the Internet and the parallel set of governance frameworks that define how those protocols are used. An instance of those technical protocols at layers 1-3 of the ToIP technical stack are embodied in Indy, Aries and Ursa. ToIP includes self-sovereign identity in that it covers identity, but goes beyond that to cover any type of authentic data. Authentic data in this context is data that is not necessarily a credential (attributes about an entity) but is managed as a verifiable credential and offers the same guarantees when proven.

ToIP is defined by the “Trust over IP Dual Stacks,” as represented in this image from the [Trust over IP Foundation](https://trustoverip.org/):

![Trust over IP (ToIP) Technology Stack](./images/ToIP_Stack.png)

*Trust over IP (ToIP) Technology Stack*

You should recognize most of the components of the ToIP Technology Stack from what we’ve already talked about in this course. At the bottom right, the foundation of the technical stack are public ledgers that store decentralized identifiers (DIDs) and (in some cases) other data necessary for the higher layers. Above that are agents and the protocols that enable agents to establish connections and exchange messages (information). We’ll talk about agents in Chapter 5. The next layer up is the data exchange protocols layer, where verifiable credentials are issued and presented to enable trusted information flow—data cryptographically signed by the participants.

> **NOTE:** The ”Technical Trust” is enabled by cryptography at layers 1 and 2, while “Human Trust” is enabled through data exchange protocols and application ecosystems at layers 3 and 4.

### Trust Over IP (ToIP) (2)

We’ll talk more about **governance frameworks** later in the course. The entire governance stack outlines the rules that the participants at each layer agree to use to enable that layer (and those below) to work in practice. Example governance frameworks include the following topics we’ll cover in this course:

  - How the readers and writers of the blockchain operate.
  - How the agents know the meaning of messages that form a protocol.
  - What the claims in credentials signify to the verifier.
  - By what authority an issuer is able to issue a credential.

For the purposes of this course, we will talk largely about self-sovereign identity (SSI)—it’s a big topic. Do remember though as you consider the capabilities of this technology that it can be applied beyond identity and into any domain where authentic data is important. The following are a few examples.

  - Many supply chain use cases can be handled using authentic data. As events occur to items being tracked (e.g., transferred from one carrier to another), verifiable credentials can be issued to capture the state of the item and event. Verifying the claims in the credential provides proof of that data later, demonstrating the provenance of the item. Food, shipping, diamonds, oil and gas and many, many more supply chains can be tracked this way.
  - Regulatory processes that are based on paper trails can be replaced with authentic data. Rather than relying on paper for documenting and manually verifying compliance, verifiable credentials could be generated from the source and digitally verified. Since the verifiable credentials are generated at the source and signed (immutable), they provide a reliable audit trail of events and actions.
  - The Government of British Columbia has demonstrated the use of authentic data in the handling of mine inspections in BC. Rather than a notebook being used for tracking mine inspections, the inspection data is digitally collected, recorded in a database and an inspection verifiable credential generated about the report that guarantees its authenticity. Should there be a need later to present the report (for example, in court), the inspection credentials can be proven, verifying the accuracy of the inspection report.

> **NOTE:** *In all of these cases, even though the use case is not centered on identity, there is an element of identity in each one. Specifically, in all cases, the identity of the credential issuer must be known to determine if they have the authority and capability to issue the credential, and the holder/prover must be able to generate a presentation of the claims in the verifiable credential.*

### Summary

We’ve introduced a lot of new capabilities in this section and along the way alluded to how these capabilities help solve the Internet identity problems outlined in Chapter 1. Verifiable credentials, DIDs and agents are at the core of self-sovereign identity and although they get you a long way towards solving the problems we talked about in Chapter 1, we need to provide a little more background about the technical elements that make a new trust layer for the Internet possible. In the next chapter, we will learn about the software components necessary to receive, store and transmit both verifiable credentials and DIDs.

Let’s go back to bullet points in the Chapter 1 summary and see how the capabilities introduced in this chapter address the problems we find on the Internet today:

| Internet Challenges Today | How Verifiable Credentials, SSI and ToIP Address These Challenges |
| --- | --- |
| User IDs/passwords are the norm, but they are a pain to use, and as a result, are susceptible to attack. They are the best we have right now, but not a solid basis for trust. Further, IDs work only one way—users don't get an ID from a service they use. | Websites can use DIDs and, as needed, verifiable credentials to get enough information about users to establish sessions. We’ll see later that using DIDs and verifiable credentials are a lot easier and safer for users than passwords. |
| Other personal information and identifiers we have that we could otherwise use to prove our identity are not trusted because it's impossible to tell if the data was actually issued to the person providing it. The many breaches of private identifiers make them impossible to completely trust, and verifying that information adds (sometimes significant) costs. | Presentations of claims from verifiable credentials and knowing who issued the credentials mean that we can trust the claims to be correct. This is based on the four attributes we learn when verifying a presentation. |
| Since the identity attributes we could use are not trusted (they are not things only we know), we often have to resort to in-person delivery of paper documents to prove things about ourselves, a further cost for all participants. | We can use verifiable credentials online instead of having to use paper documents in-person. |
| Reviewers of the paper documents we present must become experts in the state of the art in forging and falsifying paper documents, a difficult role in which to be placed. | The trust of the claims is in cryptography and knowing about the issuer. People don’t have to be experts at detecting forgeries. |
| The identifiers we use are correlated across sites, allowing inferences to be made about us, and exposing information we don't intend to be shared across sites. This is annoying at the least, and can have catastrophic results in the worst case. | By using private DIDs and verifiable credentials based on ZKPs, we can radically reduce the online correlation that is happening today. |
| Centralized repositories of identifiers and data about the people associated with those identifiers are targeted by hackers because the data has high value. This exacerbates the problem of not being able to trust "personal" data presented online (see above). | If high value data is only accepted when presented as a claim from a verifiable credential, there is no value in having data from breaches. |
| Centralized identifiers can be abused by those who control those identifiers. For example, they can be taken away from a subject without due process. | You create your own DIDs and those identifiers cannot be taken away by a centralized authority. You control your DIDs, no one else. |

## Chapter 3: SSI Using Indy, Aries and Ursa

### Introduction

In Chapter 2, we introduced the concept of self-sovereign identity and how the verifiable credentials model adds a needed layer of trust to the Internet. In this chapter, we will introduce Hyperledger Indy, Aries and Ursa and how the technologies from these projects (surprise!) enable SSI. Along the way, we’ll continue to dig into the verifiable credential model and learn more about decentralized identifiers, agents, zero-knowledge proofs and selective disclosure.

### Learning Objectives

By the end of this chapter you should:

  - Have an understanding of how each of the Hyperledger identity projects came about.
  - Be familiar with the capabilities of each of the Hyperledger identity projects.
  - Be familiar with how agents communicate and exchange credentials.
  - Have some hands-on experience working with agents!

### In the Beginning, There Was Indy: Hyperledger Indy, Aries and Ursa

Here we are, into the third chapter and we’ve barely mentioned anything about the stars of the course: Hyperledger Indy, Aries and Ursa. We’ve talked about the problems with trust on the Internet in Chapter 1. In Chapter 2, we presented some new approaches enabled by blockchain technology that are the building blocks of decentralized identity—approaches that make SSI possible! And, as you might be able to guess, Hyperledger Indy, Aries and Ursa are (awesome) implementations of those building blocks. However, before we dig too deeply into these projects, let’s introduce them by way of a brief history lesson on how they came about in the first place.

![The Linux Foundation Frameworks and Tools](./images/The_Linux_Foundation_Frameworks_and_Tools.png)

*The Linux Foundation Frameworks and Tools*

![The Linux Foundation Frameworks and Tools](./images/A_Timeline_for_the_Hyperledger_Identity_Projects.png)

*The Linux Foundation Frameworks and Tools*

### Hyperledger Indy Overview

[Hyperledger Indy](https://www.hyperledger.org/projects/hyperledger-indy) was Hyperledger’s first "identity-focused" blockchain framework, joining Hyperledger in 2017. The code for Indy was contributed by the Sovrin Foundation, an organization that we’ll cover a little later, after we’ve dug a bit deeper into Indy. Indy is a purpose-built distributed ledger for decentralized identity, supporting the concepts we talked about in Chapter 2. Indy includes verifiable credentials based on zero-knowledge proof (ZKP) technology, decentralized identifiers, a software development kit (SDK) for building agents and an implementation of a public, permissioned distributed ledger. We’ll be talking more about all of these things in this and later chapters.

![Hyperledger Indy Logo](./images/Hyperledger_Indy_logo.png) 

*Hyperledger Indy Logo*

### Hyperledger Ursa Overview

As Indy evolved within Hyperledger, there was a realization that the cryptography in Indy could be used in a number of Hyperledger projects, and even outside of Hyperledger. In 2018, the decision was made to migrate the `indy-crypto` code repository out of Indy and into its own project: [Hyperledger Ursa](https://www.hyperledger.org/projects/ursa). Like the Linux kernel, cryptographic algorithms and software are the domain of a few experts in the field and should not be coded by other than those experts. Ursa gives those experts a place to work together to build and package cryptographic primitives—combinations of low-level cryptography elements that only experts should build, test and make available to "ordinary developers". Just as important, it’s an open source space for experts to review those primitives and find and eliminate flaws in the implementations. Ursa packages the primitives in a way that can be consumed by Indy, Aries and any other software that needs a solid, vetted cryptographic base. The initial transfer of code from Indy to Ursa was pretty straightforward, involving a lot of renaming and updating references, but little change. As we’ll see, splitting up a project isn’t always as straightforward.

![Hyperledger Ursa Logo](./images/Hyperledger_Ursa.png)

*Hyperledger Ursa Logo*

### Hyperledger Aries Overview

The `indy-sdk` repository is the Indy software that enables building components (called agents) that can interact with an Indy ledger and with each other. Until mid-2018, groups working on building on top of Indy did so in silos, making agents that talked only to other instances of their agent, not to agents built by others. The *Indy Agents Working Group* was established to change that, by defining standard protocols to enable agent interoperability. By early 2019, at a "Connect-a-thon" in Utah, USA, the fruits of that effort were realized as developers from a variety of organizations gathered to demonstrate interoperability across a set of independently developed agent implementations. At that time, a further idea developed that led to the creation of [Hyperledger Aries](https://www.hyperledger.org/projects/aries). Although Indy is an excellent implementation of core SSI capabilities (ledger, verifiable credential model), it is not the only implementation. In the long term, it’s likely that there will be multiple implementations that are used by different organizations and communities. What if we had agents that could use DIDs and verifiable credentials from multiple ecosystems? [Aries](https://www.hyperledger.org/projects/aries) was [proposed](https://wiki.hyperledger.org/display/HYP/Hyperledger+Aries+Proposal) on that basis and accepted as a Hyperledger project in March 2019.

Aries is a toolkit designed for initiatives and solutions focused on creating, transmitting, storing and using verifiable credentials. At its core are protocols enabling connectivity between agents using secure messaging to exchange information. Aries is all about peer-to-peer interactions between agents controlled by different entities—people, organizations and things. Using the standardized messaging channel, verifiable credentials can be exchanged based on DIDs rooted in different ledgers (based on Indy or other technology) using a range of verifiable credential implementations.

Unlike when Ursa was separated from Indy, the separation of Aries from Indy evolved from the original vision and it took until February 2021 for [Aries to graduate into an “Active” Hyperledger project](https://www.hyperledger.org/blog/2021/02/26/hyperledger-aries-graduates-to-active-status-joins-indy-as-production-ready-hyperledger-projects-for-decentralized-identity). Some elements from the early “Indy agents” clearly remained with Indy (for example, Indy ledger interactions), while others moved to Aries (for example, secure storage and the use of non-Indy ledgers). But there was a lot in the middle (for example, Indy verifiable credentials) that fit in both places. And, while the original idea was to have a single core Aries implementation, instead, the core of Aries are the protocols that define the behavior of Aries agents, and there are multiple open and closed source implementations of those protocols for different use cases.

![Hyperledger Aries Logo](./images/Hyperledger_Aries_.png)

*Hyperledger Aries Logo*

### The Hyperledger Identity "Stack"

Together, Indy, Aries and Ursa make the Hyperledger Identity "Stack."

![The Hyperledger Identity Stack](./images/The_Hyperledger_Identity__Stack_.png)

*The Hyperledger Identity "Stack"*

The ordering and logo sizes in the image are intentional. The ordering is about the exposure of the project to external users, while the logo sizes correspond to the size of the customer base for each of the projects. The vast majority of those working with the Hyperledger identity stack will build on top of Aries and have relatively little interaction with Indy, and almost none with Ursa. Only those contributing code directly into Aries, Indy and Ursa will have significant interaction with Indy and Ursa. Those building on top of Aries will interact with Aries, but only to understand how to build agents.

### Indy, Aries and Ursa Working Together

**Demo Time**

With that bit of history out of the way and a basic understanding of the three projects and their relationship to one another, let’s go through an example of verifiable credentials being created, issued, held and then proven. We’ll go step-by-step through a demonstration of the interactions and how the different components of Indy, Aries and Ursa come into play.

To see the demonstration and optionally run it yourself, click on this [link](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS172x/running-aries-browser-lab.md). Please come back here when you are done!

### Hyperledger Ursa: Introduction

The Hyperledger Ursa project produces cryptographic packages that can be used to build higher level applications. The packages Ursa produces are used by Indy and Aries for all of the uses of cryptography by those projects, including:

  - generation of public/private key pairs
  - data encryption and decryption
  - data signing and verifying
  - data hash generation and verification
  - zero-knowledge proof (ZKP) technology, including issuing and revoking ZKP credentials and generating and verifying ZKPs

These capabilities are used throughout Indy and Aries, as we will see when we get deeper into these projects. The need for and importance of Ursa is best understood by looking at how cryptography, an extremely complex technology, is able to be used in everyday applications. The following is a brief summary of how cryptographic algorithms are developed, implemented, standardized (in libraries such as Ursa) and deployed.

### Basic Research

Core cryptographic techniques are the work of mathematical researchers. They think of and subsequently prove (or not) the viability of the algorithms using pure math. It is those researchers that are responsible for the cryptographic capabilities we use in everyday life. But for the average software engineer, their work is inaccessible—the concepts are too complex to convert to software requirements and products.

![Crypto Research Is Not For Everyone!](./images/Crypto_Research_Is_Not_For_Everyone_.png)

*Crypto Research Is Not For Everyone!*

Over time, such researchers have created breakthrough algorithms, and have evolved and enhanced existing algorithms to improve their usefulness and effectiveness. For example, creating a new encryption algorithm that is more effective than existing techniques but too slow to be useful, and then evolving the algorithm to be practically useful. The well-known [Diffie-Hellman algorithm](https://en.m.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange) was one such breakthrough, as was the use of [elliptic-curve cryptography](https://en.m.wikipedia.org/wiki/Elliptic-curve_cryptography).

"Effective" in practical cryptography means that an algorithm is both useful and (relatively) safe from attack. An encryption algorithm is effective if the data cannot reasonably be decrypted except with authorized access by the intended recipient. For example, if the encryption algorithm uses a key, the key cannot easily be discovered, or the data cannot "easily" be decrypted without the key. Often that means a brute force attack (e.g., trying every possible key) cannot be completed in a reasonable time (e.g., at least 10s to 100s of years) using technology anticipated to be available for a reasonable period in the future. There are many such attack vectors and both cryptographers and their adversaries (aka hackers) are constantly thinking about what new attack vectors are possible.

### Implementation

The next step towards practical use of the research results is the implementation of the algorithm in code—converting the mathematical equations into software. Again, that is an exclusive domain of expert researchers/developers that know the math, the code and where weakness might show up in the algorithm or (more likely) the implementation. Implementations are packaged into well-known and well-tested open-source libraries (for example, [libsodium](https://download.libsodium.org/doc/)). It is common for the algorithm to be named and evolutions of the algorithm to be given versioned names (for example, elliptic curve algorithms, with variations for different purposes (for example, signatures, hashes, etc.), different parameters (for example, key length), with versioned standards defined by (often) the year of implementation). An example is:

> `Ed25519VerificationKey2018`

which is interpreted as “standard signature suite created in 2018 for the Ed25519 signature scheme using Curve25519.” It is a cryptographic suite currently used in Hyperledger Indy.

You really have to be paying attention to follow and understand all the options! What non-crypto developer has time for that? Further, having an algorithm implemented in an open source library, and using it properly, without introducing vulnerabilities in the security of an application, is yet another challenge. That’s where Ursa comes in.

The "open source" reference in the previous paragraph is extremely important. With trust comes verification, and the open sourcing of cryptography implementations is crucial to establish trust in the implementation. Very few put trust in such important code that they can’t evaluate, line by line and build from scratch.

### Packaging

Ursa takes the "raw" cryptographic algorithms and packages them up so that they can be embedded in, for example, Indy and Aries and used safely. Ursa curates what implementations to support and how to manage support for different versions as the implementations evolve (e.g., 2018 versus 2019). Where higher level standards have been defined, such as the so-called JW* mechanisms (JWE, JSON Web Encryption, JWT, JSON Web Token, JWS, JSON Web Signatures, etc.), Ursa takes care of the details in producing and consuming those data structures.

### Usage

With the Ursa packages embedded in Indy and Aries, cryptographic features are relatively easy to implement. When a write transaction is sent to an Indy ledger, it is signed (via a call to an Ursa function) by the transaction author and the signature is verified (via a call to an Ursa function) by the nodes of an Indy ledger that receive the transaction. When a message is sent from one Aries agent to another, it is encrypted and packaged up via a call to an Ursa function.

If you are contributing to Indy and Aries, you do have to be aware of the Ursa libraries being used and the capabilities they provide. However, if you are building applications on top of Aries and using the Indy ledger and verifiable credentials, it’s all hidden from you. Calls your application makes to Indy and Aries functionality in turn make calls to Ursa to handle the cryptography needs. In fact, the main impact the cryptography will have on developers is not how to use the cryptography (phewww!!), but rather trying to debug code when so much of the data is encrypted. That can be a major pain—but MUCH easier than having to write safe and secure cryptography code!

That’s all we’ll cover on Ursa itself in this course. If you are trained in cryptography and interested in working at the cryptography level on Ursa, you’ll know a lot more about this topic than we’ve covered here. Hop right over to the Hyperledger Ursa Rocket.Chat channel and start talking with the project maintainers!

For everyone else, we’ll give a quick overview of Hyperledger Indy and Aries in this chapter and cover each of them in depth in the following chapters.

### Hyperledger Indy: Introduction

Hyperledger Indy is the core component of Hyperledger’s identity system. Indy provides code that implements the public **distributed ledger technology (DLT)** and the code to build applications that interface with the ledger. The project consists primarily of two types of repositories (repos) that contain the two parts:

  - `indy-sdk`, `indy-vdr` and `indy-shared-rs`: software that enables Indy clients (such as Aries agents) to be built that interact with the Indy blockchain
  - `indy-node`: the blockchain/DLT component of Indy

Let’s look at the two artifacts.

### Indy Client: indy-sdk, indy-vdr and indy-shared-rs

The Indy client repositories contain the code that allows a piece of software, such as an Aries agent (introduced in the previous chapter and that we’ll cover in detail in Chapter 5), to interact with an Indy public ledger and to keep track of the keys and other identity-related data. The `indy-sdk` is the first generation of these capabilities, while `indy-vdr` and `indy-shared-rs` are a subsequent generation.

The `indy-sdk` consists of a series of modules written mostly in the programming language Rust that are compiled into a "C-callable" library (called "`libindy`"). C-callable means that the library components have a standard interface such that they can be called from a majority of languages (Java, C#, Python, JavaScript, etc.), eliminating the need for an implementation in each language. The `indy-sdk` repository also includes a number of language specific "wrappers" for the library. The wrappers, currently available in Python, Java, C# (.NET) and node.js, allow the creation of Indy agents in each of those languages.

![GitHub indy-sdk Screenshot](./images/GitHub_Indy_SDK.png)

*GitHub indy-sdk Screenshot*

The two repos `indy-vdr` and `indy-shared-rs` are new implementations of a subset of the `indy-sdk` capabilities that better support the Hyperledger Aries goal of being able to work with Indy and non-Indy ledgers, and Indy and non-Indy verifiable credential formats. The two repos, plus a new Aries-level component (called `aries-askar`) are all written in Rust and have the same C-callable interface as the `indy-sdk`. At the time this course is being edited (April 2021), the newest version of the Aries framework Aries Cloud Agent Python is being updated to remove the `indy-sdk` in favor of the new generation of components.

Let’s go through the major subsystems of the `indy-sdk`, covering some important details about each. As we do, we’ll talk about how these capabilities are implemented in the new generation of Indy client software—including how some of these capabilities have been removed from Indy entirely.

### Indy Ledger Client

Core to the `indy-sdk` is the code that enables an Indy agent to interact with an instance of an Indy network. The newer `indy-vdr` component does just that, leaving secure storage, verifiable credential handling and so on to go into other components.

The functionality is implemented as a series of messages that enable the client application to read from and write to an Indy network. The high level process for interacting with the ledger is the same for each call:

  - The application prepares the data for the message to be sent, e.g., the type of message and all of the parameters necessary for that type of message.
  - If the message is a write, the application calls cryptographic functions to sign elements of the message with a private key held by the application for that purpose. This is necessary to prove that the application has permission to write the transaction to the network.
    - Multiple signatures from different parties may be needed depending on the roles of the parties and the impact of the message on the network. For example, if the application is not authorized to write to the ledger, the transaction must be sent to an application that is authorized to write to the ledger (called an "endorser") to sign the transaction. Once signed, either the author or the endorser can submit the transaction to the ledger (the next step).
  - The message is sent to a verifier node that is part of the Indy ledger.
  - The application waits until a response is received from the ledger with the result code (success or failure) and any related data.
    - If a write transaction succeeds, one of the returned values is the transaction’s sequence number on the ledger. That information should be stored immediately by the agent so it can be used when referencing that object in later operations.

The ledger objects relevant to participants in verifiable credential exchanges (issuers, holders/provers and verifiers) are covered in the next chapter when we talk about what goes on the blockchain. There are also a number of transactions that control the operation of the ledger itself, such as adding and removing verifier nodes from the network and controlling permissions about who can write what ledger transactions. We’ll not cover those further in this course, but are relevant to those who want to participate in the operation of an Indy network.

The read transactions support retrieving all of the types of transactions that are stored on the ledger. Reads don’t require permissions so anyone can read data from an Indy ledger. For each read, the agent must know either the transaction sequence number of interest or the identifier. For example, the identifier for a DID is the DID string itself (e.g., `did:sov:1213423e239f9g095hg2`).

A surprise for many that are new to Indy is its ledger does not support any form of querying by value or discovery. For example, you can’t just make a single query on an Indy ledger to get a list of all of the DIDs on the ledger. In the common cases, the agent must know about the transactions of interest on the ledger either because that agent wrote the data in the first place, or because the agent is configured (“hardwired”) to know about the transaction. Although you can’t query the ledger, it is a public ledger, so you can read its entire contents and if you want a query capability, you can put it in a database. How? Since the transactions are sequenced, you can just start from one and iteratively query the ledger for all the transactions (one, two, three, four…). Once you have read them all (e.g., the ledger returns “no such transaction”), every few minutes ask for any new transactions that have arrived. It’s onerous and so several people have published websites of “ledger browsers” ([Sovrin Main Net](https://sovrin-mainnet-browser.vonx.io/) and [IndyScan](https://indyscan.io/home/sovmain)) that continually query the Sovrin MainNet and provide a web interface for searching. Here is a short [demonstration of browsing an Indy ledger](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS172x/BrowsingAnIndyLedger.md).

> **NOTE:** Adding a querying/discovery capability that works in a similar way to the ledger browsers but that is implemented by Indy is likely not a difficult task. It’s just not risen high enough on the priority list to be implemented as a core feature.

As noted, the only feature of the `indy-vdr` component is to provide an interface to read and write to an Indy ledger. Having it in an isolated package makes it easier for an Aries agent to use it to integrate with an Indy ledger alongside resolvers for other ledgers. `indy-vdr` includes in its repo a web server wrapper that allows deployment of indy-vdr as a service for a set of Indy clients. For example, an enterprise might have Aries agents for a number of sub-organizations in the enterprise all sharing the same robust, scalable `indy-vdr` service to handle all of the reads and writes to Indy networks.

### Secure Storage

The `indy-sdk` implements a secure storage component that is used to store the Indy data collected by an identity on an Indy network—DIDs, private keys, verifiable credentials and more. Unfortunately, in the early days of Indy, the term “wallet” was selected for the storage component of the `indy-sdk`, resulting in an application called a digital wallet containing a wallet. Confusing, right?

In the “next generation” of Indy components, there is no secure storage at the Indy level. Instead, an Aries component called `aries-askar` implements secure storage for Aries agents, handling both Indy and non-Indy data.

> **NOTE:** Askar (from Arabic, meaning guard or soldier) is one of the names of the star Hamel, the head of the Aries ram.

Both `aries-askar` and the Indy wallet sub-component of the `indy-sdk` provide a pluggable API for data storage, meaning a capable developer can create another storage implementation should they need one. By default, both use the open source SQLite database and the Government of British Columbia implemented and contributed to both an implementation using the PostgreSQL database for enterprise deployments.

Both use a simple storage data model with just a handful of tables implementing essentially a key-value pair system. Almost all of the data is encrypted, a detail we’ll cover later in the course. The storage is logically divided into two parts:

  - “Secrets”—data associated with ledger entries and verifiable credentials, and
  - “Non-secrets”—any other data stored by an agent.

In all cases, for security reasons, operations that use private keys happen within the storage API code; the private keys are never handed out to “user code” (less scrutinized application code that might have security vulnerabilities).

### Verifiable Credential Handling

Indy verifiable credentials (“AnonCreds”) handling is currently built into the `indy-sdk`, and is the major subsystem of the new `indy-shared-rs` software. In both, the code is used to create credentials to be issued, generate presentations to be provided to verifiers, and to verify those presentations upon receipt. As necessary, that code calls the ledger interface (with the `indy-sdk` or the new `indy-vdr`) to retrieve the necessary ledger data to carry out those operations. We’ve already gone into detail about those operations (and we’ll talk about them again), so no need to dig too much into them now.

The move to separate out the Indy verifiable credentials from the monolith `indy-sdk` into an Indy-specific verifiable credential library was done to make it easier to allow an Aries agent to use Indy and other verifiable credentials formats. This matches the reasoning for breaking out the Indy ledger interactions into the `indy-vdr` component. `indy-shared-rs` also includes a number of common cryptographic operations needed by `indy-vdr` and `aries-askar`.

### Wrappers

As noted earlier, both the first and second generation Indy components are written in Rust and expose a C-callable interface to allow their use in other programming languages. Each of the repos also include wrappers of language specific bindings that make it easy for an application in another language to call the Rust functions. The wrapper functions tend to be one-to-one with the Rust calls. Although most of the wrappers were hand-coded, the idea is that there is so little extra value in the wrappers that the code can be machine generated. Auto-generation would eliminate the manual effort to update the wrappers as the Rust code evolves.

### Tests

A key part of the first and second generation Indy components are the test suites that are automatically executed with each update to the repo. While it's comforting to know the test suite is executed (and updated) with each change, another useful aspect of the suite for those new to Indy is that the tests are working code that can be used to understand how the calls into Indy work. Not sure what exactly are the parameters to a specific Indy call? Check out the test suite and you'll find a working instance to study.

### Command Line Interface (CLI)

A useful feature of the `indy-sdk` that has not been replicated in the new generation of Indy components is the Indy command line interface (CLI). The CLI allows a user to execute a number of Indy-related commands such as creating a secure storage database, creating a DID, connecting to an Indy network and writing that DID to the network. In fact, with the CLI, any Indy transaction can be created, signed (if needed) and then sent to a connected Indy network. While not strictly necessary, since Aries frameworks provide ways of doing the same things, the CLI is extremely convenient for Aries and Indy developers experimenting with Indy.

### indy-node

The second major component of Hyperledger Indy is `indy-node`, the blockchain/distributed ledger (DL) component of Indy. Written in Python, this codebase embodies all the functionality to run nodes that implement a distributed ledger. To be a little more precise, the repository `indy-plenum` contains most of the DL code for Indy, including the consensus implementation, while the code in `indy-node` handles the transactions to read and write to the ledger. We’re going to talk a lot about the ledger and what data goes on the ledger in the next chapter, so we’ll not spend any more time on it here.

![GitHub indy-node Screenshot](./images/indy-node_screenshot.png)

*GitHub indy-node Screenshot*

### Hyperledger Aries: Introduction

Indy (and its underlying Ursa cryptography) enables issuers, holders and verifiers to generate verifiable credentials and presentations by interacting with the ledger and executing cryptographic operations. To exchange those credentials and presentations, all of those issuers, holders and verifiers will use agents (software) that send data to one another using messages. Those agents will be built by many different organizations—open source tools, commercial agents available for purchase and custom-built proprietary agents. How do all those different agent makers build agents that will work with all the other agents in the world? Further, what if you decide you want to switch from the agent you have now to a new one that is even better? You must be free to take your credentials and related data, move them to another agent and continue to use them.

Those are the challenges that started the Hyperledger Aries project. Aries is about collaborating to define and share the message exchange protocols, an agent architecture and tests that enable organizations to independently build agents that work together. Since there are other verifiable credential ecosystems being developed in parallel to Hyperledger Indy, Aries is also intended to be “verifiable credential-agnostic”—the architecture of Aries should be able to support different verifiable credential implementations within a single agent. And, since Hyperledger and the Linux Foundation is about building open source software, Aries includes implementations of the protocols, architecture and tests.

### It’s All About Message Protocols...

Messaging in Aries is defined at several conceptual layers. At the lowest is simply the ability for one agent to send a chunk of data and for another agent to receive that data and understand it. At the next layer is the ability for agents to exchange data in a sequence of messages to accomplish some shared task. That’s a protocol. Messaging protocols are just like human protocols. For example, going out to a restaurant for a meal is a protocol, with both the guests and the restaurant staff knowing the sequence of steps for their roles—greeting, being seated, looking at menus, ordering food, etc. In Aries, an example is the “issue credential” protocol where an issuer agent coordinates with a holder agent to offer, be asked for and deliver a credential. Unlike human protocols (etiquette), Aries messaging protocols need to be carefully specified and then implemented (and tested!) by multiple participants.

![It’s All About Message Protocols](./images/It_s_All_About_Message_Protocols.png)

It’s All About Message Protocols

Aries provides messaging at both layers. In Chapter 5, we’ll dig into Aries messaging, covering the DIDComm (DID Communications) protocol that covers the envelopes used to address and send messages from agent to agent, and content protocols—messages with specific data used between agents to accomplish a task. As indicated by the name, DIDComm uses the data associated with DIDs (public keys and service endpoints) to secure and address messages, respectively. DIDComm is an extremely powerful capability!

### ...And Interoperability

As we’ve discussed in Chapter 2, Indy is not the only game in town when it comes to DID and verifiable credential implementations. With a goal of global use of verifiable credentials (and all the goodness that it brings), it’s crucial that interoperability across different Aries, DID and verifiable credential implementations be a goal. Not all DID and verifiable credential implementations will last but we’re certain that there will be more than one and we will need interoperability across the major implementations. The Aries architecture defines how different implementations can be plugged into an agent to support Indy and other DID and verifiable credential implementations at the same time. The goal is to bring developers from these communities together to extend Aries to enable verifiable credential interoperability.

### ...And Portability

In the previous section, we talked about implementations of DIDs and verifiable credentials. But there will also be many implementations of Aries agents, built by many different organizations. As a person, organization or thing begins to use a digital wallet, they will immediately begin to collect data that is valuable—things they don’t want to lose. And, since digital wallets are just specialized pieces of software, they will at some point discover a digital wallet that is even better than the one they started with. Or perhaps the one they started with will become obsolete—no longer supported. One part of the Aries definition (albeit one that has not yet had a lot of focus) is about data storage, and more importantly the export of data from one implementation and the import of that data into another without loss.

### Summary

This is the linchpin chapter of the course and should be considered carefully. From this chapter we hope you understand how the problems with identity on the Internet (Chapter 1) and the solutions defined based on self-sovereign identity and the verifiable credentials model (Chapter 2) are manifest in Hyperledger Indy, Aries and Ursa. In subsequent chapters, we’ll delve deeper into the projects by looking at what goes on the blockchain (Chapter 4) and how there is more than meets the eye with agents (Chapter 5).

As we did in Chapter 2, let’s go back to bullet points in the Chapter 1 summary and see how Indy, Aries and Ursa address the problems we find on the Internet today:

| Internet Challenges Today | How Indy, Ursa and Aries Address These Challengess |
| --- | --- |
| User IDs/passwords are the norm, but they are a pain to use, and as a result, are susceptible to attack. They are the best we have right now, but not a solid basis for trust. Further, IDs work only one way—users don't get an ID from a service they use. | Aries agents used by individuals and online services exchange at least DIDs, and often verifiable credentials, to reliably identify one another as peers each time they connect. Ursa cryptography underlies the exchange, and Indy credentials are exchanged as needed. |
| Other personal information and identifiers we have that we could otherwise use to prove our identity are not trusted because it's impossible to tell if the data was actually issued to the person providing it. The many breaches of private identifiers make them impossible to completely trust, and verifying that information adds (sometimes significant) costs. | When collecting information from users, services can use their Aries agent to connect with, request and receive back proofs of claims from a users Aries agent. |
| Since the identity attributes we could use are not trusted (they are not things only we know), we often have to resort to in-person delivery of paper documents to prove things about ourselves, a further cost for all participants. | The cryptographic guarantees from Ursa and Indy inherent in the proving of claims allows for the delivery (via Aries agents) of digital data in place of paper. |
| Reviewers of the paper documents we present must become experts in the state of the art in forging and falsifying paper documents, a difficult role in which to be placed. | The cryptographic guarantees from Ursa and Indy inherent in the verification of claims replaces human verification. Humans may be needed to assess the trustworthiness of the issuer, but not of the data. |
| The identifiers we use are correlated across sites, allowing inferences to be made about us, and exposing information we don't intend to be shared across sites. This is annoying at the least, and can have catastrophic results in the worst case. | Aries agents use private, secure messaging to enable interactions without monitoring or correlation exposure. Indy credentials use ZKPs to reduce correlation when proving credentials. Ursa provides the necessary cryptographic primitives to support Aries messaging and Indy credentials. |
| Centralized repositories of identifiers and data about the people associated with those identifiers are targeted by hackers because the data has high value. This exacerbates the problem of not being able to trust "personal" data presented online (see above). | Aries agents make it easy to decentralize the data, giving it to the subject of the data (us!) to use how and when we want. At the same time, this frees organizations currently managing those repositories from the liability of holding such toxic data. Indy provides the credentials that ensure that the data provided by the subject can be trusted. Ursa provides the cryptography to support the Indy credential model. |
| Centralized identifiers can be abused by those who control those identifiers. For example, they can be taken away from a subject without due process. | Aries enables you to create (and delete) DIDs that you share with others how and when you want. Indy allows you to put those DIDs on a global ledger for others to access, if that is necessary. Ursa provides the cryptography that allows you to prove control over those identifiers. |

## Chapter 4: A Blockchain for Identity

### Introduction

Hyperledger Indy implements (based on cryptography from Ursa) a purpose-built blockchain specifically for identity on the Internet—enabling certainty about who is talking to whom in a digital transaction. Since Indy is designed for such a special purpose, how does that affect the underlying blockchain implementation? Does it have the same components of other blockchains? What goes into the transactions on the blockchain?

In addition to talking about the Indy blockchain, we’ll talk about some of the live implementations of Indy that you can use today, including one operated by the Sovrin Foundation, introduced briefly in the last chapter. We’ll talk about how these implementations make it easier to get started using verifiable credentials because you don’t have to operate your own instance of Indy.

![Chain](./images/Chain.png)

*Chain*

### Learning Objectives

By the end of this chapter you should:

  - Be familiar with different types of blockchain and the terminology surrounding them.
  - Understand how consensus is reached on the Indy blockchain.
  - Know what the Sovrin Foundation is and how it relates to Indy.
  - Be familiar with the term trust or governance framework.
  - Understand what gets written to the ledger and more importantly, what does not!
  - Learn about the “network of networks” issue, as more and more ledgers come online.

### Indy's Blockchain: What Is Indy's Blockchain?



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

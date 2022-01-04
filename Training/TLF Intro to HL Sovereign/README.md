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

### Trust is broken on the Internet

That statement is intended to be controversial and surprising. But it’s not. Everyone knows that trust is not a part of using the Internet. We are trained to not believe what is said on the Internet, to not click links that we are unsure of, and if we want to do something really important, well, we just don’t use the Internet for that.

As the famous 1993 New Yorker cartoon goes—"[No one knows you are a dog on the Internet.](https://en.wikipedia.org/wiki/On_the_Internet,_nobody_knows_you%27re_a_dog)" It was true then, and sadly, it’s still true today. We need to fix that.

![Laptop and dog](./images/Internet_dog.jpg)

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

_Interaction Creates Identifiers_

The same pattern is used online, but there are a variety of problems that occur, some obvious, some a little more subtle. Let's go through them.

### Identifiers: User IDs and Passwords

The basic mechanism for knowing who you are on the Internet is the user ID and password combination. You register at a site, make a user ID and set a secret password that only you know (right?), and each time you return you use them to access your account. We all know the problems with user IDs and passwords—we deal with them every day:

  - We have too many to track.
  - Because we have so many, we often use "easy to remember" passwords that are also easy for others to guess.
  - Password recovery mechanisms (question/responses, support desks) provide avenues of attack by hackers. For example, if they know our ID and our recovery answers, they can reset our password to something only they know. This [video from CNN](https://www.cnn.com/2019/10/18/tech/reporter-hack/index.html) shows an example of collecting data about a person and then using it against them. It’s amazing—in a really bad way.
  - Data breaches occur that result in our IDs and passwords being exposed and used—either by hackers or anyone that buys them.
  - We often use the same password on many sites, and if that password gets exposed on one site, our accounts on others sites are also exposed.
 
![Criminal](./images/Criminal.png)

_Today’s User ID and Password Model Has Problems!_

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

The paper credential model (ideally) **proves**:

  - Who issued the credential.
  - Who holds the credential.
  - The claims have not been altered.

The caveat "ideally" is included because of the possibility of forgery in the use of paper credentials. As many university students know, it’s pretty easy to get a fake driver’s license that can be used when needed to "prove" those same things.

At the time this course is being updated (April 2021) vaccines for COVID-19 are rolling out around the globe, and calls for a trusted “proof of vaccination” document are gaining momentum. The decades old World Health Organization Yellow Card/Carte Jaune is the current standard, but it is insufficient for a 21st century pandemic. While a COVID-19 vaccine certificate could enable travel and the ability to get back to a more “normal” life, relying on a handwritten, paper document is insufficient to provide the necessary trust. They are just too easy to forge, as we have seen from the many stories in the press about scammers selling and people buying fake COVID-19 test results and proof of vaccination certificates.

![Easily Forged Proof of Vaccination Record](./images/proof_of_vaccination_forged.png)

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

For identity, verifiable credentials are digital, cryptographically-protected data from authorities that you can use to prove you are you! With Indy, the data can be used by their holder to generate privacy-preserving cryptographic zero-knowledge proofs (ZKPs—we will talk about these shortly) that can be checked by a verifier.

  > **NOTE:** For the more technically inclined, credentials are JSON docs, constructed and cryptographically signed by an issuer and countersigned by the holder.

![A Holder Will Generate a Presentation that Will Be Checked By Verifier](./images/A_holder_will_generate_a_presentation_that_will_be_checked_by_a_verifier.png)

### Verifiable Credentials (2)

Referring to the following illustration from the World Wide Web Consortium (W3C), there is an **issuer**, a **holder** and a **verifier**, just like in the paper credentials model. Unlike the paper credential model, which depends on the skill of the verifier to recognize an altered or forged credential, the verifiable credentials model includes a **verifiable data registry**—containing cryptographic keys and identifiers—that enables the proving of the data. That’s the blockchain part of verifiable credentials.

![The W3C Verifiable Credentials Model](./images/The_W3C_Verifiable_Credentials_Model_updated.png)

Compared to the paper credentials model that we talked about in the last chapter, verifiable credentials are far more secure. The verifier is not a person trying to identify a forged document. Instead, if the cryptographic verification succeeds, the verifier can be certain of the validity of the data—those same three attributes proven when verifying a paper credential. That means that the problem of whether the verifier trusts the holder more or less goes away. The holder cannot forge the cryptography protecting the verifiable credentials and so the data acquired can be accepted without further concern.

However, there does remain a challenge with a verifiable credential—and it's actually the same thing with a paper credential:

_Do you trust the issuer and the process by which the issuer decided to issue the credential?_

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

QR Codes, one with the URL of this course (114 characters),
the second with the text of the next paragraph (332 characters)

Alternatively, the QR code can contain just a URL to a web service that in turns returns the presentation. This gets around the size of the presentation issue, but there are drawbacks, including that the URL must be unique per credential, and the issuer of the credential knows each time a credential is used. Those issues can be mitigated, but they must be considered in any implementation.

There are also privacy trade-offs in using paper verifiable credentials. The primary concern is that verifiers of paper credentials get a machine-read, unique identifier for the credential, and hence, a globally unique identifier for the person presenting the credential. This is a correlating identifier that verfiers can use in the same way that surveillance tracking is done in browsers. Further, if personal information is included in the credential (especially if it is also printed in text), anyone finding such a document can see that data—a more likely scenario for a “one-time use” piece of paper than for something with known ongoing value such as a passport. A solution to that is to include only partially identifying data (e.g., part of the name or date of birth) such that there is enough to bind the holder to another document (e.g., a passport), but not enough to uniquely identify the person if the document is lost.

Paper verifiable credentials to eliminate forged documents without requiring everyone to use a smart device is an appealing approach—but the privacy implications must be kept in mind. Further, since the “presentation” of the verifiable credential is fixed at the time it is issued, there is no way to use selective disclosure, or for the verifier to ask for anything other than what the holder has on paper. So, while some of the verifiable credential capabilities are possible, a lot of the power is lost.

### Self-Sovereign Identity (SSI)

### Decentralized Identifiers (DIDs)

### Zero-Knowledge Proof (ZKP) and Selective Disclosure

### Wallets Are Agents

### Trust Over IP (ToIP)

### Summary

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

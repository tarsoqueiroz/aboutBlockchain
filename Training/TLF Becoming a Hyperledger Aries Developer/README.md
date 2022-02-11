# The Linux Foundation - FS173x - Becoming a Hyperledger Aries Developer

> `https://learning.edx.org/course/course-v1:LinuxFoundationX+LFS173x+3T2021/home`

## Welcome!

### Introduction and Learning Objectives

**Welcome to Becoming a Hyperledger Aries Developer (LFS173x)!**

*Learn how to develop blockchain-based, production-ready, decentralized identity applications using verifiable credentials with Hyperledger Aries in this free course.*

Data is driving our world today. However, we hear about data breaches and identity thefts all the time. Trust on the Internet is broken, and it needs to be fixed. As such, it is imperative that we adopt a new approach to identity management, and ensure data security and user privacy through tamper-proof transactions and infrastructures.

Blockchain-based decentralized identity management is revolutionizing this space. The three Hyperledger open source projects, Aries, Indy and Ursa, provide the foundation for distributed applications built on authentic data, applications that implement the concept of ***Trust over IP***. Together, the three projects provide tools, libraries, and reusable components for creating and using independent digital identities rooted on blockchains or other distributed ledgers that are interoperable across jurisdictions, applications and other data silos. While this course will cover what you need to know about Indy and Ursa, the main focus is Aries and how you can use it to quickly build your own applications on a solid digital foundation of trust. This focus will be explained further in the course but for now, rest assured: if you want to start developing decentralized identity applications rooted on the blockchain, Aries is where you need to be.

This course will get you from (pretty much) zero to developing code for issuing, holding and verifying credentials with your own production-ready Aries agents. On the way, you'll look at how Aries agents use Hyperledger Indy ledgers (you’ll even run your own ledger instances), dig into the architecture and components of an Aries agent, and learn about its underlying messaging protocols. Most importantly, you’ll get started building applications that address your Trust over IP use cases, whether they involve COVID-19 proof-of-vaccination credentials, digital driver's licenses, proof of employment, climate change, or anything else. The possibilities are endless!

### What You Will Learn

This course is designed to get students from the basics of Trust over IP (ToIP) and self-sovereign identity (SSI)—what you learned about in the last course (["Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries & Ursa" (LFS172x)](https://www.edx.org/course/identity-in-hyperledger-aries-indy-and-ursa))—to developing code for issuing (and verifying) credentials with your own Aries agent.


### Before You Begin

We strongly recommend that you review the course syllabus before jumping into the content. It provides the most important information related to the course, including:

- Course overview
- Instructors biographies and targeted audience
- Course prerequisites and length
- Course learning objectives and the outline
- edX platform guidelines
- Discussion forums, course timing, and learning aids
- Grading, progress, and course completion
- Professional Certificate Program audit and verified tracks
- The Linux Foundation's history, events, training, and certifications.

### Getting Help

For any **technical issues** with the edX platform (including login problems and issues with the Verified Certificate), please use the Help icon located on the upper right side of your screen.

One great way to interact with peers taking this course and resolving any **content-related issues** is via the Discussion Forums. These forums can be used in the following ways:

- To introduce yourselves to your peer learners.
- To discuss concepts, tools, and technologies presented in this course, or related to the topics discussed in the course material.
- To ask questions about course content.
- To share resources and ideas related to Hyperledger Aries.

We strongly encourage you not only to ask questions, but to share with your peers opinions about the course content, as well as valuable related resources. The Discussion Forums will be reviewed periodically by the Linux Foundation staff, but it is primarily a community resource, not an 'ask the instructor' service.

> **NOTE:** *Before starting a thread about your issue, we strongly encourage you to do a quick search to see if your question has already been addressed. It’s often the case that there will be one or two threads asking the same question that has been answered.*

To learn more tips on how to use them, read the following article: "[Getting the Most Out of the edX Discussion Forums](https://blog.edx.org/getting-most-out-edx-discussion-forums)".

### Terminology

We use the terms blockchain, ledger, decentralized ledger technology (DLT) and decentralized ledger (DL) interchangeably in this course. While there are precise meanings of those terms in other contexts, in the context of the material covered in this course the differences are not meaningful.

For more definitions, take a look at our course [Glossary](https://courses.edx.org/courses/course-v1:LinuxFoundationX+LFS173x+1T2020/65cfba99617340f39051f7c6f839bf85/) section.

### Labs and Demos

Throughout this course there will be labs and demos that are a key part of the content and that you are strongly advised to complete. The labs and demos are hosted on GitHub so that we can maintain them easily as the underlying technology evolves. Many will be short interactions between agents. In all cases, you will have access to the underlying code to dig into, run and alter.

For some labs, you won’t need anything on your laptop except your browser (and perhaps your mobile phone). For others, you have the option of running the labs in your browser or locally on your own system. For the "in browser" option, we use a service called "Play with Docker" that allows you to access a terminal command line environment in your browser so you don’t have to install everything locally. The downside of using Play with Docker is that you don’t have all the code locally to review and update in your local code editor. If you want that, stick with running the labs locally.

When you run the labs locally, you need the following prerequisites installed on your system:

- A terminal command line interface running bash shell.
  - This is built-in for Mac and Linux, and on Windows, the **git-bash** shell comes with git (see installation instructions below).
- Docker, including Docker Compose (Community Edition is fine).
  - If you do not already have Docker installed, open [Docker Documentation](https://docs.docker.com/get-docker/) and then click the link for the installation instructions for your platform.
  - Instructions for installing docker-compose for a variety of platforms can be found [here](https://docs.docker.com/compose/install/).
- Git
  - This [link](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/) provides installation instructions for Mac, Linux (including if you are running Linux using VirtualBox) and native Windows (without VirtualBox).

All of the labs that you can run locally use Docker. You can run the labs directly on your own system without Docker, but we don’t provide instructions for doing that, and we highly recommend you not try that until you have run through them with Docker. Because of the differences across systems, it’s difficult to provide universal instructions; we’ve seen many developers spend too much time trying to get everything installed and working right.

> **NOTE:** *The teams we work with only use Docker/containers for development and production deployment. In other cases, developers unfamiliar with (or not interested in) Docker set up their own native development environment. However, doing so is outside the scope of the labs in this course.*

### Meet Your Instructors

**Stephen Curran** of Cloud Compass Computing, Inc. is a Software Development and DevOps veteran who dove full on into the identity on blockchain world in 2017. Working with the British Columbia Government, Stephen has helped define, build and launch the Verifiable Organizations Network (VON)—a production instance of the Linux Foundation's Hyperledger Indy, Aries and Ursa projects that makes public information about organizations (incorporations/legal entities) in BC available in the form of verifiable credentials. Stephen is a regular contributor in the Hyperledger Indy and Aries community, facilitating discussions and driving interoperability. Stephen has presented on Blockchain and the Hyperledger Indy and Aries projects many times and is a member of the Sovrin Foundation's Board of Trustees and Technical Governance Board.

**Carol Howard** of Cloud Compass Computing, Inc. is a technical writer with more than 14 years experience, working for both hardware and software companies writing user guides, technical references, help text, and so on. She has been helping document the BC Government initiatives (VON, Greenlight, OrgBook BC and IIWBook) and became hooked on self-sovereign identity at IIW28.

### Acknowledgements

We have many, many people to thank for this course. The first and foremost is the Linux Foundation for allowing us to share what we know about this evolving and exciting technology. In particular, thank you Flavia and Magda for your guidance and expertise in getting this course online.

We would also like to thank the developers, visionaries and change-seekers in the Hyperledger Indy, Aries and Ursa world—the people we talk to on the weekly calls and daily chats, the people we meet at conferences, and the people who are driving this technology on a daily basis to make the Internet a better place. We would especially like to thank all Hyperledger Aries, Indy and Ursa contributors, and in particular, the BC Government Digital Trust Services (DTS) team for their contributions to this ecosystem.

While we have tried to be as accurate and timely as possible, these tools and libraries are changing rapidly. There are no doubt mistakes and we own them. Keeping this in mind, we have created a [change log on GitHub](https://github.com/cloudcompass/ToIPLabs/blob/main/docs/LFS173x/ChangeLog.md) to track course updates that are needed when mistakes are found in the content and when a major change or shift occurs within the Hyperledger Indy, Aries and Ursa space. If you find an error, a need for a content update, or something in one of the demos doesn’t work, please let us know via the GitHub repo.

Thank you for taking this course!

## Chapter 1: Overview

### Overview

*Data breaches. Identity theft. Companies exploiting our personal information.* We read about these Internet issues all the time. Simply put, trust on the Internet is broken and it needs to be fixed.

![No Shortage of Headlines About Internet Issues](./images/No_Shortage_of_Headlines_About_Internet_Issues.png)

*No Shortage of Headlines About Internet Issues*

This is where the Hyperledger Indy, Aries and Ursa projects come in and, we assume, the main reason you are taking this course. The Indy, Aries and Ursa tools, libraries and reusable components provide a foundation for distributed applications built on authentic data using a distributed ledger, purpose-built for decentralized trust.

![The Hyperledger Frameworks and Tools](./images/The_Hyperledger_Frameworks_and_Tools.png)

*The Hyperledger Frameworks and Tools*

> **NOTE:** *This course is called "Becoming a Hyperledger Aries Developer" because it focuses on building applications on top of Hyperledger Aries components—the area where you, a (soon to be!) verifiable credentials application developer, can have the most impact. Aries builds on Indy and Ursa. While you need to have a good understanding of Indy (and other ledger/verifiable credential technologies) and a basic idea of what Ursa (the underlying cryptography) is and does, Aries is where you need to dig in.*

### Learning Objectives

By the end of this chapter you should:

- Understand why this course focuses on Aries (and not Indy or Ursa).
- Understand the issues that Aries is trying to address.
- Know the core concepts behind self-sovereign identity.

### Why Focus on Aries Development?

Hyperledger Indy, Aries and Ursa make it possible to:

- Establish a secure, private channel with another person, organization, or IoT thing—like authentication plus a virtual private network—but with no central server and no login.
- Send and receive arbitrary messages with high security and privacy.
- Prove things about yourself; receive and validate proofs about other parties.
- Create an agent that proxies/represents you in the cloud or on edge devices.
- Manage your own identity:
  - Authorize or revoke devices.
  - Create, update and revoke keys.

However, you will have relatively little interaction with Indy—and almost none with Ursa—as the vast majority of those working with the Hyperledger identity solutions will build on top of Aries; only those contributing code directly into Indy, Aries and Ursa (e.g., fixing a flaw in a crypto algorithm implementation), will have significant interaction with Indy and Ursa. And here’s another big takeaway: while all three projects are focused on decentralized identity, Indy is a specific blockchain, whereas Aries is blockchain-agnostic. With Aries, you don’t have to be limited to Indy.

![Where Most Development Happens](./images/LFS173X_CourseGraphics-21.png)

*Where Most Development Happens*

### Why We Need Identity Solutions

In today's world, we are issued **credentials** as paper documents (for example, our driver's license). When we need to prove things from those paper documents, such as who we are, we hand over (or present) the document. The **verifier** looks at the document and attempts to ascertain whether it is valid and whether it satisfies the purpose for which it was requested. The **holder** of the document cannot choose to only hand over a certain piece of the document but must hand over the entire thing.

A typical paper credential, such as a driver’s license, is issued by a government authority (an **issuer**) after you prove to them who you are (usually in person using your passport and/or birth certificate) and that you are qualified to drive. You then hold this credential (usually in your wallet) and can use it elsewhere whenever you want—for example, when renting a car, in a bank to open up an account or in a bar to prove that you are old enough to drink. When you do that you've **proven** (or **presented**) the credential. That’s the **paper credential model**.

![Examples of Paper Credentials](./images/Examples_of_Paper_Credentials.png)

*Examples of Paper Credentials*

The paper credential model (ideally) **proves**:

- Who issued the credential.
- Who holds the credential.
- The claims have not been altered.

The caveat "ideally" is included because of the possibility of forgery in the use of paper credentials. As many university students know, it’s pretty easy to get a fake driver’s license that can be used when needed to "prove" those same things.

### The Verifiable Credential (VC) Model

Enter the VC model, the bread and butter behind authentic data and decentralized identity. The VC model brings about the possibility of building applications with a solid digital foundation of trust.

The verifiable credentials model is the digital version of the paper credentials model. That is:

- An authority decides you are eligible to receive a credential and issues you one.
- You hold your credential in your (digital) wallet.
- At some point, you are asked to prove the claims from the credential.
- You provide a verifiable presentation to the verifier, proving the same things as with a paper credential.

Plus,

- In some cases, you can prove one more thing—that the issued credential has not been revoked.

As we’ll see, verifiable credentials and presentations are not simple documents that anyone can create and use. They are cryptographically constructed so that a presentation proves the four key attributes of all credentials:

1. Who issued the credential.
1. The credential was issued to the entity presenting it.
1. The claims were not tampered with.
1. The credential has not been revoked.

Unlike a paper credential, those four attributes are evaluated not based on the judgment and expertise of the person looking at the credential, but rather online using cryptographic algorithms that are extremely difficult to forge. When a verifier receives a presentation from a holder, they use information from a decentralized source, often a distributed ledger (shown as the **verifiable data registry** in the image below) to perform the cryptographic calculations necessary to prove the four attributes. Forgeries become much (MUCH!) harder with verifiable credentials!

![The W3C Verifiable Credentials Model](./images/LFS172x_CourseGraphics_V1-04.png)

*The W3C Verifiable Credentials Model*

The prerequisite course, "[Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries and Ursa" (LFS172x)](https://www.edx.org/course/identity-in-hyperledger-aries-indy-and-ursa), more than covers the reasons why we need a better identity model on the Internet so we won’t go into it too much here. Suffice to say, the availability of distributed ledgers (such as those based on Hyperledger Indy) has enabled a better way to build solutions using authentic data, and in doing so, enables the creation of a more trusted Internet.

### Key Concepts

Let’s review other key concepts that you’ll need for this course, such as:

- self-sovereign identity
- trust over IP
- decentralized identifiers
- zero-knowledge proofs
- selective disclosure
- revocation
- verifiable credential formats
- secure storage
- agent

If you are not familiar or comfortable with these concepts and terminology from the following short summaries, we suggest you review them in greater depth in this course: ["Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries and Ursa" (LFS172x)](https://www.edx.org/course/identity-in-hyperledger-aries-indy-and-ursa).

### Self-Sovereign Identity (SSI)

**Self-sovereign identity** is one of the most important concepts discussed in the prerequisite course and it is what you should keep in mind at all times as you dig into the Aries world of development. SSI is the idea that you control your own data and you control when and how it is provided to others; when it is shared, it is done so in a trusted way. With SSI, there is no central authority holding your data that passes it on to others upon request. You hold your own data. And because of the underlying cryptography and distributed ledger technology, SSI means that you can present claims about your identity and others can verify it with cryptographic certainty.

### Trust Over IP (ToIP)

Along with SSI, another term we use in this course is **Trust over IP (ToIP)**. ToIP is a Linux Foundation organization that (per the [ToIP website](https://trustoverip.org/)) is defining a complete architecture for Internet-scale digital trust that combines both cryptographic trust at the machine layer and human trust at the business, legal and social layers. The technical capabilities embodied in Indy, Aries and Ursa enable the "trust at the machine layer." ToIP includes self-sovereign identity in that it covers identity, but also goes beyond identity (attributes about you) to cover any type of authentic data. Authentic data, in this context, is a set of claims (assertions) stated by the issuer to the holder (in the form of a verifiable credential), that the holder can later prove were said by the issuer to the holder, were not tampered with and have not been revoked. ToIP’s dual focus on both the technical and governance aspects of authentic data is encapsulated in the "Trust over IP Stacks," as represented in this image from the [Trust over IP Foundation](https://trustoverip.org/):

![Trust over IP (ToIP) Technology Stacks](./images/trust-over-ip-stack-1024x625.png)

*Trust over IP (ToIP) Technology Stack*

As shown, there are two stacks in ToIP: a governance stack and a technology stack. The technology stack is a typical layered stack, driven by technical components at each level. In parallel, the governance stack defines the information to govern each layer of the stack. For example, at Layer 3, where verifiable credentials are exchanged, governance defines how a verifier might come to trust the issuer of a credential—not the cryptography (that can be verified using technology), but what the information in the credential means. That is, under whose authority and using what processes did the issuer come to issue the credential being proven?

### Trust Over IP (ToIP): Aries in the ToIP Stack

The core of Aries implements Layer Two (peer-to-peer protocol) of the ToIP stack, enabling both Layer One (DIDs) and Layer Three (Data Exchange, including verifiable credentials) capabilities. Aries implements DIDComm, a secure, transport-agnostic mechanism for sending messages based on DIDs (decentralized identifiers). Hyperledger Indy provides both a Layer 1 DID utility mechanism and Layer 3 verifiable credential format called **AnonCreds** (aka, Anonymous Credentials). Although Aries works really well with Indy, it can also be used with other Layer One implementations, as well as other verifiable credential formats, including W3C Standard Verifiable Credentials.

### Decentralized Identifiers (DIDs)

A **decentralized identifier** is like a universally unique identifier (uuid), but with some added power—it is backed by a cryptographic key owned by the controller of the key. When needed, an Aries agent generates DIDs to either publish on a distributed ledger (such as an instance of Indy) or for exclusive use by another agent (a "peer DID"). A DID looks like this:

**`did:sov:AKRMugEbG3ez24K2xnqqrm`**

An Indy DID is created by generating an Ed25519 cryptographic public/private key pair. We’re assuming in this course that you know about key pairs and elliptical curve cryptography, but if you need a quick refresher, here is the [Wikipedia definition](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography). The identifier for the DID (such as above) is derived from the first instance of the public verification key (the verkey). An Aries agent will publish an issuer’s public DID on a ledger, including the DID, the verkey and a physical endpoint (such as a URL) to which messages can be sent to the agent. Aries holder/provers and verifiers generally do not publish a DID on a ledger because they don’t need to play those roles. On most public Indy ledgers, such as Sovrin, a DID for a person may **not** be published, blocked by GDPR-related legal agreements that a ledger writer must accept before using the ledger. Such agreements prevent a person from issuing verifiable credentials rooted in a public Indy network.

> **NOTE:** *While early (2020) Aries agents could only read and write published DIDs on an Indy ledger, newer implementations can use other ledgers.*

Peer DIDs are created and exchanged peer-to-peer between pairs of messaging agents. Such DIDs are shared directly with the paired agent and so do not need to be published on a distributed ledger. Such DIDs are used only for messaging; they are not used in the signing and issuing of verifiable credentials or in presenting proofs of claims from verifiable credentials.

The DID specification can be found in the W3C document titled ["Decentralized Identifiers (DIDs) v1.0."](https://w3c.github.io/did-core/)

### Zero-Knowledge Proof (ZKP)

A **zero-knowledge proof** ([ZKP](https://en.wikipedia.org/wiki/Zero-knowledge_proof)) is a cryptographic method of proving to someone that you know the value of an attribute without exposing the value of the attribute itself. In verifiable presentations, a ZKP is used to prove that the verifiable credentials were issued to the holder without exposing a unique, correlable identifier for the holder to the verifier. A presentation using a ZKP still exposes the claims asked for by the verifier (which may uniquely identify the prover), but a unique identifier for the holder is **not** automatically provided as part of the process of presenting a proof.

A second (super cool) use of a ZKP in verifiable presentations is a "predicate ZKP." A predicate ZKP is a true/false expression proven (with cryptography) to a verifier based on a claim from an issued credential without exposing the underlying claim—for example, proving based on a "date of birth" claim that a person is older than a given age (e.g., older than 18) without providing the date of birth itself. The cryptography is pretty neat, although left up to you to dig into. In this course, we’ll just cover enough to show how it is used.

> **NOTE:** *Although powerful and certainly privacy preserving, the application of predicates in Indy AnonCreds is limited to situations where the underlying data is a number. As such, to prove "an older than" predicate, the "date of birth" in the credential MUST be a number (such as the integer 20210413 for April 13, 2021), not a string (such as “2021-04-13”), and the expression from the verifier must also use a date represented in the same way.*

### Selective Disclosure

A key capability of some verifiable credential formats is support for **selective disclosure**, meaning it is possible to prove a subset of the claims issued in a verifiable credential. With selective disclosure support, an issuer can put all of the claims that might be needed for a range of use cases, and the holder/prover and the verifier can limit the information shared for a specific presentation. In the example pictured below, a holder with a “driver’s license” type verifiable credential can share just their picture and that they are old enough to drink (using a ZKP predicate) to a bartender at a pub. The rest (name, address, driver’s license number, etc.) can be held back—it’s not needed by the pub. Selective disclosure is an important privacy capability with verifiable credentials!

![An Example of Selective Disclosure—Person is verified as  “old enough” to enter the bar but no other data is revealed](./images/)An_Example_of_Selective_Disclosure_Person_is_verified_as___old_enough__to_enter_the_bar_but_no_other_data_is_revealed.png

*An Example of Selective Disclosure: Person is verified as "old enough" to enter the bar but no other data is revealed*

### Revocation

Verifiable credential **revocation** is the capability for an issuer to publish that an issued verifiable credential is no longer active. This action is done unilaterally by the issuer, although they might inform the holder that the credential is revoked. While many think that revocation is the result of something "bad" done by the holder (e.g., the "revoking a driver’s license" scenario), there are many other business reasons for revoking a credential, the most common being that information in the credential is changed (e.g., change of address), and a new verifiable credential is available with updated information. Once revoked, the verifiable presentation process should make it easy for a verifier to know if a prover uses a credential that has been revoked, and hence (in most use cases), should not be accepted.

For verifiable credential formats that support ZKP capabilities, revocation is a bit more complex than one might assume. In a simple revocation approach, the issuer might include a unique ID for the credential, and to revoke it, add the ID to a published list of revoked credential IDs. The holder/prover and verifier can use the credential ID to check the registry and see if the credential has been revoked. The problem with that approach for a ZKP-enabled verifiable credential is that the credential ID is given to the verifier—a unique, correlatable identifier. That’s exactly what we want to avoid by using a ZKP verifiable credential! ZKP revocation generally uses a credential ID that is shared by the issuer to the holder, and a published revocation registry. However, the prover does not give the credential ID to the verifier. Instead, the prover generates a ZKP "proof of non-revocation" that the verifier can check using the data in the published revocation registry.

### Verifiable Credential Formats

Aries agents support one or more of a limited set of **verifiable credential formats**. At the time this course is being updated (mid-2021), verifiable credential formats are an active area of focus in the Aries community.

Any Aries agent that is built on Hyperledger Indy supports the Indy AnonCreds format. AnonCreds includes a number of verifiable credential capabilities that are outlined in this section, including support for ZKPs, ZKP predicates, selective disclosure and ZKP revocation based on CL Signature cryptography. While simple to use in Aries and functionally complete, the Indy AnonCreds data format predates the publishing of the W3C Verifiable Credential Standard, and as such, does not meet that standard.

To align with other verifiable credential communities that don’t use Indy AnonCreds, some Aries projects have implemented support for the W3C Standard Verifiable Credentials data format, which is commonly based on JSON-LD. Those implementations use a couple of types of cryptographic signatures:

- LD Signatures (JSON-LD signed with an Ed25519 key), or
- BBS+ Signatures.

With LD Signatures, a verifiable presentation includes the entire verifiable credential, lacking selective disclosure and any form of ZKP. Using BBS+ Signatures, a verifiable presentation supports selective disclosure. BBS+ Signatures can be implemented to support basic ZKPs—e.g., not exposing a unique identifier for a prover as part of a verifiable presentation. However, the BBS+ ZKP capability is not part of the mid-2021 Aries implementations (although it’s being worked on). Further, there is not yet a ZKP revocation capability for BBS+ SIgnatures, and ZKP predicates, while theoretically possible with BBS+ Signatures, are unlikely to be supported.

When looking at different Aries agents, verifiable credential format support is a differentiating factor. Want all the privacy-preserving features available today? Indy AnonCreds is the way to go. Want W3C Standard Verifiable Credentials? JSON-LD credentials and signatures are your best bet, ideally using BBS+ so you get selective disclosure. It’s an either/or right now (mid-2021), but we expect it will become less of an issue over time, as support for one, the other or both become the norm across all Aries agents.

### Secure Storage

Every Aries agent includes some kind of **secure storage** to hold its secrets. Most important of those secrets are the private keys that the agent creates and uses to sign data and decrypt messages from other agents. The creation and use of private keys is generally handled within a **key management service (KMS)** that is within or associated with the agent’s secure storage. The KMS makes sure that the keys are used appropriately, and are not ever available to the Aries application code. Ideally, the KMS is a hardware component or a software secure enclave. For an Aries developer (like you!) that is good news as it means that you don’t have to write any software that accesses those important secrets.

Along with the Aries agent created keys, the secure storage holds other data that you don’t want others to access but need as an operational agent, such as connections with other agents (peer DIDs and connection metadata), verifiable credentials issued to you, cached ledger objects, and the state of protocols that are currently "in flight" (e.g., while you are being issued a credential). All of the data in Aries secure storage is encrypted, with the decryption keys carefully managed. While this is absolutely necessary for the security of Aries, at some point when you are debugging your Aries application, you will likely become annoyed that all secure storage is encrypted, inaccessible even in a developer sandbox.

Most Aries implementations provide a way for "other data" to be stored in the Aries agent secure storage, but we usually discourage such use of Aries’ persistence. Our recommendation is that any business data not needed for the operation of the agent itself be stored in a separate "business" database. We’ll talk more about this when we talk about Aries controllers, starting in Chapter 4.

### Agent

Hyperledger Aries uses the term **agent** to mean the software that interacts with other entities (via DIDs and more). For example, a person might have a mobile agent wallet application on their smart device, while an organization might have an enterprise agent running on a server, perhaps in the cloud. All agents (with rare exceptions) have secure storage for securing identity-related data including DIDs, keys and verifiable credentials. As well, all agents are controlled to some degree by their owner, sometimes with direct control (and comparable high trust) and sometimes with minimal control, and far less trust. We’re going to be talking a lot about agents in this course. As an Aries developer, you’ll spend most of your time building agents for specific use cases.

### Summary

This chapter has largely been a review of the concepts introduced in the previous course. Its purpose is to provide context for why you want to become an Aries developer and recaps some of the terminology and concepts behind decentralized identity solutions that were discussed in the prerequisite course: ["Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries and Ursa" (LFS172x)](https://www.edx.org/course/identity-in-hyperledger-aries-indy-and-ursa).

## Chapter 2: Exploring Aries and Aries Agents, Incomplete section

### Introduction

As you learned in the prerequisite course (["Introduction to Hyperledger Sovereign Identity Blockchain Solutions: Indy, Aries and Ursa" (LFS172x)](https://www.edx.org/course/identity-in-hyperledger-aries-indy-and-ursa))—which you took, right?—Hyperledger Aries provides a shared, reusable, interoperable tool kit designed for initiatives and solutions focused on creating, transmitting and storing verifiable digital credentials. It provides the infrastructure for distributed ledger-rooted, peer-to-peer interactions as the basis for applications using verifiable credentials. Aries agents are software components that act on behalf of entities—people, organizations and things. Aries agents enable decentralized, self-sovereign identity based on a secure, peer-to-peer communications channel.

![Hyperledger Aries logo](./images/Hyperledger_Aries_logo.png)

*Hyperledger Aries logo*

In this chapter, we’ll try to convert all the buzzwords in the previous paragraph into practical knowledge about Aries that you can use to develop your own applications. We’ll look at the architecture of an Aries agent through some hands-on labs. Specifically, we look at what parts of an agent come from Aries, and what parts you, an Aries developer-to-be, are going to have to build. We will also look at the interfaces that exist to allow Aries agents to talk to one another and to distributed ledgers such as instances of Hyperledger Indy.

### Learning Objectives

By the end of this chapter you should:

- Be familiar with the Aries ecosystem consisting of wallet agents for people and organizations, server-based agents for enterprises and agents for IoT devices.
- Know the concepts behind issuing, holding/proving and verifying agents.
- Understand the internal components of an Aries agent.
- Know what Aries interoperability means and how it is achieved.

### Examples of Aries Agents

Let’s first look at a couple of examples to remind us what Aries agents can do. We’ll also use this as a chance to introduce some characters that the Aries community has adopted for many Aries proof-of-concept implementations. You first met these characters in the LFS172x course.

![LFS173X_CourseGraphics-06.png](./images/LFS173X_CourseGraphics-06.png)

*Alice's Agent*

Alice is a person who has a mobile wallet that uses Aries protocols running on her smartphone. She uses it to receive credentials from various entities, and uses those credentials to prove things about herself online.
Alice’s smartphone wallet application connects with a specialized Aries agent that does nothing except routes messages to her. It too is Alice’s agent (called a **mediator agent**, as we’ll see), but it’s one that is (most likely) run by a vendor. We’ll learn more about these cloud services when we get to the Aries mobile agents chapter.
Alice is a graduate of Faber College (of Animal House fame), where the school slogan is "Knowledge is Good." (We think the slogan should really be "Zero Knowledge is Good.") Faber College has an Aries agent that issues verifiable credentials to the college’s students. It issues student ID cards as verifiable credentials to students, and digital diplomas to graduates.
 
![Faber_College.png](./images/Faber_College.png)

*Faber College*

- Faber has agents that verify presentations of claims from students when their student ID is needed around campus—joining classes, writing exams, getting food at campus eateries and so on.
- Businesses in and around Faber College have agents that verify presentations of claims from students and staff at the college to allow them to easily offer discounts to students. For example, Alice proves the claims from her "Faber College Student ID" credential to get a discount every Tuesday night when she goes to (and wins) Trivia Night at a nearby pub.
- Faber also has an Aries agent that receives, holds and proves claims from credentials about the college itself. For example, Faber’s agent might hold a credential that it is authorized to grant degrees to its graduates from the jurisdiction (perhaps the US state) in which it is registered.
- ACME is a company for whom Alice wants to work. As part of their application process, ACME’s Aries agent requests proof of Alice’s educational qualifications. Alice’s Aries agent can provide proof using the credential issued by Faber to Alice.
- Since Alice is the first Faber College student to ever apply to ACME, ACME doesn’t know if they can trust Faber. An ACME agent might connect to Faber’s agent (using the DID in the verifiable credential that Alice presented) to get a proof from Faber that it is a credentialed academic institution.

### Lab: Issuing, Holding, Proving and Verifying

In this first lab, we’ll walk through the interactions of three Aries agents:

- A mobile agent to hold a credential and prove claims from that credential.
- An issuing agent.
- A verifying agent.

The instructions for running the lab can be found on [GitHub](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS173xV2/IssuingHoldingProving.md).

### An Aries Ecosystem

All of the examples of Aries agents in the previous section can be built and operated independently by different organizations because of the common protocols upon which Aries agents communicate, as pictured below.

- Some of the Aries agents are run by large enterprises (such as Faber College) that have a publicly accessible endpoint to which other agents can initiate connections.
- Other agents are owned by small businesses (such as the pub where Alice goes for Trivia Night) that might not be sufficiently IT-savvy to run their own agents. They might use an Agency-as-a-Service offered by a vendor that allows them to easily configure their agent to, for example, verify certain types of credentials.
- Mobile wallet applications, such as the one you used in the first lab, run on smartphones.
- Since mobile applications cannot have their own physical endpoint, it is not possible for an enterprise agent (such as Faber’s agent) to send a message directly to a mobile wallet. Rather, each mobile wallet must have routing agents that give other agents a physical endpoint to which they can send messages destined for the wallet. We’ll cover this in detail in the course chapter on mobile wallets and routing.

An Aries ecosystem consists of both the Aries agents that message one another to exchange verifiable credentials and an understanding of the verifiable credential types that are being issued, held, proven and verified. The off-campus store that is providing discounts to students because they have a student ID verifiable credential must know that Faber College is issuing the credential and the meaning of the various data elements ("claims") in the credential. To put that into Trust over IP (ToIP) terms, all the participants have to know both the technical and governance elements of the ecosystem—the ToIP Dual Stack.

The agents in an Aries ecosystem share many attributes:

- They all have secure storage for keys.
- They all have some secure storage for other data related to their role as an agent.
- Each interacts with other agents using secure, peer-to-peer messaging protocols.
- Most connect with ledger(s) to write (issuers) and read (holders, provers and verifiers) decentralized identifiers (DIDs) and verifiable credential metadata.
- Most process (issue, hold, prove and verify) verifiable credentials (although routing agents may not).
- They all have an associated mechanism to provide "business rules" to control the behavior of the agent:
  - Often a person (via a user interface) for phone, tablet, laptop, etc.-based wallet agents.
  - Often a backend enterprise system for enterprise agents. The backend system may have request handling workflows that include people.
  - For routing agents the "rules" are usually limited to the forwarding of messages to other agents. Such routing agents are usually fully automated.

While there can be many agent variations, the most common ones are:

Agents for people.
Agents for organizations.
Agents for routing messages to and from agents for people and organizations.
 
![LFS173X_CourseGraphics-18.png](./images/LFS173X_CourseGraphics-18.png)

*Phone, car, cloud, screen, home*

A significant emerging use case that we’ve not covered in this section are agents embedded within or associated with IoT devices. In the common IoT case, IoT device agents are just variants of other agents, connected to the rest of the ecosystem through a server-based agent. All the same principles apply. For example, IoT devices might include a sensor to measure something (such as greenhouse gas emissions at a factory) and emitting the data by issuing verifiable credentials, ensuring that the data cannot be tampered with after generation. This provides a foundation of trust about the captured data—if the device itself can be trusted. Such trust might be accomplished by third-party auditors or government regulators certifying the operation of the device, and hence the validity of the issued verifiable credentials.

### Ledgers and Verifiable Credential Formats in an Aries Ecosystem

The vast majority of Aries agents connect with a distributed ledger (and sometimes several) to read and write the data necessary to share verifiable credentials and presentations. In the diagram below, the issuer, holder and verifier use the **verifiable data registry** (as defined in the W3C Verifiable Credential standard), which is often implemented as a distributed ledger as the basis for issuing and presenting verifiable data. Early Aries agents used both Hyperledger Indy ledgers (such as the Sovrin MainNet) and the Indy verifiable credential format, called Anonymous Credentials (AnonCreds). As of the updating of this course (mid 2021), a significant shift has begun to building Aries agents that can use other types of verifiable credentials, specifically those based on the W3C Verifiable Credential standard, as well as use data from other ledgers. Interestingly, the architecture and operation of an Aries agent is the same regardless of the verifiable credential format or the ledger used. As such, in this course, we will mostly use the more mature Aries+Indy combination in the labs as we establish the foundational concepts. However, we’ll also highlight the differences in using other verifiable credential formats and point out where other ledgers can be used. There is also a lab or two where you can get hands-on with some non-Indy-based use cases.

![The Verifiable Credential Trust Triangle](./images/LFS173X_CourseGraphics-29.png)

*The Verifiable Credential Trust Triangle*

### Aries Agent Architecture: The Logical Components of an Aries Agent

All Aries agent deployments have two logical components: a framework and a controller.

![The Logical Components of an Aries Agent](./images/LFS173X_CourseGraphics-08.png)

*The Logical Components of an Aries Agent*

The framework contains the standard capabilities that enable an Aries agent to interact with its surroundings—ledgers, storage, verifiable credentials, presentations and other agents. As an Aries application developer, a framework is an artifact of Aries that you don’t have to create or maintain, you just embed it in your solution. An Aries framework knows how to initiate connections, respond to requests, send messages, manage secure storage and more. However, a framework needs to be told when to initiate a connection or to send a request. It doesn’t know what response should be sent to a given request. A deployed framework just sits there until it’s told what to do.

The controller is the component that, well, controls the behaviour of an instance of an Aries framework—the business rules for that particular agent instance. The controller is the part of a deployment that you, an Aries developer, build to create an Aries agent that handles your use case. For example:

- In a mobile application, the controller is the user interface and how the person interacts with the user interface. As events come in, the user interface shows the person their options, and after input from the user, tells the framework how to respond to the event.
- An issuer, such as Faber College’s agent, has a controller that integrates agent capabilities (requesting proofs, verifying them, issuing credentials and so on) with enterprise systems, such as a "Student Information System" that tracks students and their grades. When Faber’s agent is interacting with Alice’s, and Alice’s requests an "I am a Faber Graduate" credential, it’s the controller that figures out if Alice has earned such a credential, and if so, what claims should be put into the credential. The controller also directs the agent to issue the credential.

### Aries Agent Architecture (ACA-Py)

The diagram below is an example of an Aries agent architecture, as exemplified by Aries Cloud Agent-Python (ACA-Py):

![Aries Agent Architecture (ACA-Py)](./images/LFS173X_CourseGraphics-01.png)

*Aries Agent Architecture (ACA-Py)*

The framework provides all of the core Aries functionality such as interacting with other agents and the ledger, managing secure storage, sending event notifications to, and receiving instructions from the controller. The controller executes the business logic that defines how that particular agent instance behaves—how it responds to the events it receives, and when to initiate events. The controller might be a web or native user interface for a person or it might be coded business rules driven by an enterprise system.

Between the two is a pair of interfaces:

- When the framework receives a message (an event) from the outside world, it sends a webhook (a notification) about the event to the controller so the controller can decide what to do.
- In turn, the controller sends a request to the framework to tell the framework how to respond to the event.
  - The same controller-to-framework request interface is used when the controller wants the framework to initiate an action, such as sending a message to another agent.

What that means for an Aries developer is that the framework you use is a complete dependency that you include in your application. You don’t have to build it yourself. It is the controller that gives your agent its unique personality. Thus, the vast majority of Aries developers focus only on building controllers, while paying little attention to the internals of the Aries framework they are using.

Further easing the learning curve for controller development is that its event driven processing is almost identical to web development. The controller sits waiting for an event. When received, the event type is determined, it is dispatched for processing, and back into the event loop we go.

Of course, since Aries frameworks are both evolving and open source, if your agent needs a feature that is not in the framework you are using, you are welcome to do some Aries framework development and contribute the feature to Hyperledger. We’d really like it if you did!

### Agent Terminology Confusion

In many places in the Aries community, the "agent framework" term we are using here is shortened to "agent." That creates some confusion as you can say "an Aries agent consists of an agent and a controller." Ugh… Throughout the course we have tried to make it clear when we are talking about the whole agent versus just the framework. Often we will use the name of a specific framework (e.g., Aries Cloud Agent Python or ACA-Py) to make it clear the context of the term. However, as a developer, you should be aware that in the community, the term "agent" is sometimes used just for the agent framework component and sometimes for the combined framework+controller. Naming is hard...

### Aries Agent Internals and Protocols

In this section, we’ll cover, at a high level, the internals of Aries agents and how Aries agent messaging protocols are handled.

The most basic function of an Aries agent is to enable (on behalf of its controlling entity) secure, encrypted messaging with other agents. Here’s an overview of how that happens:

- Faber and Alice have running agents.
- Somehow (we’ll get to that) Faber’s agent discovers Alice’s agent and sends it an invitation (yes, we’ll get to that too!) to connect.
  - The invitation is in plaintext (often presented as a QR code) and includes information on how a message can be encrypted and securely sent by Alice’s agent to Faber’s.
- Alice’s agent (after conferring with Alice—"Do you want to do this?") creates a private DID for the relationship and embeds it in a "request to connect" message it sends to Faber’s agent.
  - This message is not plaintext. It uses information from the invitation to securely send the encrypted message back to Faber’s agent.
- Faber’s agent associates the message from Alice’s agent with the invitation that was sent to Alice and confers with Faber’s backend system about what to do with the request.
- Assuming Faber agrees, its agent stores Alice’s connection information, creates a private DID for the relationship, and sends an encrypted response message to Alice’s agent.
  - Whoohoo! The agents are connected.
- Using its agent, Faber can now send a message to Alice (via their agents, of course) and vice versa. The messages use the newly established encrypted communication channel and so are both private and secure.

### Lab: Agents Connecting

Let’s run through a live code example of two Aries agents using a protocol to connect and send messages to one another.

Follow this [link](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS173xV2/agentsConnecting.md) to try it yourself and explore the code in the example.

### Aries RFCs, Interoperability and Aries Interop Profiles

While we’ll be digging into Aries protocols a lot more in this course (especially in Chapters 4 and 5), we want to cover something right up front that is crucial in any software component built to run protocols: interoperability. A core part of Aries are the protocols that have been defined to exchange messages between agents to accomplish shared goals, such as issuing a verifiable credential and presenting a proof. Inherent in the use of protocols is that they evolve over time as implementations are completed ("wait, we missed this piece of data!"), as new use cases come up ("if we add this to the protocol, we can do these other use cases"), and as the need for new protocols are discovered. In Aries, the ["Aries RFCs"](https://github.com/hyperledger/aries-rfcs) GitHub repository contains the full set of community-created protocols that enable software components to be Aries agents, and PRs are constantly being submitted, reviewed and merged (or rejected). Aries protocols are ever changing. How can a developer build something that is interoperable with things being built by others in the face of all this change?

The challenge of independently building components based on shared, changing protocols is enabling interoperability. How can we get all of the teams of developers using a common set of protocols? What version of the protocols should they be using? Are all the teams interpreting the protocols in the same way? This is a common problem in many technical communities building products based on protocols—Wi-Fi makers, Bluetooth, OAuth and more have all faced this challenge.

The Hyperledger Aries project encountered this challenge after the first few Aries agents were successfully demonstrated at a hackathon in Provo, Utah in early 2020. Leading up to, and at the hackathon, the teams building Aries implementations regularly tested with one another and things worked pretty well—the hackathon was a success! However, once the hackathon ended, the teams went back to focusing on their own use cases, their own deployments, and cross implementation testing and communication fell away. New teams joined the community and built their own implementations without the benefit of the hackathon interop focus. And with a lack of focus on interoperability came frustration… one could never be certain that the agents that worked together yesterday would still be working together tomorrow.

The solution for the Aries community was the definition of Aries Interop Profiles (AIPs). The concept of Aries Interop Profiles is formally defined in [Aries RFC 302](https://github.com/hyperledger/aries-rfcs/tree/main/concepts/0302-aries-interop-profile). Here is a quick summary of the key points:

- Each AIP has a version number, starting with 1.0.
  - AIP versions are much like the various published Wi-Fi standards (e.g., 802.11a, 802.11b/g/n and 802.11ac and so on).
- Each AIP has a mission, goals that Aries implementations will be able to accomplish if they are compliant with the AIP version.
- Each AIP defines a set of Aries RFCs that all compliant implementations will support.
- For each included RFC, a link in the AIP goes to a specific version (a literal GitHub commit) of the RFC.
- An RFC-driven suite of tests enables demonstrating interoperability across Aries implementations.

The Aries community defined AIP 1.0 in February 2020, selecting 19 RFCs, and (per the AIP process) selecting a specific version of each of those RFCs. The AIP 1.0 mission was based on the de facto standard Aries agents of the time, particularly as it related to the use of establishing connections and the use of Indy AnonCreds verifiable credentials. One thing that AIP 1.0 did not include at the time it was created was an effective test suite for demonstrating either compliance or interoperability. As we’ll see in Chapter 6, such a test capability came later.

AIP 1.0 has proven to be quite successful in enabling (pretty) reliable interoperability across many Aries implementations. It has been demonstrated repeatedly that it is relatively easy to build interoperable Aries agents from scratch or based on existing frameworks.

In early 2021, an effort was begun to define AIP 2.0, with final approval occurring on May 26, 2021. AIP 2.0’s mission is much the same as AIP 1.0, but extended to add support for both ledgers and verifiable credential formats other than those in Hyperledger Indy. Throughout the course, we’ll highlight places where the differences between AIP 1.0 and 2.0 are most relevant. As we’ve mentioned before, the core concepts of Aries remain the same across implementations, and that’s also true with AIP 1.0 and 2.0.

### Lab: Agents Connecting, AIP 2.0-Style

Let’s do the "agents connecting" lab from earlier, but this time using AIP 2.0 protocols. Not surprisingly, you won’t find much of a difference in the user experience.

Follow this [link](https://github.com/cloudcompass/ToIPLabs/blob/master/docs/LFS173xV2/agentsConnectingAIP2.md) to try it yourself and explore the code in the example.

### Current Agent Frameworks

There are currently (mid-2021) five major Aries general purpose open source agent frameworks that are (more or less) ready to go out-of-the-box. The following provides a brief summary of the frameworks, including key features and links to their associated repos:

- [aries-cloudagent-python](https://github.com/hyperledger/aries-cloudagent-python) (ACA-Py) is suitable for all non-mobile agent applications and has production deployments. As noted in the previous section, ACA-Py and a controller run together, communicating across an HTTP interface. Your controller can be written in any language that can send and receive HTTP requests, which is pretty much any language. While initially built on top of the indy-sdk for use with Indy ledgers and verifiable credentials, in early 2021, ACA-Py maintainers added support for JSON-LD format verifiable credentials and added a multi-ledger resolver to support other ledgers. As well, in mid-2021, support was added for an Aries-based secure storage module (called [aries-askar](https://github.com/hyperledger/aries-askar)), eliminating the dependency on the "indy-wallet" part of the indy-sdk. We’ll spend a fair amount of time in this course running labs based on ACA-Py.
- [aries-framework-dotnet](https://github.com/hyperledger/aries-framework-dotnet) (AF-.NET) can be used for building mobile (via [Xamarin](https://dotnet.microsoft.com/apps/xamarin)) and server-side agents and has production deployments. Many of the current (mid-2021) Aries agents in the Google and Apple app stores are built on AF-.NET. The controller for an aries-framework-dotnet app can be written in any language that supports embedding the framework as a .NET library in the controller. The framework embeds the indy-sdk. The [Trinsic Studio](https://trinsic.id/trinsic-studio/) from [Trinsic](https://trinsic.id/) is a powerful verifiable credentials "as-a-service" platform built on AF-.NET.
- [aries-framework-go](https://github.com/hyperledger/aries-framework-go) (AF-Go) is a pure Golang Aries framework that implements a similar architecture to that of ACA-Py, exposing an HTTP interface for its companion controller. Since it is a pure Golang implementation, it does not embed or use the indy-sdk at all, and has read-only support for Indy ledgers. AF-Go supports W3C Standard Verifiable Credentials, including JSON-LD credentials, and its primary maintainers (SecureKey) have defined their own W3C standard DID method for publishing DIDs called [did:orb](https://github.com/trustbloc/orb). AF-Go uses a pluggable remote secure storage mechanism that provides various options for deploying storage for Aries agents.
- [aries-framework-javascript](https://github.com/hyperledger/aries-framework-javascript) (AFJ) is a fairly new framework currently being developed primarily to support the creation of mobile applications based on a JavaScript mobile framework such as React Native. That said, AFJ is also being built to run server-side with Node-JS. The initial version of AFJ is being built to work with Hyperledger Indy ledgers and verifiable credentials, with an aggressive roadmap to add support for other ledgers and verifiable credential formats.
- [aries-vcx](https://github.com/hyperledger/aries-vcx) (AVCX) is an evolution of the VCX (Verifiable Credential eXchange) component written in Rust that was added to the indy-sdk just before the Aries project started. Since it makes more sense for a verifiable credential exchange component to be at the Aries level, VCX was extracted from Indy in early 2021 and a full Aries framework built around it. AVCX is deployed as a library with a C callable interface, meaning that it can be wrapped in and used by a wide variety of programming languages. Like AF-.NET, as of mid-2021, AVCX is focused on use cases involving Indy ledgers and AnonCreds verifiable credentials, although that is likely to change over time.

Of the five frameworks, all except AF-Go support AIP 1.0, and as of mid-2021, only ACA-Py and AF-Go support (much of) AIP 2.0. As you look into the question of what open source Aries framework you will use in your application, check on the current status and roadmap for supporting AIP 2.0.

In addition to the open source Aries frameworks, there are a number of other ways to take advantage of Aries capabilities:

- As of mid-2021, there are two significant Hyperledger Aries mobile wallet applications that we’ll talk about later in the course (wait for it!).
- In addition to the sub-projects within Aries, there are also a number of private companies that have built their own Aries components. For example, the company that started working on the software that became Hyperledger Indy, [Evernym](https://www.evernym.com/), has its own closed source Aries Verity server platform and Connect.Me mobile application SDK.
- A number of companies, such as [Trinsic](https://trinsic.id/), [esatus](https://esatus.com/?lang=en) and [idRamp](https://idramp.com/), have built platforms on top of Aries that in turn allow organizations to deploy verifiable credential-based solutions with minimal internal effort.
- Open source applications built on Aries are starting to appear. The Aries "Business Partner Agent" (BPA) Hyperledger Labs project, started by Bosch, is a great example. BPA is an Aries agent that holds, issues and verifies organizational credentials, allowing businesses to share verifiable data amongst partner organizations, such as in a supply chain.
- As well, there are countless applications that have been deployed on top of the Hyperledger Aries open source platforms.

There’s a lot going on in Aries!

### So Many Choices...

With all that is going on in and around Hyperledger Aries, how do you decide what to use for your project? Well, you are certainly in the right place to figure that out! In this course, we’re covering the core concepts of Aries, things that are consistent across all the frameworks. With that knowledge, combined with your ideas about what you are trying to achieve for your use case, you’ll be ready to decide what is the best platform to build upon. You might decide to go with a commercial approach that does a lot of the heavy lifting for you, leaving you with (mostly) configuration work to support the issuing, holding/proving and/or verifications that your app needs to do. Alternatively, you might deploy your own solution, built on top of the Aries open source framework that fits your organization and the ecosystem in which you want to participate.

Whatever your use case, you’ll have the knowledge you need at the end of this course to make the right call.

### Summary

This chapter focused on the Aries ecosystem (the way Aries is used in the real world), the Aries agent architecture (the components that make up an Aries agent), and how an Aries agent functions. We looked at examples of Aries agents, namely Alice and Faber College, and you stepped through a demo to verify, hold and issue verifiable credentials. We mentioned, but didn’t spend a lot of time on routing agents (mediators and relays). We’ll cover them in more detail later in the course. Next, we described the Aries agent architecture, discussing an agent framework, its controller and how the two work together.

We next looked at the core of Aries, the protocols, and how Aries Interop Profiles are used to provide certainty for developers looking to build Aries agents that will interoperate with Aries agents built by others. We surveyed the current landscape of Aries frameworks (open and closed source), showing the range of approaches that are available to Aries developers. There are lots of options!

The main takeaway from this chapter is that as a developer, you will most likely be building your own controller, which will give your agent the business rules it needs to follow depending on your agent implementation. This is true regardless of the Aries framework upon which you plan to build your controller.

You might have noticed in the *Agents Connecting* lab, there was no mention of a distributed ledger. That’s right, Aries agents can provide messaging capabilities without any ledger at all! Of course, since the main reason for using an Aries agent is to exchange verifiable credentials, and verifiable credential exchange requires a ledger, we’ll look at ledgers in the next section.

## Chapter 3: Running a Network for Aries Development, Incomplete section

Introduction, Incomplete1 min1 minute
Ledgers: What You Don’t Need To Know, Incomplete2 min2 minutes
Why Use a Distributed Ledger with Aries?, Incomplete3 min3 minutes
Running a Local Indy Network, Incomplete4 min4 minutes
The Indy Genesis File, Incomplete5 min5 minutes
Resolving DIDs, Incomplete5 min5 minutes
Knowledge Check, Incomplete4 activities
Knowledge Check due 28 de fev. de 2022 11:41 BRT
Summary, Incomplete1 min1 minute

## Chapter 4: Developing Aries Controllers, Incomplete section

Introduction, Incomplete1 min1 minute
Aside: The Term "Wallet", Incomplete1 min1 minute
Agent Start Up, Incomplete6 min6 minutes
How Aries Protocols Impact Controllers, Incomplete10 min10 minutes
Building Your Own Controller, Incomplete1 min1 minute
Controllers for Other Frameworks, Incomplete3 min3 minutes
Knowledge Check, Incomplete4 activities
Knowledge Check due 6 de mar. de 2022 20:25 BRT
Summary, Incomplete1 min1 minute

## Chapter 5. Digging Deeper—The Aries Protocols, Incomplete section

Introduction, Incomplete2 min2 minutes
The All-Important aries-rfcs Repository, Incomplete2 min2 minutes
Basic Concepts of DIDComm Messaging, Incomplete3 min3 minutes
The Format of Aries Protocol Messages, Incomplete6 min6 minutes
Framework Message Processing, Incomplete5 min5 minutes
Aries Interop Profile (AIP) Versions, Incomplete3 min3 minutes
Knowledge Check, Incomplete5 activities
Knowledge Check due 13 de mar. de 2022 05:09 BRT
Summary, Incomplete2 min2 minutes

## Chapter 6. Aries Interoperability, Incomplete section

Introduction, Incomplete1 min1 minute
Interoperability Testing, Incomplete8 min8 minutes
The Aries Toolbox, Incomplete3 min3 minutes
Knowledge Check, Incomplete4 activities
Knowledge Check due 19 de mar. de 2022 13:52 BRT
Summary, Incomplete1 min1 minute

## Chapter 7: Mobile Wallets and Message Routing, Incomplete section

Introduction, Incomplete1 min1 minute
Agent Message Routing, Incomplete8 min8 minutes
Mobile Agents and Mobile Agent Mediators, Incomplete5 min5 minutes
Establishing a Connection with Routing, Incomplete10 min10 minutes
Open Source Mobile Wallets, Incomplete6 min6 minutes
Knowledge Check, Incomplete4 activities
Knowledge Check due 25 de mar. de 2022 22:36 BRT
Summary, Incomplete1 min1 minute

## Chapter 8: Planning for Production, Incomplete section

Introduction, Incomplete1 min1 minute
Production Challenges—Mobile Wallet Apps, Incomplete5 min5 minutes
Working with Production Indy Ledgers, Incomplete13 min13 minutes
Horizontally Scaling Enterprise Aries Agents, Incomplete5 min5 minutes
Multi-Tenant Aries Agency, Incomplete3 min3 minutes
Advanced Capabilities, Incomplete3 min3 minutes
Knowledge Check, Incomplete4 activities
Knowledge Check due 1 de abr. de 2022 07:19 BRT
Summary, Incomplete1 min1 minute

## Chapter 9: What to Do Next, Incomplete section

Introduction, Incomplete1 min1 minute
Where to Go From Here, Incomplete1 min1 minute
Building Decentralized Identity/Trust over IP Applications, Incomplete4 min4 minutes
Contributing to Aries Projects, Incomplete6 min6 minutes
How to Get Involved, Incomplete1 min1 minute
Knowledge Check, Incomplete4 activities
Knowledge Check due 7 de abr. de 2022 16:03 BRT
Summary, Incomplete1 min1 minute

Course Feedback, Incomplete1 min1 minute

## Final Exam

### Before You Begin Your Final Exam

Congratulations! You have completed this course. You can now click on the I'm ready, bring on the Final Exam button below to start the final exam. 

***To pass, you must score a final grade of 70% or above on this course. Your final grade is a combination of the knowledge check questions (20%) at the end of each chapter, and the final exam (80%).***

You will have a maximum of 2 attempts to answer each question on the exam (other than true/false answers, in which case, you have only 1 attempt). It is an open book exam (meaning that you are free to reference your notes, screens from the course, etc.), and there is no time limit on how long you can spend on a question. You can always skip a question and come back to it later. 

### Congratulations!

You have completed your course. Share your success on social media or email.

## That's all folks!!!
___
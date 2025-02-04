
The **application domain** describes what are the logical (software) components involved in the [yellow button business processes](business.html#business-service-and-processes) and how they interact, collaborate or are coordinated. 

{% include bdat-a.svg %}

In this version formalized as sequence diagram where the workflow participants are higlighted.

> Please note that not all the identified participants are subject to the labeling process.


It also provides an overview of the [Primary logical application components](yb_components.html) considered in the design of the xShare reference implementation

### Participants

* the *natural person* . It is the human actor managing the process. Not in scope for the labeling process.
* The *xShare Yellow Button*. It is the component enabling the natural person to download and share the health data.
* The *authorised Data Recipient*. It is the component consuming the health data shared by the natural person.
* The *citizen's Storage*. It is the component where the health data are stored after the download. Not in scope for the labeling process

### Sequence diagrams

Herefater the sequence diagrams describing how the three identified capabilities:
* [Download](#download)
* [One-time share](#linked-option)
* [Linked option](#linked-option)

#### Download

The download functionality enables the citizen to download their health data (in the EEHRxF machine readable format and optionally also human readable format, e.g., PDF) with a click-of-a-button, from a health provider portal/app to their computer or smartphone, according to the following workflow:

{% include seq-download.svg %}


#### One-time share

The one-time share (consent) functionality enables the citizen to consent and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following workflow:


{% include seq-one-time.svg %}


#### Linked option

The linked option functionality enables the citizen to share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following workflow:

{% include seq-linked-option.svg %}

### Prove compliance
This section describes how the participant subject to labeling prove compliance with the YB.

#### Download

> TO BE SPECIFIED

#### One-time share

> TO BE SPECIFIED

#### Linked options

Not in scope for this version.

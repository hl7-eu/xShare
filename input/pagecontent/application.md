
The **application domain** describes what are the logical (software) components involved in the [yellow button business processes](business.html#business-service-and-processes) and how they interact, collaborate or are coordinated. 

<div>
<p> </p>
{% include bdat-a.svg %}
<p> </p>
</div>

In this version a sequence diagram is used to describe how - from an application perspective - the business process is realized.

An overview of the [Primary logical application components](yb_components.html) considered in the design of the xShare reference implementation is also provided.

### The Yellow Button Participants

In the sequence diagram documented in the next section the following participants are higlighted: 

* the *Natural Person* : the human actor managing the process. **Not in scope for the YB labeling process.**
* The *xShare Yellow Button* : the component enabling the natural person to download and share the health data. **In scope for the YB labeling process.**
* The *Authorised Data Recipient* : the component consuming the health data shared by the natural person. **In scope for the YB labeling process.**
* The *Citizen's Storage* : the component where the health data are stored after the download. **Not in scope for the YB labeling process.**


### Sequence diagrams

For each of the identified Yellow Button capabilities a sequence diagrams is reported:
* [Download](#download)
* [One-time share](#linked-option)
* [Linked option](#linked-option)

#### Download

The download functionality enables the citizen to download their health data (in the EEHRxF machine readable format and optionally also human readable format, e.g., PDF) with a click-of-a-button, from a health provider portal/app to their computer or smartphone, according to the following workflow:

<div>
{% include seq-download.svg %}
</div>

#### One-time share

The one-time share (consent) functionality enables the citizen to consent and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following workflow:

<div>
{% include seq-one-time.svg %}
</div>

#### Linked option

The linked option functionality enables the citizen to share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following workflow:

<div>
{% include seq-linked-option.svg %}
</div>

### Declare and Prove Your Compliance

#### Claim Your Compliance

To claim compliance with the xShare Yellow Button implementers must issue a conformance statement specifying:
* The features realized (download, one-time share, linked option)
* The roles played ( see [xShare Yellow Button Components](actors.html) )
* The options supported

#### Prove Your Compliance

#### Download

To prove compliance to the *xShare Yellow Button Download* as *xShare Yellow Button* you must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button Download feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download.
1. Show that users are enabled to receive and access health information - as listed in the [Yellow Button Information view](content.html) page - through SMART Health Links.
1. Pass validation tests for each of the declared supported content specifications (e.g., Patient Summary, Laboratory Results).

To prove compliance to the *xShare Yellow Button Download* as *xShare Yellow Button* you must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button Download feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download.
1. Show that users are enabled to receive and access health information - as listed in the [Yellow Button Information view](content.html) page - through SMART Health Links.
1. Pass validation tests for each of the declared supported content specifications (e.g., Patient Summary, Laboratory Results).

*Detailed test cases are described [here]*

#### One-time share

To prove compliance to the *xShare Yellow Button One-time* as *Authorised Data Recipient* share you must:

1. Demonstrate that only authenticated Natural Persons can act as Authorised Data Recipient.
1. Claim that user autentication is realized in conformance with the European Regulations.
1. Show that users are enabled to receive and access health information - as listed in the [Yellow Button Information view](content.html) page - through SMART Health Links.
1. Demonstrate that the retrieved health data - if belongng to one of the supported content specifications (e.g., Patient Summary, Laboratory Results) - can be properly processed (e.g displayed).

*Detailed test cases are described [here]*


#### Linked options

Not in scope for this version.

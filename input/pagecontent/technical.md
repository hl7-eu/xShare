
The **technology** domain describes the technology stack and the infrastructure required to support the xShare Yellow Button.

{% include bdat-t.svg %}

This includes:
* technical standards, specifications, and security considerations.
* tools that can be used for realizing the [Primary logical application components](yb_components.html) of the xShare reference implementation. (See [xShare Yellow Button Toolbox](yb_tools.html))


Technical standards, specifications, and security considerations are documented in this version of the guide by starting from a sequence diagram (diagram below) representing how the [application view sequence](application.html) is realized.

The diagram highlights (in yellow) the roles (i.e. the participants) that Yellow Button implementers can claim conformance to:

* The *xShare Yellow Button Provider*
* The *xShare Yellow Button Consumer*

documented in the [xShare Yellow Button Participants](#xshare-yellow-button-participants) and the messages that have to be supported, reported in the [xShare Yellow Button Messages](#xshare-yellow-button-messages) section.

In blue the messages for which technical validation is supposed to be performed.

### xShare Yellow Button realization

{% include seq-technical.svg %}


### xShare Yellow Button Participants

Yellow Button implementers can claim conformance to the yellow button by implementing one of both of these participants:

* The *xShare Yellow Button Provider*
* The *xShare Yellow Button Consumer*



{% include actors-yb.svg %}



The *xShare Yellow Button Provider*  shall be able to act as:
* xShare Yellow Button Content Creator, always
* xShare Yellow Button Link Provider, if the One-time Share option is supported


The *xShare Yellow Button Consumer*  shall be able to act as:
* xShare Yellow Button Content Consumer, always
* xShare Yellow Button Link Consumer, if the One-time Share option is supported


More details about these roles is provided in the [xShare Yellow Button participants](actors.html) page.


### xShare Yellow Button Messages


#### Natural person authentication

For this version of the guide **natural person identification, authentication and authorization is a Yellow Button pre-requisite**.

See [Yellow Button Business View](business.html) and [Yellow Button Applicaiton View](application.html).

There are not technical specifications to claim conformance with.

Yellow button adopters have however to:
* Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button features.
* Claim that user autentication is realized in conformance with the European Regulations.

#### Search and Select

For this version of the guide the **search and selection of personal health data** is an **internal activity**.

There are not technical specifications to claim conformance with.

Yellow button adopters have however to:
* Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download or share.

#### Retrieve and Format

For this version of the guide the **Retrieve and Format Natural personal health data** is an **internal activity**.

There are not technical specifications to claim conformance with.

#### Select Options

For this version of the guide the **Select Options** is an **internal activity**.

There are not technical specifications to claim conformance with.

#### Download

This version of the guide **does not specify** how **downloaded data** are stored into the Natural person's storage.

However Yellow button adopters claiming support to the Yellow Button Download option **shall act** as:
* xShare Yellow Button Content Creator.


#### Generate SHL URI

Yellow button adopters implementing *Generate SHL URI* **shall act** as 
* xShare Yellow Button Link Provider

An xShare Yellow Button Link Provider SHALL generate a SMART Health Link URI in conformance with [SMART Health Links Sharing Application Generates a SMART Health Link URI](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-sharing-application-generates-a-smart-health-link-uri)


#### Process SHL URI

Yellow button adopters implementing *Process SHL URI* **shall act** as 
* xShare Yellow Button Link Consumer

An xShare Yellow Button Link Consumer SHALL process a SMART Health Link URI in conformance with [SMART Health Links Receiving Application processes a SMART Health Link](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-receiving-application-processes-a-smart-health-link)

#### Request SHL Manifest

Yellow button adopters implementing *Request SHL Manifest* as *Consumer* **shall act** as 
* xShare Yellow Button Link Consumer
* xShare Yellow Button Link Consumer


Yellow button adopters implementing *Request SHL Manifest* as *Creator*  **shall act** as 
* xShare Yellow Button Link Provider
* xShare Yellow Button Link Provider


An xShare Yellow Button Link Consumer SHALL retrieve a SMART Health Links's manifest in conformance with
[SMART Health Link Manifest Request](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-link-manifest-request)


An xShare Yellow Button Link Provider SHALL provide a SMART Health Links's manifest in conformance with
[SMART Health Link Manifest Request](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-link-manifest-request)

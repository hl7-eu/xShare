
The **technology** domain describes the technology stack and the infrastructure required to support the xShare Yellow Button.

<div style="text-align: center">
{% include bdat-t.svg %}
</div>

This includes:
* technical standards, specifications, and security considerations.
* tools that can be used for realizing the [Primary logical application components](yb_components.html) of the xShare reference implementation. (See [xShare Yellow Button Toolbox](yb_tools.html))


Technical standards, specifications, and security considerations are documented in this version of the guide by starting from a sequence diagram (diagram below) representing how the [application view sequence](application.html) is implemented.

The diagram highlights (in yellow) the roles (i.e. the participants) that Yellow Button implementers can claim conformance to:

* The *xShare Yellow Button Provider*
* The *xShare Yellow Button Consumer*

documented in the [xShare Yellow Button Participants](actors.html) and the messages that have to be supported, reported in the [xShare Yellow Button Messages](#xshare-yellow-button-messages) section.

In blue the messages for which technical validation is supposed to be performed.

### xShare Yellow Button realization

<div>
<p></p>
{% include seq-technical.svg %}
<p></p>
</div>

### xShare Yellow Button Participants

Yellow Button implementers can claim conformance to the yellow button by implementing one of both of these participants:

* The *xShare Yellow Button Provider*
* The *xShare Yellow Button Consumer*

The *xShare Yellow Button Provider*  shall be able to act as:
* xShare Yellow Button Content Creator, always
* xShare Yellow Button Link Provider, if the One-time Share option is supported


The *xShare Yellow Button Consumer*  shall be able to act as:
* xShare Yellow Button Content Consumer, always
* xShare Yellow Button Link Consumer, if the One-time Share option is supported


More details about these roles is provided in the [xShare Yellow Button participants](actors.html) page.

<div>
<p></p>
{% include actors-yb.svg %}
<p></p>
</div>


### xShare Yellow Button Messages


#### Natural person authentication

For this version of the guide **natural person identification, authentication and authorization is a Yellow Button pre-requisite**.

See [Yellow Button Business View](business.html) and [Yellow Button Applicaiton View](application.html).

##### Conformance

There are not technical specifications to claim conformance with.

Yellow button adopters have however to:
* Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button features.
* Claim that user autentication is realized in conformance with the European Regulations.

#### Search and Select

For this version of the guide the **search and selection of personal health data** is an **internal activity**.

##### Conformance

There are not technical specifications to claim conformance with.

Yellow button adopters have however to:
* Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download or share.

#### Retrieve and Format

For this version of the guide the **Retrieve and Format Natural personal health data** is an **internal activity**.

##### Conformance

There are not technical specifications to claim conformance with.

#### Select Options

For this version of the guide the **Select Options** is an **internal activity**.

##### Conformance

There are not technical specifications to claim conformance with.

#### Download

This version of the guide **does not specify** how **downloaded data** are stored into the Natural person's storage.

##### Conformance

* Yellow button adopters claiming support to the Yellow Button Download option shall act as [xShare Yellow Button Content Creator](actors.html#xshare-yellow-button-content-creator)


#### Generate SHL URI

The xShare Yellow Button Provider generates a SMART Health Link URI.

##### Conformance

* Yellow button adopters implementing *Generate SHL URI* shall act as [xShare Yellow Button Link Provider](actors.html#xshare-yellow-button-link-provider)

* The SMART Health Link URI is generated in conformance with the [SMART Health Links Sharing Application Generates a SMART Health Link URI](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-sharing-application-generates-a-smart-health-link-uri) specifications.



#### Process SHL URI

The xShare Yellow Button Provider process a SMART Health Link URI.

##### Conformance

* Yellow button adopters implementing *Process SHL URI* shall act as [xShare Yellow Button Link Consumer](actors.html#xshare-yellow-button-link-consumer)

* The SMART Health Link URI is processed in conformance with the [SMART Health Links Receiving Application processes a SMART Health Link](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-receiving-application-processes-a-smart-health-link) specifications.


#### Request SHL Manifest

The xShare Yellow Button Link Consumer retrieves a SMART Health Links's manifest from the xShare Yellow Button Link Provider

##### Conformance


###### xShare Yellow Button Provider

* Yellow button adopters implementing *Request SHL Manifest* as *Consumer* shall act as xShare Yellow Button Link Consumer

* The SMART Health Links's manifest is retrieved in conformance with [SMART Health Link Manifest Request](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-link-manifest-request)

* The SMART Health Links's manifest shall conform with at least one of the content specifications listed in the [Yellow Button Information view](content.html) page.


###### xShare Yellow Button Consumer


* Yellow button adopters implementing *Request SHL Manifest* as *Creator*  shall act as xShare Yellow Button Link Provider

* The SMART Health Links's manifest is provided in conformance with [SMART Health Link Manifest Request](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-link-manifest-request)

* The SMART Health Links's manifest shall conform with at least one of the content specifications listed in the [Yellow Button Information view](content.html) page.
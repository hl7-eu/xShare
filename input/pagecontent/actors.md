This page describes the roles that a conformant Yellow Button implementation can realize.


### Overview

Yellow Button implementers can claim conformance to the yellow button by implementing one of both of these components:

* The *xShare Yellow Button Provider*
* The *xShare Yellow Button Consumer*

The *xShare Yellow Button Provider*  shall be able to act as:
* xShare Yellow Button Content Creator, always
* xShare Yellow Button Link Provider, if the One-time Share option is supported
* xShare Yellow Button Manifest Provider, if the One-time Share option is supported

The *xShare Yellow Button Consumer*  shall be able to act as:
* xShare Yellow Button Content Consumer, always
* xShare Yellow Button Link Consumer, if the One-time Share option is supported
* xShare Yellow Button Manifest Consumer, if the One-time Share option is supported

Hereafter a grafical representation of the described roles for the:
* [General case](#yellow-button) (Yellow button)
* [Download](#download)
* [One-time Share](#one-time-share)

#### Yellow Button

<div>
<p></p>
{% include actors-yb.svg %}
<p></p>
</div>

#### Download

<div>
<p></p>
{% include actors-down.svg %}
<p></p>
</div>

#### One-time Share

<div>
{% include actors-shl.svg %}
<p></p>
</div>

### xShare Yellow Button Content Creator

A Yellow Button implementation realizing the *xShare Yellow Button Provider* SHALL always act as xShare Yellow Button Content Creator.

#### Conformance

*xShare Yellow Button Content Creator* shall be able to provide health data conformant with at least one of the content specifications listed in the [Yellow Button Information view](content.html) page.


### xShare Yellow Button Content Consumer

A Yellow Button implementation realizing the *xShare Yellow Button Consumer* SHALL always act as xShare Yellow Button Content Consumer.

#### Conformance

*xShare Yellow Button Content Consumer* shall be able to consume health data conformant with at least one of the content specifications listed in the [Yellow Button Information view](content.html) page.

### xShare Yellow Button Link Provider

A Yellow Button implementation realizing the *xShare Yellow Button Provider* SHALL always act as xShare Yellow Button Link Provider, when the **One-time Share** feature is supported.

The *xShare Yellow Button Link Provider* is a software that enables users to receive and access health information - as listed in the [Yellow Button Information view](content.html) page - shared through SMART Health Links.

This role specializes the [SMART Health Links Sharing Application](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#actors) actor.

#### Conformance

*xShare Yellow Button Link Provider* shall: 
 * be grouped with the *xShare Yellow Button Content Creator*
 * conform with the [SMART Health Links Sharing Application](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#actors) actor.


### xShare Yellow Button Link Consumer

A Yellow Button implementation realizing the *xShare Yellow Button Consumer* SHALL always act as xShare Yellow Button Link Consumer, when the **One-time Share** feature is supported.

The *xShare Yellow Button Link Consumer* is a software tSoftware that enables users to receive and access health information - as listed in the [Yellow Button Information view](content.html) page - shared through SMART Health Links.

This role specializes the [SMART Health Links Receiving Application](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#actors) actor.

#### Conformance

*xShare Yellow Button Link Provider* shall: 
 * be grouped with the *xShare Yellow Button Content Consumer*
 * conform with the [SMART Health Links Receiving Application](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#actors) actor.
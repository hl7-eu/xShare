
The **business domain** describes the goals, business processes and rules of the xShare Yellow Button.

This also includes how to **products can be labeled**.

{% include bdat-b.svg %}

### Goal

xShare envisions everyone **sharing their health data in European Electronic Health Record Exchange Format (EEHRxF) with a click-of-a-button** – the xShare or yellow button- to be featured across health portals and patient apps, allowing people to exercise their data portability rights under GDPR.

More contextual information about the Yellow Button can be found [here](https://xshare-project.eu/the-xshare-button/)

### What is it

The yellow button enables natural persons to share their health data in European Electronic Health Record Exchange Format (EEHRxF) by offering three main capabilities:
* [download](#download) your health data
* share health data by using a [one-time link](#one-time-share)
* share health data by using a [link valid for a period of time](#linked-options)


{% include yb-business-srv.svg %}


Examples of usage of the Yellow Button are provided in the [usage scenario page](usage-scenarios.html).


**Note: a product claiming to implement the Yellow Button is not required to support all of the listed features**


### The Yellow Button features

#### Common (pre-requisites)

To use the yellow button, natural persons shall be allowed to satisfy these pre-conditions:
* The natural person has an account and health data in the health provider or third-party app.
* The natural person is authenticated in the health provider portal/app.
* The HIS of the health provider or the third-party app is able to export and import health information in EEHRxF or in a non-EEHRxF format accompanied with a clear specification or implementation guide.
* The HIS of the health provider must be able to provide a reason in case some data is not available for exporting.
* Authorised recipient can vary between an authorised person (trusted one or HCP) to a healthcare organisation. When is a trusted one without access to a health provider portal/app, the shared health data is transferred using another method.

> Notes: Authentication and security is to be handled by the infrastructures where the xShare Yellow Button is deployed.
> This version of the guide doesn't specify how the natural person is identified, authenticated and authozired, assuming that is aligned with the [xShare Yellow Button Legal Requirements](https://x-bundles.ehr-exchange-format.eu/priv-sec-legal/legal.html) and with the legal requirements of each Adoption Site and its country. 
> The xShare Yellow Button cannot oppose to the local legislation and must be adopted and ensured by each Adoption Site.


#### Download

Natural persons download their health data (in the EEHRxF machine readable format and optionally also human readable format, e.g., PDF) from a health provider portal/app to their computer or smartphone, according to the following process:

1. natural person (data owner) clicks on the xShare Yellow Button and selects the download functionality.
2. Visualises and selects from the health data available to download (e.g., all the HID, a data group, or a specific data field of a data group in a HID).
3. *(optional) Configures the xShare Yellow Button download options:*
    1. *Data transformation: anonymisation, password, translation, and digital signature.*
    2. *Data format: EEHRxF and optionally also in a human readable format.*
4. Clicks on the Download/Accept button.
5. Selects the download destination.
6. The health data is available on the chosen destination in the selected format (post-condition).

#### One-time share

Natural persons consent and share their health data (in the EEHRxF) from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following process:


1. natural person (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. natural person requests a shareable link.
5. natural person provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.

#### Linked options

Natural persons share their health data (in the EEHRxF) from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following process:

1. natural person (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. natural person requests a shareable link available for a configurable period of time.
5. natural person provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.
7. natural person notifies the Authorised Data Recipient when new health data is available
8. Authorised Data Recipient can accesses/visualises the updated natural person's health data and is able to store it.


### How to label your product

The process begins when an organisation needs to certify their health system with the EEHRxF. This step involves the initiation of a formal certification process aimed at ensuring that health systems or applications adhere to the standards and policies defined within the European Electronic Health Record Exchange Format (EEHRxF). At this stage, a decision arises, posing the question: "What is the level of certification needed?" The applicant must decide between two available paths based on the desired rigor of the certification: Level One (Self-assessment) or Level Two (Third-party assessment).

Details of this process are provided in the [xShare Button Labeling process](labeling_process.html) page.
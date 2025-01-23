### Pre-conditions
* The citizen has an account and health data in the health provider or third-party app.
* The citizen is authenticated in the health provider portal/app.
* The HIS of the health provider or the third-party app is able to export and import health information in EEHRxF or in a non-EEHRxF format accompanied with a clear specification or implementation guide.
* The HIS of the health provider must be able to provide a reason in case some data is not available for exporting.
* Authorised recipient can vary between an authorised person (trusted one or HCP) to a healthcare organisation. When is a trusted one without access to a health provider portal/app, the shared health data is transferred using another method.

> Notes: Authentication and security is to be handled by the infrastructures where the xShare Yellow Button is deployed.
> This work should be aligned with the [xShare Yellow Button Legal Requirements](https://x-bundles.ehr-exchange-format.eu/priv-sec-legal/legal.html) and with the legal requirements of each Adoption Site and its country. The xShare Yellow Button cannot oppose to the local legislation and must be adopted and ensured by each Adoption Site.

### xShare Yellow Button Basic Functionalities

#### Download

The download functionality enables the citizen to download their health data (in the EEHRxF machine readable format and optionally also human readable format, e.g., PDF) with a click-of-a-button, from a health provider portal/app to their computer or smartphone, according to the following workflow:

1. Citizen (data owner) clicks on the xShare Yellow Button and selects the download functionality.
2. Visualises and selects from the health data available to download (e.g., all the HID, a data group, or a specific data field of a data group in a HID).
3. *(optional) Configures the xShare Yellow Button download options:*
    1. *Data transformation: anonymisation, password, translation, and digital signature.*
    2. *Data format: EEHRxF and optionally also in a human readable format.*
4. Clicks on the Download/Accept button.
5. Selects the download destination.
6. The health data is available on the chosen destination in the selected format (post-condition).

The following figure shows the sequence diagram of the Download functionality.

{% include seq-download.svg %}

#### One-time share

The one-time share (consent) functionality enables the citizen to consent and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following workflow:

1. Citizen (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. Citizen requests a shareable link.
5. Citizen provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.

The following figure shows the sequence diagram of the One-time share functionality.


{% include seq-one-time.svg %}


#### Linked options

The linked options functionality enables the citizen to share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following workflow:

1. Citizen (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. Citizen requests a shareable link available for a configurable period of time.
5. Citizen provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.
7. Citizen notifies the Authorised Data Recipient when new health data is available
8. Authorised Data Recipient can accesses/visualises the updated Citizen's health data and is able to store it.

The following figure shows the sequence diagram of the Linked options functionality.

{% include seq-linked-option.svg %}



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

1. Natural Person (data owner) clicks on the xShare Yellow Button and selects the download functionality.
2. Visualises and selects from the health data available to download (e.g., all the HID, a data group, or a specific data field of a data group in a HID).
3. *(optional) Configures the xShare Yellow Button download options:*
    1. *Data transformation: anonymisation, password, translation, and digital signature.*
    2. *Data format: EEHRxF and optionally also in a human readable format.*
4. Clicks on the Download/Accept button.
5. Selects the download destination.
6. The health data is available on the chosen destination in the selected format (post-condition).

The following figure shows the sequence diagram of the Download functionality.

<div style="text-align: center"> <img src="./download_diagram.png" alt="xShare Yellow Button Download" title="xShare Yellow Button Download sequence diagram." style="width:70%"/> </div>

#### One-time share

The one-time share (consent) functionality enables the citizen to consent and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following workflow:

1. Natural Person (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. Natural Person requests a shareable link.
5. Natural Person provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.

The following figure shows the sequence diagram of the One-time share functionality.

<div style="text-align: center"> <img src="./ontetime_diagram.png" alt="xShare Yellow Button One-time share" title="xShare Yellow Button One-time share sequence diagram." style="width:70%"/> </div>

#### Linked options

The linked options functionality enables the citizen to share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following workflow:

1. Natural Person (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. Natural Person requests a shareable link available for a configurable period of time.
5. Natural Person provides the shareable link to the Authorised Data Recipient.
6. Authorised Data Recipient accesses/visualises the shared health data and is able to store it.
7. Natural Person notifies the Authorised Data Recipient when new health data is available
8. Authorised Data Recipient can accesses/visualises the updated Natural Person's health data and is able to store it.

The following figure shows the sequence diagram of the Linked options functionality.

<div style="text-align: center"> <img src="./linked_diagram.png" alt="xShare Yellow Button Linked options" title="xShare Yellow Button Linked options sequence diagram." style="width:70%"/> </div>

### xShare Yellow Button Main Components

The following figure provides an overview of the main components of the xShare Yellow Button.

<div style="text-align: center"> <img src="./button_components.png" alt="xShare Yellow Button main components" title="xShare Yellow Button main components." style="width:100%"/> </div>

Following is a short description of main components identified and its toolbox components:

* **Healthcare Infrastructure**: The system boundary defining the domain of the healthcare institution.
* **Authorisation Client (Web interface or APP)**: The healthcare institution's own system which is outside the xShare scope or a health and wellness app ecosystem that includes authentication mechanism.
* **Upload**: Healthcare institution or health app capability to import EEHRxF data.
* **HIE**: The institution Eletronic Health Information Exchange that allows the appropriated access to health information electronically.
* **xShare Node**: The part of the system developed within the scope of xShare and deployed in the Healthcare Infrastructure.
* **Visualisation**: Enables the visualisation and interaction with the xShare Yellow Button.
* **Authorised Data Recipient**: The authorised healthcare institution, trusted one, or app, with whom the health data is shared.

{:class="table table-bordered"}
| Component                         | Description | Existing tools |
| :-------------------------------- |:-----------|:--------------|
| **xShare Button API**             |Exposes the xShare Yellow Button functionalities to components external to the xShare system. It also exposes the interface that allows and controls the sharing of individual resources with Authorised Data Recipients.  |  |
| *Orchestrator*                    | 	Orchestrates the xShare Button API, interacting with the different components when needed. | |
| *Health Record Manager*           | Directly accesses a resource in the proposed exchange format (or in a non-EEHRxF format accompanied with a clear specification or implementation guide). | |
| **Interoperability Component**    | Provide a conversion between the healthcare record's format and the EEHRxF. |  |
| *Validator*                       | Tests if the healthcare institution health record is conformant with the EEHRxF FHIR format. |FHIR validators & EEHRxF validator |
| *EEHRxF FHIR mapping*             | Converts between the healthcare record's "native" format and the EEHRxF FHIR format. | CDA2FHIR |
| **Data Transformation**           | Provides the generally defined functionality for modifying the selected resource format. This includes (pseudo) anonymisation, translation, password protection, and digital signature. |  |
| *Format Converter*                | Converts the EEHRxF to human readable format. | FHIR PDF converter |
| *(pseudo) Anonymisation*          | The operation will strip the selected data of any identifiable information. |  |
| *Translation*                     | The operation will translate the selected data to a selected language. | PATHeD & UNICOM |
| *Password Protection*             | The operation will protect the selected data with a citizen defined password. |  |
| *Digital Signature*               | The operation digital signs the selected data. |  |
| **Sharing Component**             | This component is used to manage the xShare Yellow Button sharing operations. |  |
| *Sharing Manager*                 | 	Allows the establishment and revocation of sharing rules within the system. It will also respond to queries regarding a resource sharing status. | Smart Health Links |
| *Cache*                           | Temporarily stores data related to the sharing component. |  |
| **Auditing Component**            | This component is used to record auditable events. |  |
| *Logging*                         | Records all the operations executed within the Button API. | Apache, nginx |
| *Storage*                         | 	A data storage solution to provide resilience. |MariaDB, postgresql |

*Table 1: xShare Yellow Button and its toolbox components.*

### xShare Yellow Button Toolbox

The governance of xShare tools and assets is designed to ensure that the developed artifacts are not only technically robust but also accessible for organizations interested in adopting the xShare Yellow Button. To facilitate this adoption, all artifacts, while remaining on GitHub to support development, will be linked by the x-bundle registry. The registry acts as a comprehensive catalogue of modular components specified within WP2, enhancing accessibility and guiding implementers through the adoption and integration process.

#### CDA2FHIR

The [CDA2FHIR Converter](https://github.com/srdc/cda2fhir) is a critical tool developed to address compatibility between the CDA format, currently used in the MyHealth@EU infrastructure, and the HL7 FHIR standard, which is recommended by the EEHRxF for interoperability. The CDA2FHIR Converter transforms CDA documents, such as Patient Summaries and ePrescriptions, into FHIR-compliant resources, facilitating cross-border data sharing and ensuring that health information remains accessible and usable across different systems.

>[C-CDA on FHIR v2.0.0](https://build.fhir.org/ig/HL7/ccda-on-fhir/)\
>[GitHub – HL7 Austria/CDA2FHIR: Maps to transform documents from CDA to FHIR](https://github.com/HL7Austria/CDA2FHIR) \
>[Open-source initiative to support testing and implementation of FHIR](https://www.matchbox.health/) \
>[Switzerland FHIR IG CDA-FHIR-MAPS](https://fhir.ch/ig/cda-fhir-maps/index.html) \
>[FHIR mapping language](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Mapping+Language)
 
#### Smart Health Links

[Smart Health Links](https://docs.smarthealthit.org/smart-health-links/spec/) (SHL) provide a streamlined, secure way to share personal health information through easily accessible links. These links facilitate patient-centred data exchange by allowing individuals to grant access to selected health data securely and efficiently across various healthcare systems and applications. The SHL framework is built on interoperability standards that ensure health information can be shared and accessed consistently across platforms, supporting scenarios from clinical care to personal health management.

>[SHL Introduction](https://docs.smarthealthit.org/smart-health-links/)\
>[SHL Specifications](https://docs.smarthealthit.org/smart-health-links/spec)\
>[SHL Source Code](https://github.com/jmandel/vaxx.link)

#### Git Hub

A GitHub repository ([xShare GitHub](https://github.com/xSHARE-project-eu)) have been established and maintained to support collaborative development and version control for all technical assets related to the technical assets that were developed to support xShare toolbox. These repositories serve as a central hub for code management, issue tracking, and collaborative problem-solving among the involved partners and others, as the reference code is open source and publicly available to the community. Regular updates, thorough documentation, and structured branching strategies ensure that all modifications are transparent and traceable. This collaborative environment fosters innovation and ensures that all partners can contribute effectively to developing and maintaining the project's technical components. It also supports the continuity of other projects or endeavours, thereby enhancing these technical assets to improve their functionality and impact.

#### FHIR Validator

FHIR validator is an operation in FHIR that allows you to ensure that a FHIR resource conforms to the base resource requirements or a specified profile.
The [FHIR public validators](https://confluence.hl7.org/display/FHIR/Public+FHIR+Validation+Services) are a set of validators that enable the validation of the FHIR resources using the profiles URLs.

#### EEHRxF Validator

The [HL7 Sandbox](https://sandbox.hl7europe.eu/) provides a set of tools of FHIR validator/conformance for Health Information Domains (in particular Laboratory Results and Electronic Prescriptions).

#### FHIR PDF converter

[FHIR PDF converter](https://github.com/Bahmni/fhir-pdf) enables the creation of a PDF using a FHIR resource.
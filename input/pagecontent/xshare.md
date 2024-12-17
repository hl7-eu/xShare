# xShare Yellow Button Implementation Guide

<!---

###Acronyms

* HCP - Healthcare Provider
* HID - Health Information Domain
* HIE - Health Information Exchange
* HIS - Hospital Information System
* PDF - Portable Document Format

-->

## Pre-conditions:
* The citizen has an account and health data in the health provider or third-party app.
* The citizen is authenticated in the health provider portal/app.
* The HIS of the health provider or the third-party app is able to export and import health information in EEHRxF or in a non-EEHRxF format accompanied with a clear specification or implementation guide.
* The HIS of the health provider must be able to provide a reason in case some data is not available for exporting.
* Authorised recipient can vary between an authorised person (trusted one or HCP) to a healthcare organisation. When is a trusted one without access to a health provider portal/app, the shared health data is transferred using another method.

> Notes: Authentication and security  is to be handled by the infrastructures where the xShare Yellow Button is deployed.\
This work should be aligned with the [xShare Yellow Button Legal Requirements](https://x-bundles.ehr-exchange-format.eu/priv-sec-legal/legal.html) and with the legal requirements of each Adoption Site and its country. The xShare Yellow Button cannot oppose to the local legislation and must be adopted and ensured by each Adoption Site.

## Download

The download functionality enables the citizen to download their health data (in the EEHRxF machine readable format and optionally also human readable format, e.g., PDF) with a click-of-a-button, from a health provider portal/app to their computer or smartphone, according to the following workflow:

1. Citizen (data owner) clicks on the xShare Yellow Button and selects the download functionality.
2. Visualises and selects from the health data available to download (e.g., all the HID, a data group, or a specific data field of a data group in a HID).
3. *(optional) Configures the xShare Yellow Button download options:*
    1. *Data transformation: anonymisation, password, translation, and digital signature.*
    2. *Data format: EEHRxF and optionally also in a human readable format.*
4. Clicks on the Download/Accept button.
5. Selects the download destination.
6. The health data is available on the chosen destination in the selected format (post-condition).

> Sequence diagrams

## One-time share

The one-time share (consent) functionality enables the citizen to consent and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, or a third-party health app), according to the following workflow:

1. Citizen (data owner) clicks on the xShare Yellow Button and selects the one-time share functionality.
2. Visualises and selects the health data available to share and creates a static document.
3. *(optional) Configures the xShare Yellow Button share options:*
    1. *Data transformation: anonymisation, translation, and digital signature.*
    2. *Data format: EEHRxF and the original data in human readable format.*
4. Selects the authorised data recipient: specific healthcare organisation, trusted one, or an xShare labelled app (using the qualified endpoint to send to shared data or link to them).
5. Clicks on the Share/Accept button (the user of the app is informed of interoperability and its effects and provides explicit consent).
6. The health data is available for retrieval by the selected data recipient or app.

Flow according to the authorised data recipient:

**Healthcare organisation:**
1. *(optional) The authorised recipient is notified regarding the data availability from a specific citizen.*
2. Authorised recipient (document recipient) authenticates in the organisation portal (authorisation client).
3. Document recipient requests and accesses/visualises the data and is able to store in the organisation health system.

**Trusted one:**
1. Authorised recipient (document recipient) accesses a link/portal (authorisation client) and authenticates itself (e.g., MyHealth@EU, eIDAS).
2. Document recipient accesses/visualises the data with option to save locally.

**Health and Wellness App:**
1. *(optional) The authorised recipient is notified regarding the data availability from a specific citizen.*
2. Authorised recipient (document recipient) authenticates itself the app (authorisation client).
3. Document recipient accesses/visualises the health data in the app.

The one-time share functionality follows a consent approach, where the citizen consents that their data is shared with a trusted one or an institution. This consent functionality would also allow to restrict the access to specific person (under EHDS article 8).

## Linked options

The linked options (subscription) functionality enables the citizen to authorise a subscription and share their health data (in the EEHRxF) with a click-of-a-button, from a health provider portal/app to a trusted one (e.g., healthcare provider, relative, clinical trials, research institutions) for a period of time, according to the following workflow:

Same as one-time share but when new data is available or data is updated, the data recipient can request or be notified and receive the new data or a link to the new data from the data responder.

The linked options functionality follows a subscription approach, where the citizen authorises that their data is subscribed by a trusted one until the subscription ends (or is cancelled).




# xShare Yellow Button Main Components

The following figure provides an overview of the main components of the xShare Yellow Button.

<img src="./imgpsh_fullsize_anim.png" alt="xShare Yellow Button main components" title="xShare Yellow Button main components." style="width:100%"/>

Following is a short description of main components identified:

* **Healthcare Infrastructure**: The system boundary defining the domain of the healthcare institution.
* **Healthcare System or Health and Wellness APP**: The healthcare institution's own system which is outside the xShare scope or a health and wellness app ecosystem.
* **xShare Node**: The part of the system developed within the scope of xShare and deployed in the Healthcare Infrastructure.
* **Visualisation**: Enables the visualisation and interaction with the xShare Yellow Button
* **xShare Button API**: The components that expose the xShare Yellow Button functionalities to components external to the xShare system. It also exposes the interface that allows and controls the sharing of individual resources with Authorised Data Recipients.
* **Health Record Manager**: Directly accesses a resource in the proposed exchange format (or in a non-EEHRxF format accompanied with a clear specification or implementation guide).
* **Authorised Data Recipient**: The authorised healthcare institution, trusted one, or app, with whom the health data is shared.
* **Data Transformation**: Provides the generally defined functionality for modifying the selected resource format. 
    * **Format Converter**: Converts the EEHRxF to human readable format.
    * **(pseudo) Anonymisation**: The operation will strip the selected data of any identifiable information.
    * **Translation**: The operation will translate the selected data to a selected language.
    * **Password Protection**: The operation will protect the selected data with a citizen defined password.
    * **Digital Signature**: The operation digital signs the selected data.
* **Interoperability Component**: Provide a conversion between the healthcare record's format and the EEHRxF.
    * **Validator**: Tests if the healthcare institution health record is conformant with the EEHRxF FHIR format.
    * **EEHRxF FHIR Mapping**: Converts between the healthcare record's "native" format and the EEHRxF FHIR format.
* **Auditing Component**: This component is used to record auditable events.
    * **Sharing Manager**: Allows the establishment and revocation of sharing rules within the system. It will also respond to queries regarding a resource sharing status.
    * **Logging**: Records all the operations executed within the Button API.
    * **Storage**: A data storage solution to provide resilience.
* **HIE Connectors**: This component is used to access the citizen's health data through different connectors, namely MyHealth@EU, EUDI Wallet, and custom connectors.

# Toolbox
The governance of xShare tools and assets is designed to ensure that the developed artifacts are not only technically robust but also accessible for organizations interested in adopting the xShare Yellow Button. To facilitate this adoption, all artifacts, while remaining on GitHub to support development, will be linked by the x-bundle registry. The registry acts as a comprehensive catalogue of modular components specified within WP2, enhancing accessibility and guiding implementers through the adoption and integration process. 

## CDA2FHIR

The [CDA2FHIR Converter](https://github.com/srdc/cda2fhir) is a critical tool developed to address compatibility between the CDA format, currently used in the MyHealth@EU infrastructure, and the HL7 FHIR standard, which is recommended by the EEHRxF for interoperability. The CDA2FHIR Converter transforms CDA documents, such as Patient Summaries and ePrescriptions, into FHIR-compliant resources, facilitating cross-border data sharing and ensuring that health information remains accessible and usable across different systems. 

>https://build.fhir.org/ig/HL7/ccda-on-fhir/\
>https://github.com/HL7Austria/CDA2FHIR \
>>https://www.matchbox.health/ \
>>https://fhir.ch/ig/cda-fhir-maps/index.html \
>>https://fhir.ch/ig/cda-fhir-maps/StructureMap-CdaToFhirTypes.html \
>>https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Mapping+Language
 
## Smart Health Links

[Smart Health Links](https://docs.smarthealthit.org/smart-health-links/spec/) (SHL) provide a streamlined, secure way to share personal health information through easily accessible links. These links facilitate patient-centred data exchange by allowing individuals to grant access to selected health data securely and efficiently across various healthcare systems and applications. The SHL framework is built on interoperability standards that ensure health information can be shared and accessed consistently across platforms, supporting scenarios from clinical care to personal health management. 

>*Washington State University has their reference implementation and Source Code available for the Smart Health Links.*\
>https://smart-health-links-ui.cirg.washington.edu/#/health-links \
>*Specifications*:\
>https://docs.smarthealthit.org/smart-health-links/spec \
>*Source Code*:\
>https://github.com/jmandel/vaxx.link

## Git Hub

A GitHub repository ([xShare GitHub](https://github.com/xSHARE-project-eu)) have been established and maintained to support collaborative development and version control for all technical assets related to the technical assets that were developed to support xShare toolbox. These repositories serve as a central hub for code management, issue tracking, and collaborative problem-solving among the involved partners and others, as the reference code is open source and publicly available to the community. Regular updates, thorough documentation, and structured branching strategies ensure that all modifications are transparent and traceable. This collaborative environment fosters innovation and ensures that all partners can contribute effectively to developing and maintaining the project's technical components. It also supports the continuity of other projects or endeavours, thereby enhancing these technical assets to improve their functionality and impact. 

## FHIR Validator

FHIR validator is an operation in FHIR that allows you to ensure that a FHIR resource conforms to the base resource requirements or a specified profile.
The [FHIR public validators](https://confluence.hl7.org/display/FHIR/Public+FHIR+Validation+Services) are a set of validators that enable the validation of the FHIR resources using the profiles URLs.

FHIR validator/conformance for IPS, FHIR validator/conformance for Lab Report FHIR validator/conformance for HD

## EEHRxF Validator

sandbox

https://sandbox.hl7europe.eu/

## Format converter

https://github.com/Bahmni/fhir-pdf

# Toolbox overview 

| Component                         | Description | Functionalities | Existing tools | Missing functionalities |
| :-------------------------------- |:-----------:|:---------------:|:-------------------:|:-----------------------:|
| **xShare Button API**             |Exposes the xShare Yellow Button functionalities to components external to the xShare system. It also exposes the interface that allows and controls the sharing of individual resources with Authorised Data Recipients  |  |  |  |
| *Health Record Manager*           | Directly accesses a resource in the proposed exchange format (or in a non-EEHRxF format accompanied with a clear specification or implementation guide). | Retrieve the health record from the HIE through the connectors. |  |  |
| **Interopearability Component**   | Provide a conversion between the healthcare record's format and the EEHRxF. |  |  |  |
| *Validator*                       | Tests if the healthcare institution health record is conformant with the EEHRxF FHIR format. |  | FHIR validators & EEHRxF validator | Missing HIDs format definition (ePrescription, eDispensation, imaging, new domains) |
| *EEHRxF FHIR mapping*             | Converts between the healthcare record's "native" format and the EEHRxF FHIR format. |  | C-CDA2FHIR |  |
| **Data Transformation**           | Provides the generally defined functionality for modifying the selected resource format. This includes (pseudo) anonymisation, translation, password protection, and digital signature. |  |  |  |
| *Format Converter*         | Converts the EEHRxF to human readable format. |  |  |  |
| *(pseudo) Anonymisation*          | The operation will strip the selected data of any identifiable information. |  |  |  |
| *Translation*                     | The operation will translate the selected data to a selected language. |  | PATHeD & UNICOM |  |
| *Password Protection*             | The operation will protect the selected data with a citizen defined password. |  |  |  |
| *Digital Signature*               | The operation digital signs the selected data. |  |  |  |
| **Auditing Component**            |This component is used to record auditable events.  |  |  |  |
| *Sharing Manager*                 | Allows the establishment and revocation of sharing rules within the system. It will also respond to queries regarding a resource sharing status. |  | Smart Health Link | Connection to each AS health database |
| *Logging*                         | Records all the operations executed within the Button API. |  | Apache, nginx |  |
| *Storage*                         | A data storage solution to provide resilience. |  | MariaDB, postgresql  |  |
| **HIE Connectors**                | This component is used to access the citizen's health data through different connectors. |  |  |  |
| *MyHealth@EU*                     |  |  |  |  |
| *EUDI Wallet*                     |  |  |  |  |
| *Custom API*                      |  |  |  | Connection to each AS health database. |

Table 1: xShare Yellow Button and its toolbox components.




<!---
# xShare Adoption Sites
## Concept:

* Adoption Sites are national, regional, hospital, or business settings in which xShare Yellow button will be featured.
* They demonstrate the business need and test the implementation.
* xShare Yellow Button features will be embedded in patient/citizen health portals and/or mobile applications.



## Adoption Sites:

* **Adoption Site 1**: Partner IDIKA (Greece): Electronic Governance of Social Security and Health Services (IDIKA SA) is a public owned company, supervised by the Greek Ministry of Digital Governance, specialized in IT products for Social Security, Welfare and Health Services.
* **Adoption Site 2**: Partner HSE (Ireland): The role and function of the Department of Health (DoH) is to provide strategic leadership for the health service and to ensure that Government policies for the health sector in Ireland are translated into actions and implemented effectively.
* **Adoption Site 3**: Partner NeHA (Cyprus): The National eHealth Authority (NeHA) is a legal person of public law and has been established under The Electronic Health Law of 2019 (59 (I) / 2019) issued by publication in the Official Gazette of the Republic of Cyprus in accordance with Article 52 of the Constitution, which describes the duties, powers and the authorities.
* **Adoption Site 4**: Partner FTGM (Italy): Monasterio Foundation - Fondazione Toscana Gabriele Monasterio per la Ricerca Medica e di Sanita Pubblica (FTGM) is a public research organization and healthcare provider of the Italian public health service, classified at the tertiary level (the highest) of specialization in cardiac-related disease diagnosis and treatment, including cardiac surgery, for adult and paediatric patients.
* **Adoption Site 5**: Partner TicSalut (Catalunya, Spain): Fundació TIC Salut Social (FTSS) is a public agency within the Catalan Ministry of Health, established in 2006 with the primary objective of facilitating and promoting the advancement and evolution of health and social care frameworks through innovative utilization of ICT.
* **Adoption Site 6**: Partner SRS (Madeira, Portugal): Secretaria Regional de Saúde e Proteção Civil (SRS) is the governmental health authority in the Autonomous Region of Madeira, an ultraperipheral region from the EU and the regional policy maker in the health sector and civil protection.
* **Adoption Site 7**: Partner Mediq (Denmark): MedCom is on behalf of the Ministry of Health responsible for running a project for implementing Care Plans for COPD, diabetes type 2 and heart failures in all primary care clinics (appx. 1,700) in Denmark.
<!---
MEDIQ is an independent consulting company that provides advice within medical informatics and management. Our specialist area is electronic patient records. MEDIQ has a well-established position as an impartial adviser and carries out tasks for ministries, agencies, regions, municipalities, hospitals and general practitioners in Denmark as well as abroad.
->
* **Adoption Site 8**: Partner TTSA (France): Telemedicine Technologies (TTSA) is a French company provider of e-health solution operating in more than 43 countries, involving over 20,000 research centres, with more than 3 million patients in their data base and 50,000 users worldwide.

More details on the xShare Adoption Sites are available in the xShare deliverable D3.2 at xShare [Web Site](https://xshare-project.eu/) (available soon). 

## Health Information Domains per Adoption Site

The following table presents the HIDs that each of the Adoption Site will be focused and the corresponding xShare Basic Functionality.

| HID                               | AS 1  | AS 2  | AS 3  | AS 4  | AS 5  | AS 6  | AS 7  | AS 8  |
| :-------------------------------- |:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
| Patient Summary                   | D     | D     | D O L |       | D     | D     |       | D O L |
| Electronic Prescription           | D     | D     | D O L | D     | D     |       |       |       |
| Electronic Dispensation           | D     | D     | D O L |       | D     |       |       |       |
| Medical image and image report    | D     | D     | D     | D     | D     | D O   |       |       |
| Laboratory Results                | D     | D     | D     | D     | D     | D O   |       |       |
| Discharge Report                  | D     | D     | D     | D     | D     | D O   |       |       |
| Telemonitoring*                   |       |       | D     |       |       |       |       |       |
| Care Plan*                        |       |       | D O L |       |       |       | O     |       |

>*The Telemonitoring and the Care Plan HIDs will be developed in the xShare Project\
>*D = Download*\
>*O = One-time Share*\
>*L = Linked Options*

--->
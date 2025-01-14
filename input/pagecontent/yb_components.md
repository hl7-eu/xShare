### xShare Yellow Button reference implementation main components

This page outlines the primary logical application components considered in the design of the xShare reference implementation for the xShare Yellow Button.

An overview of these main components is illustrated in the following figure.

<div style="text-align: center"> <img src="./button_components.png" alt="xShare Yellow Button main components" title="xShare Yellow Button main components." style="width:100%"/> </div>


Below is a brief description of the key components and their associated toolbox elements:

* **Healthcare Infrastructure**: The system boundary defining the domain of the healthcare institution.
* **Healthcare Infrastructure**
Defines the system boundary within the healthcare institution’s domain.
* **Authorization Client (Web Interface or App)**
Represents the healthcare institution’s system, which lies outside the xShare scope, or a health and wellness app ecosystem that includes an authentication mechanism.
*  **Upload**
Enables healthcare institutions or health apps to import EEHRxF data.
* **Health Information Exchange (HIE)**
Refers to the institution’s Electronic Health Information Exchange, facilitating appropriate electronic access to health information.
* **xShare Node**
The system component developed within the scope of xShare, deployed within the healthcare infrastructure.
* **Visualization**
Provides visualization and interaction capabilities for the xShare Yellow Button.
* **Authorized Data Recipient**
Represents the authorized healthcare institution, trusted entity, or app with whom health data is shared.

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
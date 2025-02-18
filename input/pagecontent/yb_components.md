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

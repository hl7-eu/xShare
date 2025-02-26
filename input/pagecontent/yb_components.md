### xShare Yellow Button reference implementation

This page outlines the the xShare reference implementation for the xShare Yellow Button.

An overview of these main components is illustrated in the following figure.

<div style="text-align: center"> <img src="./ReferenceArchitecture.png" alt="xShare Yellow Button reference architecture" title="xShare Yellow Button reference architecture." style="width:100%"/> </div>

Below is a brief description of the key components:

#### Security & privacy layer
The layer is a gateway to “enter” the Yellow Button infrastructure, ensuring only authorized access to its façades and services. It is tightly connected to the “IAM” and “Consent management” systems enforcing access based on:
* Yellow button authorization (security) – only recognized and authorized users can access façades and services
* Patient/citizen authorization (privacy) – PEP (Policy Enforcement Point) ensures that only users with granted consent can access patient’s/citizen’s EEHRxFs

#### Data management

{:class="table table-bordered"}
| **COMPONENT** | **TYPE** | **DESCRIPTION** |
| :-------------------------------- |:-----------|:--------------|
| **PATIENT DATA** Façade/API  | The main API, the starting point, exposing patient/citizen EEHRxFs to herself, so she can see what is available and decide what to do with data |
| **DOWNLOAD** | Façade/API | The API allowing patient/citizen to download data in: computable format (EEHRxF FHIR and EEHRxF CDA); human readable format (HTML, PDF); translated in one of supported languages |
| **SHARE** | Façade/API | The API enabling patient/citizen to share her EEHRxFs |
| **DATA ACCESS** | Service | The main service, an coordinator of actions available in “Data management”: Retrieving EEHRxF from integrated data sources; Caching and retrieving EEHRxFs acting as IHE MHD Document Source & Document Consumer actors; Auditing events happening within “Data management”; Administering share mechanism and consent granting |
| **VISUALIZATION** | Service | The service for creation of human readable instance of EEHRxF in HTML and/or PDF format |
| **TRANSFORMING** | Service | The service transforming EEHRxF from FHIR to CDA format and vice versa |
| **Data Transformation**           | Provides the generally defined functionality for modifying the selected resource format. This includes (pseudo) anonymisation, translation, password protection, and digital signature. |  |
| **ANONYMIZATION** | Service | The service anonymizing EEHRxF data points before sharing |

*Table 1: xShare Yellow Button reference architecture.*

#### IAM
The Identity and Access Management is a system that enables authorized access to users. It does this via integrations with existing IdPs (Identity providers), rather than maintaining users’ accounts own its own.
It is not yet defined, but it will probably offer service which utilizes OpenID Connect (OAuth2) and IHE IUA profile.

#### Consent management
The Consent management is a system which supports access control (privacy) by enabling management of patient/citizen consents (PAP – Policy Administration Point) and by providing computable decisions allowing or forbidding access (PDP – Policy Decision Point).

#### Storage

##### Data repository
The Data repository is a repository of EEHRxFs and it is used as a caching mechanism which will prevent over utilization of clinical data sources and thus prevent the Yellow Button users to abuse infrastructures used for direct care.
Because EEHRxF are clinical documents, the repository exposes itself as standard IHE profile actors MHD Document Recipient & MHD Document Responder.

##### Audit log repository
The Audit record repository is a repository storing and maintaining audit logs, the logs collecting information who access what, when and for which purpose. Logs are meant to be available for patient/citizen and information security officer to check if access was enforced properly.

##### Consent repository
The consent repository maintains access policies and their instances (consents) that patient/citizen granted during utilization of share services.

#### Connectors

##### MyHealth@EU via NCPeH
tbd

##### Smart links
tbd

##### TBD (e.g., HL7 IPA)
tbd

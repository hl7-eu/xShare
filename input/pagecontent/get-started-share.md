
This is a brief guideline on why and how to implement the xShare Yellow Button One-time Share feature in your system, and prove its conformance.

To use the Yellow Button Label you have to:


<div>
<p></p>
{% include get-the-label.svg %}
<p></p>
</div>

---

### Why the Yellow Button?

- Enhance your system by offering natural persons a tool to easily access their data in a shareable and standardized format.
- Comply with the EHDS regulation.

---

### What You Should Be Able to Do

Given that your system manages Natural Person authentication in accordance with European Regulations , the following functionality should be provided:

- Your system enables the authenticated Natural Person (data owner) to:
  - View and select from the available health data to share.
  - Optionally configure share options (e.g., format, translations, pseudonymization, etc.).
  - Generate the Smart Health Link with the selected content.
  - Provides the Smart Health Link to the Natural Person.

- Your system enables the authorised data recipient to:
  - View the shared data authorised by the Natural Person when accesses the Smart Health Link.

*A detailed diagram is available [here](application.html#one-time-share).*

---

### How to Implement: the specifications

For this version of the xShare Yellow Button the technical specifications to prove conformance with are the content specifications and the Smart Health Link specifications.

#### Content specifications
Acting as [**xShare Yellow Button Content Creator**](actors.html#xshare-yellow-button-content-creator) and [**xShare Yellow Button Content Consumer**](actors.html#xshare-yellow-button-content-consumer):


|  | xBundle  | HL7 FHIR IG |
|------|-------------|-------------|
| <img src="medical-app.png" alt="Patient Summary icon" style="width:30px; vertical-align:middle;"> | [Patient Summary](https://x-bundles.ehr-exchange-format.eu/ps-content/content.html) | [HL7 International Patient Summary FHIR IG v1.1.0](https://hl7.org/fhir/uv/ips/)
|------|-------------|-------------|
| <img src="experiment-results.png" alt="Laboratory Report icon" style="width:30px; vertical-align:middle;"> | [Laboratory Report](https://x-bundles.ehr-exchange-format.eu/lab-rpt-content/content.html) | [HL7 Europe Laboratory Report FHIR IG v0.1.0](http://hl7.eu/fhir/laboratory)
|------|-------------|-------------| 
| <img src="experiment-results.png" alt="MyHealth@EU Laboratory Report icon" style="width:30px; vertical-align:middle;"> | [MyHealth@EU Laboratory Report](https://x-bundles.ehr-exchange-format.eu/myh-eu-lab-cnt/content.html) | [MyHealth@EU Laboratory Report FHIR IG	v0.1.0](https://fhir.ehdsi.eu/laboratory)


Early implementers might be interested in piloting the following on development specifications

|  | xBundle  | HL7 FHIR IG |
|------|-------------|-------------|
| <img src="hospital.png" alt="Hospital Discharge Report icon" style="width:30px; vertical-align:middle;"> | [Hospital Discharge Report](https://x-bundles.ehr-exchange-format.eu/hdr-content/content.html) | [HL7 Europe Hospital Discharge Report FHIR IG (0.1.0-ci-build)](https://build.fhir.org/ig/hl7-eu/hdr)
|------|-------------|-------------|
| <img src="prescription.png" alt="Medicine Prescription and Dispense icon" style="width:30px; vertical-align:middle;"> | [Medicine Prescription and Dispense](https://x-bundles.ehr-exchange-format.eu/mpd-content/content.html) | [HL7 EU Medication Prescription and Dispense FHIR IG v0.1.0-ci-build](https://build.fhir.org/ig/hl7-eu/mpd/)
|------|-------------|-------------|
| <img src="radiology.png" alt="Digital Imaging Report icon" style="width:30px; vertical-align:middle;"> | [Digital Imaging Report](https://x-bundles.ehr-exchange-format.eu/dir-content/content.html) | 
|------|-------------|-------------|

#### Smart Health Link specifications
Acting as [**xShare Yellow Button Link Provider**](actors.html#xshare-yellow-button-link-provider):

* The SMART Health Link URI is generated in conformance with the [SMART Health Links Sharing Application Generates a SMART Health Link URI](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-sharing-application-generates-a-smart-health-link-uri) specifications.

Acting as [**xShare Yellow Button Link Consumer**](actors.html#xshare-yellow-button-link-consumer):

* The SMART Health Link URI is processed in conformance with the [SMART Health Links Receiving Application processes a SMART Health Link](https://hl7.org/fhir/uv/smart-health-cards-and-links/2024Sep/links-specification.html#smart-health-links-receiving-application-processes-a-smart-health-link) specifications.


---

### Declare and Prove Your Conformance

#### Claim Your Conformance

To claim conformance with the xShare Yellow Button One-time Share, implementers must issue a conformance statement specifying the content specifications and the optional features supported (e.g. additional download formats, password protected content, psuedoanonymized data;...).

---

#### Prove Your Conformance

A system conformant to the xShare Yellow Button One-time Share feature must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button One-time Share feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to share.
1. Demonstrate that a valid Smart Health Link is generated.
1. Ensure that content authorised for sharing (the SHL Manifest) is available in the selected target format when the authorised data recipient accesses the Smart Health Link.
1. The SHL Manifest passes the validation tests for each of the declared supported content specifications (e.g., Patient Summary, Laboratory Results).

*Detailed test cases are described [here]*

---

### Label Your System

To label your system follow the [labeling process](labeling_process.html).

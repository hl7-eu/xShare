
This is a brief guideline on why and how to implement the xShare Yellow Button Download feature in your system, and prove its conformance.

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
  - View and select from the available health data to download.
  - Optionally configure download options (e.g., format, translations, pseudonymization, etc.).
  - Download the selected content to a chosen destination.

*A detailed diagram is available [here](application.html#download).*

---

### How to Implement: the specifications

For this version of the xShare Yellow Button **the only technical specifications to prove conformance with are the content specifications** listed below, acting as [**xShare Yellow Button Content Creator**](actors.html#xshare-yellow-button-content-creator):


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
| <img src="medical-app.png" alt="Patient Summary icon" style="width:30px; vertical-align:middle;"> | [Patient Summary](https://x-bundles.ehr-exchange-format.eu/ps-content/content.html) | [HL7 Europe Patient Summary FHIR IG (0.1.0-ci-build)](https://build.fhir.org/ig/hl7-eu/eps)
|------|-------------|-------------|
| <img src="hospital.png" alt="Hospital Discharge Report icon" style="width:30px; vertical-align:middle;"> | [Hospital Discharge Report](https://x-bundles.ehr-exchange-format.eu/hdr-content/content.html) | [HL7 Europe Hospital Discharge Report FHIR IG (0.1.0-ci-build)](https://build.fhir.org/ig/hl7-eu/hdr)
|------|-------------|-------------|
| <img src="prescription.png" alt="Medicine Prescription and Dispense icon" style="width:30px; vertical-align:middle;"> | [Medicine Prescription and Dispense](https://x-bundles.ehr-exchange-format.eu/mpd-content/content.html) | [HL7 EU Medication Prescription and Dispense FHIR IG v0.1.0-ci-build](https://build.fhir.org/ig/hl7-eu/mpd/)
|------|-------------|-------------|
| <img src="radiology.png" alt="Digital Imaging Report icon" style="width:30px; vertical-align:middle;"> | [Digital Imaging Report](https://x-bundles.ehr-exchange-format.eu/dir-content/content.html) | [HL7 EU Imaging Report FHIR IG v0.1.0-ci-build](https://build.fhir.org/ig/hl7-eu/imaging/)
|------|-------------|-------------|


---

### Declare and Prove Your Conformance

#### Claim Your Conformance

To claim conformance with the xShare Yellow Button Download, implementers must issue a [conformance statement](conf-statement.html) specifying the content specifications and the optional features supported (e.g. additional download formats, password protected content, psuedoanonymized data;...).

---

#### Prove Your Conformance

A system conformant to the xShare Yellow Button Download feature must:

1. Demonstrate that only authenticated Natural Persons can access the xShare Yellow Button Download feature.
1. Claim that user autentication is realized in conformance with the European Regulations
1. Demonstrate that (only) authenticated Natural Persons can search for and select the documents or data they wish to download.
1. Pass validation tests for each of the declared supported content specifications (e.g., Patient Summary, Laboratory Results).
1. Ensure that the download content is available in the selected target format.


**

---

### Label Your System

To label your system follow the [labeling process](labeling_process.html).

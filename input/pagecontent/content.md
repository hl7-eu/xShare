### Data Domain


The [**data domain**](content.html) describes data models and exchange formats used by the Yellow Button.

{% include bdat-d.svg %}

This page lists only the implementable specification aginst which the conformance is tested.

A complete list of the Conceptual, Logical and Implementable models and specifications is provided in the the xBundle registry [xShare Yellow Button - content](https://x-bundles.ehr-exchange-format.eu/xb-1-cnt/content.html).


### Implementable specification

For this version of the xShare Yellow Button **the only technical specifications to prove conformance with are the content specifications** listed below:


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


*Note: The list of possible download formats will be kept updated.*


### Declare and Prove Your Conformance

#### Claim Your Conformance

See the [Claim Your Conformance](conformance.html#claim-your-conformance) section.

#### Prove Your Conformance

See the [Prove Your Conformance](conformance.html#prove-your-conformance) section.

The solution should act as [xShare Yellow Button Content Creator](actors.html#xshare-yellow-button-content-creator) for the type of content declared to be supported and be able to demostrate conformance with what is specified in the 
[Prove Your Conformance](conformance.html#prove-your-conformance) section.
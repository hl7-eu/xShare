Instance: capabilityStatement-yb-consumer
InstanceOf: CapabilityStatement
Title: "xShare Yellow Button Consumer Capability Statement"
Description: "Defines the capabilities of an xShare Yellow Button Consumer, which can retrieve and interpret FHIR Document Bundles obtained via download or Smart Health Links."
Usage: #definition

* status = #draft
* date = "2025-04-01"
* name = "CapabilityStatementXshareYBConsumer"
* fhirVersion = #4.0.1
* kind = #requirements
* format[+] = #json
* format[+] = #xml

* url = "http://hl7.eu/fhir/ig/xshare-yb/CapabilityStatement/capabilityStatement-yb-consumer"


* implementationGuide[+] = "http://hl7.eu/fhir/laboratory/ImplementationGuide/hl7.fhir.eu.laboratory"
* implementationGuide[+] = "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
* implementationGuide[+] = "http://hl7.org/fhir/uv/smart-health-cards-and-links/ImplementationGuide/hl7.fhir.uv.smart-health-cards-and-links"
* implementationGuide[+] = "http://fhir.ehdsi.eu/laboratory/ImplementationGuide/myhealth.eu.fhir.laboratory"

* document[+].mode = #consumer
* document[=].profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* document[=].documentation = "The consumer can interpret or display EU Laboratory Report documents obtained via download or Smart Health Link."

* document[+].mode = #consumer
* document[=].profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
* document[=].documentation = "The consumer can interpret or display IPS documents obtained via download or Smart Health Link."

* document[+].mode = #consumer
* document[=].profile = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Bundle-lab-myhealtheu"
* document[=].documentation = "The consumer can interpret or display MyHealth@EU lab reports obtained via download or Smart Health Link."

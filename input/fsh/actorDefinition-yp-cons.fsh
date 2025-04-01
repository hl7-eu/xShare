Instance: actorDefinition-yb-consumer
InstanceOf: ActorDefinition
Title: "xShare Yellow Button Consumer"
Description: """An actor that consumes FHIR Document Bundles obtained via download or Smart Health Links, as defined in the xShare Yellow Button Guide.

The xShare Yellow Button Consumer shall be able to act as:
- xShare Yellow Button Content Consumer, always
- xShare Yellow Button Link Consumer, if the One-time Share option is supported
- xShare Yellow Button Manifest Consumer, if the One-time Share option is supported
"""
Usage: #definition

* status = #draft
* name = "ActorDefinitionYBConsumer"
* title = "xShare Yellow Button Consumer"
* type = #system
* documentation = "The xShare Yellow Button Consumer receives and processes clinical documents such as IPS or lab reports provided as FHIR Document Bundles, either via direct download or Smart Health Link."
* capabilities = "http://hl7.eu/fhir/ig/xshare-yb/CapabilityStatement/capabilityStatement-yb-consumer"

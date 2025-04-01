Instance: ActorXshareYBProvider
InstanceOf: ActorDefinition
Title: "XShare Yellow Button Provider"
Description: """An actor that produces HL7 FHIR Document Bundles that can be downloaded or shared using Smart Health Links, as defined in the XShare Yellow Button Guide.
The xShare Yellow Button Provider shall act:
- always as xShare Yellow Button Content Creator,
- if the One-time Share option is supported,
   - as xShare Yellow Button Link Provider,
   - as xShare Yellow Button Manifest Provider."""
   
Usage: #definition

* status = #draft
* name = "XshareYBProvider"
* type = #system
* documentation = "The xShare Yellow Button Provider exposes clinical documents such as IPS or lab reports as FHIR Document Bundles. These can be offered via direct download or shared using Smart Health Links."
* capabilities = "http://hl7.eu/fhir/ig/xshare-yb/CapabilityStatement/capabilityStatement-yb-provider"

Invariant: PATIENT-PHONE-1
Description: "Only special characters (dash) and numbers are allowed. For example: 083-123-1234"
Expression: "$this.matches('[0-9]{1,3}-[0-9]{1,3}-[0-9]{4}')"
Severity: #error

Profile: HivOrganisation
Parent: Organization
Id: HIV-Organisation
Title: "HIV Organisation"
Description: "HIV Organisation - Name, ID and Address"
* name 0..1 
* identifier 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
    FacilityId 0..1 MS
* identifier[FacilityId].value 0..1
* identifier[FacilityId].system 0..1
* identifier[FacilityId].system = "https://mfl.moh.gov.zm/"
* identifier[FacilityId] ^definition = "Facility ID as specified by the MoH Master Facility Registry"
* contact.address 0..1
* contact.address.city 0..1
* contact.address.line 1..1
* contact.address.district 1..1
* contact.address.state 1..1
* contact.address.country 1..1

Profile: HivOrganisation2
Parent: Location
Id: HivOrganisation2
Title: "HIV Organisation 2"
Description: "HIV Organisation - GPS"
* position 0..1
* position.longitude 1..1
* position.latitude 1..1
* position.altitude 0..1

Profile: HivPatient
Parent: Patient
Id: HivPatient
Title: "HIV Patient"
Description: "HIV Patient"
* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
    MedicalRecordID 0..1 and
    NationalID 0..1
* identifier[MedicalRecordID].value 1..1
* identifier[MedicalRecordID].system 1..1
* identifier[MedicalRecordID].system = "http://openhie.org/fhir/phillip-ig/identifier/patient-medical-record-id"
* identifier[NationalID].value 1..1
* identifier[NationalID].system = "http://openhie.org/fhir/phillip-ig/identifier/patient-national-id"
* contact 0..*
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..* 
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^slicing.description = "Slice based on the type of telecom"
* contact.telecom ^slicing.ordered = false
* contact.telecom contains 
    contactEmail 0..1 and
    contactPhone 0..1
* contact.telecom[contactEmail].system 1..1
* contact.telecom[contactEmail].system = #email
* contact.telecom[contactEmail].value 1..1
* contact.telecom[contactPhone].system 1..1
* contact.telecom[contactPhone].system = #phone
* contact.telecom[contactPhone].value 0..1
* contact.relationship 0..1
* maritalStatus 0..1
* gender 0..1
* birthDate 0..1
* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice based on the type of telecom"
* telecom ^slicing.ordered = false
* telecom contains
    email 0..1 MS and 
    phone 0..1 MS
* telecom[email].system 1..1
* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email] ^definition = "The email address of the Patient"
* telecom[phone].system 1..1 
* telecom[phone].system = #phone
* telecom[phone].value 1..1
  * obeys PATIENT-PHONE-1
* telecom[phone] ^definition = "The Phone Number of the Patient"
* name.family 1..1
* name.given 0..1
* name.given 1..1
* address 0..*
* address.city 1..1
* address.line 1..1
* address.district 1..1
* address.state 1..1
* address.country 1..1
* managingOrganization 0..1
* managingOrganization.identifier.use 1..1
* managingOrganization.identifier.value 1..1

* extension contains HIVKeyPop named HIVPOPSTATUS 1..1
* extension contains HIVPopStatusDate named HIVPOPSTATUSDate 1..1
* extension contains HIVPopStatusComplex named COMPLEXHIVPopStatus 0..1


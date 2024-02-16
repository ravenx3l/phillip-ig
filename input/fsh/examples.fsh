Instance: TestPatientExampleOne 
InstanceOf: HivPatient
Usage: #example
Title: "Test Patient Example One"
Description: "Test Patient Example One"
* contact[0].name.given[0] = "Moses"
* contact[0].name.given[1] = "John"
* contact[0].name.family = "Giji"
* contact[0].telecom[+].value = "083-123-4567"
* contact[0].telecom[=].system = #phone
* contact[0].telecom[+].value = "same@gmail.com"
* contact[0].telecom[=].system = #email
* telecom[+][phone].value = "083-123-4567"
* telecom[=][phone].system = #phone
* telecom[+][email].value = "same@gmail.com"
* telecom[=][email].system = #email
* gender = #male
* birthDate = "2000-01-01"
* name.given[0] = "Joshua" // Firstname
* name.given[1] = "Lucian Manana" // Middle Names
* name.family = "Hershey"
//* extension[HIVPOPSTATUS].valueCodeableConcept.coding.code = #472986005
//* extension[HIVPOPSTATUS].valueCodeableConcept.coding.system = "http://openhie.org/fhir/zambia-training/CodeSystem/cs-key-population-status"
* extension[HIVPOPSTATUS].valueCodeableConcept = $SNOMED#472986005
* extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"

/*
Instance: HivPatientExample
InstanceOf: HivPatient
Usage: #example
Title: "HivPatientExample"
Description: "Examples of HIV Patient"
* identifier[+]
* identifier[+].value = "I84ND75"
* identifier[=].system = #MedicalRecordID
* identifier[+].value = "654321/21/3"
* identifier[=].system = #NationalID
* contact.name.given[0] = "Joshua" // Firstname
* contact.name.given[1] = "Lucian Manana" // Middle Names
* contact.name.family = "Hershey"
* contact.telecom[+].value = "083-123-4567"
* contact.telecom[=].system = #phone
* contact.telecom[+].value = "name@example.com"
* contact.telecom[=].system = #email
* telecom[+].value = "0770123456"
* telecom[=].system = #phone
* telecom[+].value = "name@example.com"
* telecom[=].system = #email
* gender = #male
* birthDate = "2000-01-01"
* name.given[0] = "Joshua" // Firstname
* name.given[1] = "Lucian Manana" // Middle Names
* name.family = "Hershey"
* 
* extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"
* extension[COMPLEXHIVPopStatus].extension[HIVPOPSTATUS].valueCodeableConcept = $SNOMED#472986005
* extension[COMPLEXHIVPopStatus].extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"

Instance: HivOrganisationExample
InstanceOf: HivOrganisation
Usage: #example
Title: "HivOrganisationExample"
Description: "Hiv Organisation"
* name = "University Teaching Hospital" 
* identifier[+]
* identifier[=].value "000001"
* identifier[=].system = #FacilityId
* contact.address[+]
* contact.address[=].city = "Lusaka"
* contact.address[=].line = "Nationalist Road"
* contact.address[=].district = "Lusaka"
* contact.address[=].state = "Lusaka"
* contact.address[=].country = "Zambia"
*/ 
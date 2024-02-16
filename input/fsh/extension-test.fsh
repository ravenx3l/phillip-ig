Extension: HIVKeyPop
Id: hiv-key-pop
Title: "HIV Key Pop"
Description: "HIV Key Pop"
* value[x] only CodeableConcept
* value[x] 1..
* valueCodeableConcept from KeyPolulation (extensible)
* ^context[+].type = #element
* ^context[=].expression = "Patient"

* ^context[+].type = #element
* ^context[=].expression = "Observation"

* ^context[+].type = #element
* ^context[=].expression = "Patient.extension"

Extension: HIVPopStatusDate
Id: hiv-pop-status-date
Title: "Some Date"
Description: "Some Date"
* value[x] only dateTime
* value[x] 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient"

* ^context[+].type = #element
* ^context[=].expression = "Patient.extension"

Extension: HIVPopStatusComplex
Id: hiv-pop-status-complex
Title: "HIV Pop Status Complex"
Description: "HIV Pop Status Complex"
* extension contains HIVKeyPop named HIVPOPSTATUS 1..1
* extension contains HIVPopStatusDate named HIVPOPSTATUSDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "Patient"
Alias: $SNOMED = http://snomed.info/sct

CodeSystem: KeyPolulation
Id: key-polulation
Title: "KeyPolulation"
Description: "Key population types in the HealthCare space in Zambia"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Poplation"

ValueSet: KeyPolulation
Id: key-polulation
Title: "Key Population"
Description: "Key population types in the HealthCare space in Zambia"
* $SNOMED#472986005 "Sexually active with men"
* $SNOMED#159799000 "Female prostitute"
* $SNOMED#159800001 "Male prostitute"
* $SNOMED#228388006 "Intravenous drug user"
* $SNOMED#417284009 "Current drug user"
* $SNOMED#407375002 "Surgically transgendered transsexual"
* include codes from system KeyPolulation

/* Extension: STI-Key-Population-Extension
Id: sti-key-population-extension
Title: "STI Key Population Extension"
Description: "STI Key Population Extension"
Context: 
* value[x] only CodeableConcept
* valueCodeableConcept from /Key-Polulation (extensible)
* ^context[+].type = #element
* ^context[=].expression = "Patient" */
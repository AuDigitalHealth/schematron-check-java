<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 30/09/2013 2:26:00 PM

                  Product            : Dispense Record
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 6.5
                  IG Guide Title     : Encompassing Encounter
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Dispense_Record_EncompassingEncounter_6_5-errors"
        id="p-Dispense_Record_EncompassingEncounter_6_5-errors"
        see="#p-Dispense_Record_EncompassingEncounter_6_5-errors">


        <rule context="/cda:ClinicalDocument">

            <assert test="cda:componentOf"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'componentOf' tag is missing.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:componentOf) > 1"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'componentOf' tag shall appear only once.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf">

            <assert test="cda:encompassingEncounter"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'encompassingEncounter' tag is missing.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:encompassingEncounter) > 1"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'encompassingEncounter' tag shall appear only once.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">

            <assert test="cda:effectiveTime"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'effectiveTime' tag is missing.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime">

            <assert test="@nullFlavor"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'effectiveTime' tag 'nullFlavor' attribute is missing.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@nullFlavor) or normalize-space(@nullFlavor) = '' or @nullFlavor = 'NA'"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall contain the value 'NA'.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@nullFlavor) or normalize-space(@nullFlavor) != ''"
                >Error: Dispense Record - 6.5 Encompassing Encounter -
                "EncompassingEncounter" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall contain a value.
                Refer to section 6.5 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


    </pattern>

</schema>

<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 03-10-2013 18:40:35

                  Product            : Prescription Request
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 8.5
                  IG Guide Title     : Requester Note
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Prescription_Request_3A_RequesterNote_8_5-errors"
        id="p-Prescription_Request_3A_RequesterNote_8_5-errors"
        see="#p-Prescription_Request_3A_RequesterNote_8_5-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']">

            <report test="count(cda:entry[cda:act/cda:code/@code = '102.16212']) > 1"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'entry' tag shall appear only once for 'Requester Note'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry[cda:act/cda:code/@code = '102.16212']">

            <assert test="@typeCode"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'entry' tag 'typeCode' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'entry' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'DRIV'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:act) > 1"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag shall appear only once.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:act[cda:code/@code = '102.16212']">

            <assert test="@moodCode"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="@classCode"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="cda:id"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'id' tag is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:id) > 1"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'id' tag shall appear only once.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="count(cda:code) > 1"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag shall appear only once.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="cda:text"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note / Note" -
                The 'text' tag is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:text) > 1"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note / Note" -
                The 'text' tag shall appear only once.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note / Note" -
                The 'text' tag shall contain a value.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:act[cda:code/@code = '102.16212']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="cda:code[@code = '102.16212']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '102.16212']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:act/cda:code[@code='102.16212'])"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/act/code[@code = '102.16212']' path -
                1 or more tags are missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="@codeSystem"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="@codeSystemName"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="@displayName"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Requester Note'"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'code' tag 'displayName' attribute shall contain the value 'Requester Note'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="not(cda:translation)"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:act[cda:code/@code = '102.16212']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note / Note" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Prescription Request - 8.5 Requester Note -
                "Requester Note / Note" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 8.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


    </pattern>

</schema>

<?xml version = "1.0" encoding = "UTF-8"?>


<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Shared_Health_Summary_LegalAuthenticator_5_1_1_custom-errors"
        id="p-Shared_Health_Summary_LegalAuthenticator_5_1_1_custom-errors"
        see="#p-Shared_Health_Summary_LegalAuthenticator_5_1_1_custom-errors">


        <rule
            context="/cda:ClinicalDocument/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson">


            <!--Made legalAuthenticator/assignedEntity/assignedPerson/<Entity Identifier> - 1..* RPSA-1094, CCB-0222-->
            <!--Made legalAuthenticator/assignedEntity/assignedPerson/<Person Name> - 1..* RPSA-1094, CCB-0222-->

            <!-- The child tags and attributes of 'ext:asEntityIdentifier' are being tested in 'Shared_Health_Summary_Global_Checks.sch'. -->

            <assert test="ext:asEntityIdentifier">Error: Shared Health Summary - 5.1.1 Legal
                Authenticator - "legalAuthenticator / assignedEntity / assignedPerson / Entity
                Identifier" - The 'asEntityIdentifier' tag is missing. Refer to 023728 Include the
                person’s name and an entity identifier in the legalAuthenticator element of the
                COMMON-ConformProfileClinDoc-v1.6 and section 5.1.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>



            <assert test="cda:name">Error: Shared Health Summary - 5.1.1 Legal Authenticator -
                "legalAuthenticator / assignedEntity / assignedPerson / Person Name" - The 'name'
                tag is missing. Refer to 023728 Include the person’s name and an entity identifier
                in the legalAuthenticator element of the COMMON-ConformProfileClinDoc-v1.6 and
                section 5.1.1 of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>



        <rule
            context="/cda:ClinicalDocument/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson/ext:asEntityIdentifier/ext:id">


            <report test="@nullFlavor">Error: Shared Health Summary - 5.1.1 Legal Authenticator -
                "legalAuthenticator / assignedEntity / assignedPerson / Entity Identifier" - The
                'id' tag 'nullFlavor' attribute shall not exist. Refer to 023728 Include the
                person’s name and an entity identifier in the legalAuthenticator element of the
                COMMON-ConformProfileClinDoc-v1.6 and section 5.1.1 Legal
                Authenticator of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>


        </rule>
        
        <rule context="/cda:ClinicalDocument/cda:legalAuthenticator/cda:time">
            
            <assert test="not(@value)  or normalize-space(@value) = '' or string-length(@value) > 8"
                >Error: Shared Health Summary -  5.1.1 LegalAuthenticator -
                "legalAuthenticator/time" -
                The 'time' tag 'value' attribute shall include both a
                time and a date. Refer to section 5.1.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            
        </rule>     


    </pattern>

</schema>

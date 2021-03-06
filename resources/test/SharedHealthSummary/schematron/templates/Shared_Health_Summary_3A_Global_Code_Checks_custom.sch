<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>


    <!-- Shared Health Summary Clinical Document:  Global Code Checks -->

    <!-- Context: ClinicalDocument -->

    <!-- Status: Last Reviewed: 29/04/2013  
         Status: Last Updated : 29/04/2013 -->


    <pattern name="p-Shared_Health_Summary_3A_Global_Code_Checks_custom-errors"
        id="p-Shared_Health_Summary_3A_Global_Code_Checks_custom-errors"
        see="#p-Shared_Health_Summary_3A_Global_Code_Checks_custom-errors">

        <!-- CDA:CODE content -->
        <!-- The following tests check the for a) the presence of the cda:code tag, and b) the valid value inside the tag. -->


        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Date of Birth is Calculated From Age']">

            <assert test="@code = '103.16233'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.16233'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Date of Birth Accuracy Indicator']">

            <assert test="@code = '102.16234'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '102.16234'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Age']">

            <assert test="@code = '103.20109'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.20109'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Age Accuracy Indicator']">

            <assert test="@code = '103.16279'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.16279'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Birth Plurality']">

            <assert test="@code = '103.16249'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.16249'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Date of Death Accuracy Indicator']">

            <assert test="@code = '102.16252'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '102.16252'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


        <!-- 6.1.2 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[@displayName ='Source of Death Notification']">

            <assert test="@code = '103.10243'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.10243'. Refer
                to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


        <!-- 6.1.1 :: Subject of Care -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation/cda:code[(translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = &quot;MOTHER'S ORIGINAL FAMILY NAME&quot;)]">

            <assert test="@code = '103.10245'">Error: Shared Health Summary - SUBJECT OF CARE /
                Participant / Person or Organisation or Device / Person / Demographic Data /
                Mother's Original Family Name - The 'code' tag 'code' attribute shall contain the
                value '103.10245'. Refer to section '6.1.2 Subject of Care' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

     

        <!-- 7.1.1.1 :: EXCLUSION STATEMENT - ADVERSE REACTIONS -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20113']/cda:entry/cda:observation/cda:code[@displayName ='Global Statement']">

            <assert test="@code = '103.16302.120.1.1'"> Error: Shared Health Summary -
                Global Code Checks - The 'code' tag 'code' attribute shall contain the value
                '103.16302.120.1.1'. Refer to section '7.1.1.1 EXCLUSION STATEMENT - ADVERSE
                REACTIONS' of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!--  7.1.1.2 :: Adverse Reaction -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20113']/cda:entry/cda:act/cda:code[@displayName ='Adverse Reaction']">

            <assert test="@code = '102.15517'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '102.15517' .
                Refer to section '7.1.1.1 Adverse Reaction' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 7.1.1.2 :: Adverse Reaction -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20113']/cda:entry[cda:act/cda:code/@code = '102.15517']/cda:act/cda:entryRelationship/cda:observation/cda:code[@displayName ='Reaction Event']">

            <assert test="@code = '102.16474'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '102.16474'.
                Refer to section '7.1.1.2 Adverse Reaction' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


        <!-- 7.1.2.1:: EXCLUSION STATEMENT - MEDICATIONS -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16146']/cda:entry/cda:observation/cda:code[@displayName='Global Statement']">


            <assert test="@code = '103.16302.120.1.2'"> Error: Shared Health Summary -
                Global Code Checks - The 'code' tag 'code' attribute shall contain the value
                '103.16302.120.1.2'. Refer to section '7.1.2.2 EXCLUSION STATEMENT - MEDICATIONS' of
                the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


        <!-- 7.1.2.2 Known Medication (MEDICATION INSTRUCTION)-->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16146']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:act/cda:code[@displayName='Clinical Indication']">

            <assert test="@code = '103.10141'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.10141'. Refer
                to section '7.1.2.2 Known Medication (MEDICATION INSTRUCTION)' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 7.1.2.2 Known Medication (MEDICATION INSTRUCTION)-->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16146']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:act/cda:code[@displayName='Additional Comments']">

            <assert test="@code = '103.16044'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '103.16044'. Refer
                to section '7.1.2.2 Known Medication (MEDICATION INSTRUCTION)' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>


        <!-- 7.1.3.1 :: PROBLEM/DIAGNOSIS -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation/cda:code[@displayName='Diagnosis interpretation']">

            <assert test="@code = '282291009'"> Error: Shared Health Summary - Global Code
                Checks - The 'code' tag 'code' attribute shall contain the value '282291009'. Refer
                to section '7.1.3.1 PROBLEM/DIAGNOSIS' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!-- 7.1.3.1 Problem/Diagnosis -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry[cda:observation/cda:code/@code = '282291009']/cda:observation/cda:entryRelationship/cda:observation/cda:code[@displayName='Date of Resolution/Remission']">

            <assert test="@code = '103.15510'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '103.15510'.
                Refer to section '7.1.3.1 Problem/Diagnosis' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!-- 7.1.3.1 Problem/Diagnosis -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry[cda:observation/cda:code/@code = '282291009']/cda:observation/cda:entryRelationship/cda:act/cda:code[@displayName='Problem/Diagnosis Comment']">

            <assert test="@code = '103.16545'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '103.16545'.
                Refer to section '7.1.3.1 Problem/Diagnosis' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!-- 7.1.3.2 :: EXCLUSION STATEMENT - PROBLEMS AND DIAGNOSES -->
        <!-- 7.1.3.4 :: EXCLUSION STATEMENT - PROCEDURES -->
        <!-- Both the codes in one rule context as the displayName is common for these codes -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation/cda:code[@displayName='Global Statement']">

            <assert
                test="(@code = '103.16302.120.1.3') or (@code = '103.16302.120.1.4')"
                > Error: Shared Health Summary - Global Code Checks - The 'code' tag 'code'
                attribute shall contain the value '103.16302.120.1.3' or '103.16302.120.1.4'. Refer
                to section '7.1.3.2 EXCLUSION STATEMENT - PROBLEMS AND DIAGNOSES' or '7.1.3.4
                EXCLUSION STATEMENT - PROCEDURES' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>

        <!-- 7.1.3.3 Procedure -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:procedure[@classCode='PROC']/cda:entryRelationship/cda:act/cda:code[@displayName='Procedure Comment']">

            <assert test="@code = '103.15595'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '103.15595'.
                Refer to section '7.1.3.3 Procedure' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>

        <!-- 7.1.3.5 UNCATEGORISED MEDICAL HISTORY ITEM -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:act/cda:code[@displayName='Uncategorised Medical History Item']">

            <assert test="@code = '102.16627'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '102.16627'.
                Refer to section '7.1.3.5 UNCATEGORISED MEDICAL HISTORY ITEM' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


        <!-- 7.1.3.5 UNCATEGORISED MEDICAL HISTORY ITEM-->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:act[cda:code/@code = '102.16627']/cda:entryRelationship/cda:act/cda:code[@displayName='Medical History Item Comment']">

            <assert test="@code = '103.16630'"> Error: Shared Health Summary - Global
                Code Checks - The 'code' tag 'code' attribute shall contain the value '103.16630'.
                Refer to section '7.1.3.5 UNCATEGORISED MEDICAL HISTORY ITEM' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>



        <!-- 7.1.4.2 Exclusion Statement - Immunisations (EXCLUSION STATEMENT - MEDICATIONS) -->

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:observation/cda:code[@displayName='Global Statement']">

            <assert test="@code = '103.16302.120.1.5'"> Error: Shared Health Summary -
                Global Code Checks - The 'code' tag 'code' attribute shall contain the value
                '103.16302.120.1.5'. Refer to section '7.1.4.2 Exclusion Statement - Immunisations
                (EXCLUSION STATEMENT - MEDICATIONS)' of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>


        </rule>


    </pattern>

</schema>

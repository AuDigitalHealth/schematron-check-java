<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 31/03/2015 11:20:18 AM

                  Product            : Pathology Report
                  Release            : CDA_Implementation_Guide_v1.0
                  Generator Version  : 
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Pathology_Report_mediaType_Additional_Checks-errors"
        id="p-Pathology_Report_mediaType_Additional_Checks-errors"
        see="#p-Pathology_Report_mediaType_Additional_Checks-errors">

                
        <rule context="*[cda:reference[@value][not(starts-with(@value, '#'))]]"> 
            
            <assert test="@mediaType">Error: Pathology Report - Global Clinical Document
                check for *[child::*:reference] tag - The 'mediaType' attribute is missing for
                having attachment. Check all parent tags of reference tag to find the tag with
                'mediaType' attribute missing. Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
            <report test="@xsi:type and normalize-space(@xsi:type) = ''">Error: Pathology Report - 
                Global Clinical Document check for *[child::*:reference] tag - The
                'xsi:type' attribute shall contain a value. Check all parent tags of reference tag
                to find the tag with blank 'xsi:type' attribute value. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test="count(cda:reference) > 1">Error: Pathology Report - Global
                Clinical Document check for *[child::*:reference] tag - The 'reference' tag shall
                appear only once. Check all parent tags of reference tag to find the duplicated
                'reference' tag. Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <!-- REQUIREMENT    : ED type with a reference will always be present when an attachment is included,
                                                  ==> @mediatype shall appear; otherwise the default of @mediaType (which is text/plain)
                                                      is not in the allow list of attachment type -->
            <!-- IMPLEMENTATION : if @xsi:type is 'ED' and cda:reference exists, then @mediaType shall appear -->
            <assert
                test="
                not(@xsi:type) or
                normalize-space(@xsi:type) = '' or
                not(normalize-space(@xsi:type) = 'ED' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'ED')) or
                not(cda:reference) or
                @mediaType"
                >Error: Pathology Report - Global Clinical Document check for
                *[child::*:reference] tag - The 'mediaType' attribute is missing for having
                attachment. Check all parent tags of reference tag to find the tag with 'mediaType'
                attribute missing. Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
            <report test="@mediaType and normalize-space(@mediaType) = ''">Error: Pathology Report - 
                Global Clinical Document check for *[child::*:reference] tag - The
                'mediaType' attribute shall contain a value. Check all parent tags of reference tag
                to find the 'mediaType' attribute of missing value. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report
                test="@mediaType and (normalize-space(@mediaType) != '') and (starts-with(@mediaType, 'http:') or starts-with(@mediaType, 'https:') or starts-with(@mediaType, 'ftp:'))"
                >Error: Pathology Report - Global Clinical Document check for
                *[child::*:reference] tag - The 'mediaType' attribute shall contain a value. Check
                all parent tags of reference tag to find the incorrect 'mediaType' attribute. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <!-- REQUIREMENT : For attachment references,
                                               if there is a mediaType then the mediaType must of one of the allowed list;
                                               if the reference value starts with a hash then the value is in the XML document and therefore the rule on allowed attachment types does not apply. -->
            
            <!-- cater for e.g. '<value mediaType="image/jpeg">' in the xml -->
            <report
                test="
                cda:reference and
                cda:reference/@value and
                not(starts-with(cda:reference/@value, '#')) and
                @mediaType and
                normalize-space(@mediaType) != '' and (
                not (contains(@mediaType, ';')) and
                not(document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system[@codeSystemName = 'CDA_MIME_Type']/code[@displayName = (current()/@mediaType)])
                )"
                >Error: Pathology Report - Global Clinical Document check for
                *[child::*:reference] tag - The 'mediaType' attribute shall be as per CDA Limitation
                MIME Type defined inside "Common Conformance Profile for Clinical Documents". Check
                all parent tags of reference tag to find the incorrect 'mediaType' attribute. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <!-- cater for e.g. '<value mediaType="image/jpeg; xxxxx">' in the xml -->
            <report
                test="
                cda:reference and
                cda:reference/@value and
                not(starts-with(cda:reference/@value, '#')) and
                @mediaType and
                normalize-space(@mediaType) != '' and (
                contains(@mediaType, ';') and
                not(document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system[@codeSystemName = 'CDA_MIME_Type']/code[@displayName = substring-before(current()/@mediaType, ';')])
                )"
                >Error: Pathology Report - Global Clinical Document check for
                *[child::*:reference] tag - The 'mediaType' attribute shall be as per CDA Limitation
                MIME Type defined inside "Common Conformance Profile for Clinical Documents". Check
                all parent tags of reference tag to find the incorrect 'mediaType' attribute. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <assert
                test="(normalize-space(cda:reference/@value) = '') or 
                not(@mediaType) or 
                (normalize-space(@mediaType) = '') or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 3), 4)='.gif') and (@mediaType = 'image/gif')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 4), 5)='.jpeg') and (@mediaType = 'image/jpeg')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 3), 4)='.jpg') and (@mediaType = 'image/jpeg')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 3), 4)='.pdf') and (@mediaType = 'application/pdf')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 3), 4)='.png') and (@mediaType = 'image/png')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 3), 4)='.tif') and (@mediaType = 'image/tiff')) or
                ((substring(cda:reference/@value, ((string-length(cda:reference/@value)) - 4), 5)='.tiff') and (@mediaType = 'image/tiff'))">
                Error: Pathology Report - Global Clinical Document check for *[child::*:reference] tag - 
                The 'mediaType' attribute shall match the MIME TYPE of the reference value attribute
                attachment. Check all parent tags of reference tag to find the tag with 'mediaType'
                attribute missing. Refer to "024630 - Matching filename extensions" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.
                Refer to Pathology_Report_CDA_Implementation_Guide_v1.0
                and  of the
                Common_Conformance_Profile_for_Clinical_Documents_v1.5.</assert>           
            
        </rule>
        
        
        
        <rule context = "*[@mediaType]/cda:reference">
            
            <assert test="@value">Error: Pathology Report - Global Clinical Document check
                for '*[@mediaType]/cda:reference' tag - The 'reference' tag 'value' attribute is
                missing. Check all cda:reference tags to find the missing 'value' attribute. 
                Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
            <assert test="not(@value) or normalize-space(@value) != ''">Error: Pathology Report - 
                Global Clinical Document check for '*[@mediaType]/cda:reference' tag - The
                'reference' tag 'value' attribute shall contain a value. Check all cda:reference
                tags to find the empty 'value' attribute. Refer to "023741 - MIME types allowed as attachments" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
        </rule>
        
        



    </pattern>

</schema>

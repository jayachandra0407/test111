<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Scholarship_granted</fullName>
        <description>Scholarship granted</description>
        <protected>false</protected>
        <recipients>
            <field>personal_gmail_id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Scholarship_granted</template>
    </alerts>
    <alerts>
        <fullName>registration_success</fullName>
        <description>registration success</description>
        <protected>false</protected>
        <recipients>
            <field>personal_gmail_id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/welcome</template>
    </alerts>
    <rules>
        <fullName>registration successful</fullName>
        <actions>
            <name>registration_success</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Student__c.age__c</field>
            <operation>greaterOrEqual</operation>
            <value>18</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>

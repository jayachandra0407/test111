<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Scholarship_granted</fullName>
        <description>Scholarship granted</description>
        <protected>false</protected>
        <recipients>
            <field>PERSONAL_GMAIL_ID__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SMS_Email_Approval_email_template</template>
    </alerts>
    <alerts>
        <fullName>approved</fullName>
        <description>Scholarship granted</description>
        <protected>false</protected>
        <recipients>
            <field>PERSONAL_GMAIL_ID__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SMS_Email_Approval_email_template</template>
    </alerts>
    <alerts>
        <fullName>classstudent_registration_sucess_mail_template</fullName>
        <description>classstudent registration sucess mail template</description>
        <protected>false</protected>
        <recipients>
            <field>PERSONAL_GMAIL_ID__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/welcome</template>
    </alerts>
    <fieldUpdates>
        <fullName>Scholarship_Amoumt_change</fullName>
        <field>Scholarship_Amount__c</field>
        <name>Scholarship Amoumt change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_the_approval_status</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>change the approval status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_the_approval_status_to_rejected</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>change the approval status to rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_the_tution_fee</fullName>
        <field>Tution_Fee__c</field>
        <formula>Tution_Fee__c  -  Scholarship_Amount__c</formula>
        <name>change the tution fee</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>feepaidupdate</fullName>
        <field>FeePaid__c</field>
        <formula>IF( ISCHANGED( Last_Fee_paid__c ) ,  FeePaid__c  +  Last_Fee_paid__c ,  FeePaid__c )</formula>
        <name>feepaidupdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>tution_fee_pending_change</fullName>
        <field>Tution_Fee__c</field>
        <formula>Tution_Fee__c  -  Scholarship_Amount__c</formula>
        <name>tution fee pending change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>registrationsuccessful</fullName>
        <actions>
            <name>classstudent_registration_sucess_mail_template</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Class_Student__c.AGE__c</field>
            <operation>greaterOrEqual</operation>
            <value>18</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>

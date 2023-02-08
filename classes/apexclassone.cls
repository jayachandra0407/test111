public class apexclassone {
	public static void method1()
    {
        list<Class_Student__c>newstudent = new list<Class_Student__c>();
       	newstudent = [select id,name,Gender__c,ROLL_NO__c from Class_Student__c where PERSONAL_GMAIL_ID__c = 'jayachandra.n@svce.edu.in' ];
        for(Class_Student__c k : newstudent)
        system.debug('the student info is'+k);
        list<Class_Student__c>newstudent2 = new list<Class_Student__c>();
        newstudent2 = [select id,name,Gender__c,ROLL_NO__c from Class_Student__c where PERSONAL_GMAIL_ID__c = 'alluhemanth01@gmail.com' ];
        for(Class_Student__c k : newstudent2)
        system.debug('the student info is'+k);
        
    }
}
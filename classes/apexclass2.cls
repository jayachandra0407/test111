public class apexclass2 {
    public static void matrixmethod(){
        list<list<integer>> a1=new list<list<integer>>();
        a1.add(new list<integer>{1,2,3});a1.add(new list<integer>{1,2,3});a1.add(new list<integer>{1,2,3});
        list<list<integer>>a2=new list<list<integer>>();
        a2.add(new list<integer>{0,0,0});a2.add(new list<integer>{0,0,0});a2.add(new list<integer>{0,0,0});

        for(integer i=0;i<3;i++)
        {
         	for(integer j=0;j<3;j++)
            {
                a2[j][i]=a1[i][j];
            }
        }
        system.debug(a1);
        system.debug(a2);
        
        
    }
}
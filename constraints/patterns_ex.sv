/*1) Write a constraint to generate the pattern 12345
2)write a constraint to generate the pattern 54321
3) Write a constraint to generate the pattern 10101010
4) Write a constraint to generate only even numbers in an array of size 100.
5) Write a constraint such that the size of array should be between 1 to 100.*/ 
//
//*1) Write a constraint to generate the pattern 12345
/*class pattern;

  rand bit[3:0] a[];
  
  constraint c1 {a.size==5;}
  constraint c2 {foreach( a[i])
  {
    a[i]==i+1;      
  } }
                
endclass

module tb;
pattern p1;

initial 
begin
p1=new();
  $display("array a=%p",p1.a);
p1.randomize;
     $display("a=%d",p1.a); 

end
endmodule*/

//2)write a constraint to generate the pattern 54321
/*class pattern2;
  rand bit[3:0] a[];
  constraint c1 {a.size==5;}
  constraint c2 {foreach(a[i]){a[i]==5-i;}}
endclass

module tb;
pattern2 p2;
initial
begin
p2=new();
  $display("array=%p",p2.a);
  p2.randomize();
  $display("a=%0d",p2.a);
end
endmodule*/
//============================================================================
//3) Write a constraint to generate the pattern 1 0 1 0 1 0 1 0
//                                              1 2 3 4 5 6 7 8
//                                              0 1 2 3 4 5 6 7 
/*class pattern3;
  rand bit[4:0] a[];
  constraint c1 {a.size==8;}
  constraint c2 {foreach(a[i])
                  { if(i%2==0)
                           a[i]==1;
                           else
                             a[i]==0; }}

endclass
module tb;
pattern3 p3;
initial
begin
p3=new();
  $display("arrray=%p",p3.a);
  assert(p3.randomize());
  $display("a=%p",p3.a);
end
endmodule*/
//============================================================================
//4) Write a constraint to generate only even numbers in an array of size 100.
/*class pattern4;
  rand bit [7:0] a[];
  constraint c1 {a.size==100;}
//  constraint c2 {foreach(a[i])
//  {if(i%2==0)
//    a[i]==i;
//     else
//       a[i]==i+1;}}
 constraint c2 {foreach(a[i])
   a[i]%2==0;}
endclass

module tb;
pattern4 p4;
initial 
begin
p4= new();
  $display("a=%p",p4.a);
  p4.randomize();
  $display("a=%p",p4.a);
end
endmodule */
//============================================================================
//5) Write a constraint such that the size of array should be between 1 to 100.
/*class pattern5;
  rand bit [7:0] a[];
  constraint c1 {a.size() inside{[1:100]};}
  constraint c2 {foreach(a[i])
    a[i]==i;}
endclass

module tb;
pattern5 p5;
initial 
begin
p5=new();
  $display("a=%p",p5.a);
  repeat(15)
  begin
  p5.randomize();
  $display("a=%p",p5.a);
  end 
end
endmodule*/
//============================================================================
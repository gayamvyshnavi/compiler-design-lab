#include<iostream>
#include<string>
using namespace std;
int main()
{
    string inp;
    int state;
    cout<<"Enter the string\n";
    cin>>inp;
    state=0;
    

    for(int i=0;i<inp.length();i++)
    {
               switch(state)
               {
               case 0:
               if(inp[i]=='a')
               {
                state=1;
               }
               else
               {
                state=3;
               }
               break;
               case 1:
               if(inp[i]=='a')
               {
                state=0;
               }
               else
               {
                state=2;
               }
               break;
            
               case 2:
               if(inp[i]=='a')
               {
                state=3;
               }
               else
               {
                state=1;
               }
               break;
               case 3:
               if(inp[i]=='a')
               {
                state=2;
               }
               else
               {
                state=0;
               }
               break;
               
               }  
    }
    if(state==0)
    {
        cout<<"the string is accepted\n";
    }
    else
    {
    cout<<"the string is not accepted\n";
    }
    }

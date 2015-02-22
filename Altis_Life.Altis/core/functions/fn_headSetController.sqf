//File Name: fn_headSetController.sqf	
//Author: Midnight	
//File Description:	Turns on Headset / ear plugs on	*/

if (player) then
	{
		if(life_headSet) then 
		{
			1 fadeSound 1;		
			hint "You have removed your earphones!";
			life_headSet = false;	
		}	
		
		else	
		{
			1 fadeSound 0.1;		
			hint "You have inserted your earphones!";
			life_headSet = true;	
		};
	}
	
else
	{	
		if(life_headSet) then 
			{	
				1 fadeSound 1;	
				hint "You have removed your earphones!";	
				life_headSet = false;	
			}	
			
		else	
			{	
				1 fadeSound 0.1;	
				hint "You have inserted your earphones!";	
				life_headSet = true;	
			};
	};
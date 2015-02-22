#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",7500],
			["C_Kart_01_Fuel_F",7500],
			["C_Kart_01_Red_F",7500],
			["C_Kart_01_Vrana_F",7500]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",35000],
			["I_Truck_02_medical_F",80000],
			["O_Truck_03_medical_F",85000],
			["B_Truck_01_medical_F",83000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",1500000],
			["O_Heli_Light_02_unarmed_F",2800000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000],
			["C_Hatchback_01_F",29000],
			["C_Offroad_01_F",35000],
			["C_SUV_01_F",43000]			
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",85000],		 // Truck
			["C_Van_01_box_F",100000],           // Truck Boxer
			["I_Truck_02_transport_F",250000],   // Zamak Transport
			["I_Truck_02_covered_F",330000],     // Zamak Transport Covered
			["B_Truck_01_transport_F",550000],  // HEMTT Transport
			["O_Truck_03_transport_F",570000],  // Tempest Transport
			["O_Truck_03_covered_F",700000],    // Tempest Transport Covered
			["B_Truck_01_box_F",1200000],        // HEMTT Box
			["O_Truck_03_device_F",2500000]      // Tempest Device
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],          // Quadebike
			["B_G_Offroad_01_F",35000],        // Offroad (guerilla)			
			["O_MRAP_02_F",900000],             // Ifrit
			["I_MRAP_03_F",1500000],			// Strider
			["B_Heli_Light_01_F",1500000]       // Hummingbird
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];	// Offroad armed (guerilla)
			["I_G_Offroad_01_armed_F",700000],  // Offroad armed
		};
	};
	
	case "cop_car":
	{
		_return pushBack ["B_Quadbike_01_F",5000];   // Quadebike
		_return pushBack ["C_Offroad_01_F",35000];   // Offroad
		_return pushBack ["C_SUV_01_F",45000];       // SUV
        _return pushBack ["C_Hatchback_01_sport_F",29000];       // Hatchback
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["B_MRAP_01_F",150000]; // Hunter
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["B_MRAP_01_F",120000]; // Hunter
            _return pushBack ["I_Truck_02_covered_F",150000]; // Zam
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",1500000],
			["C_Heli_Light_01_civil_F",1600000],
			["O_Heli_Light_02_unarmed_F",2500000],
			["B_Heli_Transport_03_unarmed_F",3000000],
			["I_Heli_Transport_02_F",4000000],
			["O_Heli_Transport_04_F",4500000],
			["O_Heli_Transport_04_bench_F",4500000],
			["O_Heli_Transport_04_box_F",3000000],
			["O_Heli_Transport_04_covered_F",5000000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["B_Heli_Light_01_F",1500000];
			_return pushBack ["C_Heli_Light_01_civil_F",1600000];
		}
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack ["B_Heli_Transport_03_F",2000000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",2500000];
		}
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["B_Heli_Transport_01_F",3200000];
			_return pushBack ["O_Heli_Transport_04_F",3500000];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["B_Heli_Light_01_F",1500000];
			_return pushBack ["C_Heli_Light_01_civil_F",1600000];
		}
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack ["B_Heli_Transport_03_F",2000000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",2500000];
		}
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["B_Heli_Transport_01_F",3200000];
			_return pushBack ["O_Heli_Transport_04_F",3500000];
			["B_MRAP_01_hmg_F",5000000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",65000],
			["C_Boat_Civil_01_F",200000],
			["B_Boat_Armed_01_minigun_F",1700000],
			["B_SDV_01_F",900000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",60000],
			["C_Boat_Civil_01_police_F",150000],
			["B_Boat_Armed_01_minigun_F",1500000],
			["B_SDV_01_F",700000]
		];
	};
};

_return;

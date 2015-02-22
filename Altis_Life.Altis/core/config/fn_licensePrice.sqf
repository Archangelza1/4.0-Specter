/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {10000}; //Drivers License cost
	case "boat": {15000}; //Boating license cost
	case "pilot": {250000}; //Pilot/air license cost
	case "gun": {45000}; //Firearm/gun license cost
	case "dive": {13000}; //Diving license cost
	case "oil": {100000}; //Oil processing license cost
	case "cair": {250000}; //Cop Pilot License cost
	case "swat": {500000}; //Swat License cost
	case "cg": {35000}; //Coast guard license cost
	case "heroin": {600000}; //Heroin processing license cost
	case "marijuana": {50000}; //Marijuana processing license cost
	case "medmarijuana": {50000}; //Medical Marijuana processing license cost
	case "gang": {1000000}; //Gang license cost
	case "rebel": {2000000}; //Rebel license cost
	case "truck": {20000};
	case "diamond": {1100000}; 
	case "salt": {80000}; 
	case "cocaine": {500000}; 
	case "sand": {45000}; 
	case "iron": {200000}; 
	case "copper": {40000}; 
	case "cement": {30000}; 
	case "mair": {250000}; 
	case "home": {2000000};
};
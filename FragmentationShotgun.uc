//
//This file was made by examining and borrowing some code from the reinforcement weapon pack.
//Go check it out, these guys are seriously talented! https://steamcommunity.com/sharedfiles/filedetails/?id=1147408497
class FragmentationShotgun extends KFMutator;

function InitMutator(string Options, out string ErrorMessage)
{
	super.InitMutator(Options, ErrorMessage);
	`log("PancorFrag Loaded!");
}

simulated function PostBeginPlay()
{
	Super.PostBeginPlay();
	SetTimer(1.0, true, 'UpdateTI');
}

simulated function UpdateTI()
{
	KFGameReplicationInfo(WorldInfo.GRI).TraderItems=KFGFxObject_TraderItems'PancorFragPackage.CustomTraderItems';	
}
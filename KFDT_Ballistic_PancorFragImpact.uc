//=============================================================================
// KFDT_Ballistic_PancorFragImpact
//=============================================================================
// Shell impact damage type for the PAncorFrag
//=============================================================================
// Killing Floor 2
// Copyright (C) 2018 Gear Shift Gaming LLC
//=============================================================================

class KFDT_Ballistic_PancorFragImpact extends KFDT_Ballistic_Shell
	abstract
	hidedropdown;

defaultproperties
{
	KDamageImpulse=2000
	KDeathUpKick=750
	KDeathVel=350

	KnockdownPower=125
	StumblePower=500
	GunHitPower=275

	WeaponDef=class'KFWeapDef_PancorFrag'


	ModifierPerkList(0)=class'KFPerk_Demolitionist'
	ModifierPerkList(1)=class'KFPerk_Support'
}

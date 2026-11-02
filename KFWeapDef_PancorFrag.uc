//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2018 Gear Shift Gaming
//=============================================================================
class KFWeapDef_PancorFrag extends KFWeaponDefinition
	abstract;

static function string GetItemLocalization(string KeyName)
{
	switch( Caps(KeyName) )
	{
		case "ITEMNAME":
			return "Pancor FRAG12";
		case "ITEMCATEGORY":
			return "KFWeapDef_PancorFrag";
		case "ITEMDESCRIPTION":
			return "A Pancor Jackhammer firing frag grenades. Don't let your friends get jealous.";
	}
}

DefaultProperties
{
	WeaponClassPath="PancorFrag.KFWeap_Shotgun_PancorFrag"
	ImagePath="PancorFragPackage.PancorFrag_UI_Tex"

	BuyPrice=2000
	AmmoPricePerMag=100 //110 //82

	EffectiveRange=30

	UpgradePrice[0]=1650

	UpgradeSellPrice[0]=1300
}
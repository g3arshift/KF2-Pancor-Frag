//=============================================================================
// KFWeap_Shotgun_PancorFrag
//=============================================================================
// Pancor Jackhammer Fragmentation Rounds Weapon Class
//=============================================================================
// Killing Floor 2
// Copyright (C) 2018 Gear Shift Gaming LLC
//=============================================================================

class KFWeap_Shotgun_PancorFrag extends KFWeap_ShotgunBase;

DefaultProperties
{
	//Inventory
	InventorySize=11
	GroupPriority=100
	WeaponSelectTexture=Texture2D'PancorFragPackage.PancorFrag_UI_Tex'
	// Shooting Animations
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3

    // FOV
 	MeshFOV=86
	MeshIronSightFOV=52
    PlayerIronSightFOV=70

	// Depth of field
	DOF_FG_FocalRadius=85
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=8.5,Z=0.0)
	IronSightPosition=(X=8,Y=0,Z=0)

	PackageKey="PancorFrag"
	FirstPersonMeshName="Wep_1P_AA12_MESH.Wep_1stP_AA12_Rig"
	FirstPersonAnimSetNames(0)="Wep_1P_AA12_ANIM.Wep_1stP_AA12_Anim"
	PickupMeshName="WEP_3P_AA12_MESH.Wep_AA12_Pickup"
	AttachmentArchetypeName="WEP_AA12_ARCH.Wep_AA12_3P"
	MuzzleFlashTemplateName="WEP_AA12_ARCH.Wep_AA12_MuzzleFlash"

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_Grenade'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_PancoFragShot'
	InstantHitDamage(DEFAULT_FIREMODE)=50.0 //25 //20
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_PancorFragImpact'
	PenetrationPower(DEFAULT_FIREMODE)=0.0
	FireInterval(DEFAULT_FIREMODE)=0.35
	FireOffset=(X=30,Y=5,Z=-4)
	// Shotgun
	NumPellets(DEFAULT_FIREMODE)=1

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_Grenade'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_PancoFragShot'
	InstantHitDamage(ALTFIRE_FIREMODE)=50.0 //25 //20
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_PancorFragImpact'
	PenetrationPower(ALTFIRE_FIREMODE)=0.0
	FireInterval(ALTFIRE_FIREMODE)=0.35
	FireOffset=(X=30,Y=5,Z=-4)
	// Shotgun
	NumPellets(ALTFIRE_FIREMODE)=1

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_AA12Shotgun'
	InstantHitDamage(BASH_FIREMODE)=33

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_1P')
    WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Fire_1P')

	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_AA12.Play_WEP_SA_AA12_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	// Ammo
	MagazineCapacity[0]=6
	SpareAmmoCapacity[0]=90 //120
	InitialSpareMags[0]=1
	bCanBeReloaded=true
	bReloadFromMagazine=true
	bHasFireLastAnims=false

	// Recoil
	maxRecoilPitch=1200
	minRecoilPitch=775
	maxRecoilYaw=800
	minRecoilYaw=-500
	RecoilRate=0.085
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.8
	FallingRecoilModifier=1.0
	HippedRecoilModifier=1.3
    
	AssociatedPerkClasses(0)=class'KFPerk_Support'
	AssociatedPerkClasses(1)=class'KFPerk_Demolitionist'

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil'

	// Weapon Upgrade stat boosts
	WeaponUpgrades[1]=(IncrementDamage=1.15f,IncrementWeight=1)
}
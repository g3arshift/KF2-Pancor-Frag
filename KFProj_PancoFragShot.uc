//=============================================================================
// KFProj_PancoFragShot
//=============================================================================
// PancoFrag projectile class
//=============================================================================
// Killing Floor 2
// Copyright (C) 2018 Gear Shift Gaming LLC
//=============================================================================

class KFProj_PancoFragShot extends KFProj_BallisticExplosive
	hidedropdown;

defaultproperties
{
    Physics=PHYS_Projectile
    Speed=5000
    MaxSpeed=5000
    TossZ=0
    GravityScale=1.0
    MomentumTransfer=50000.0
    ArmDistSquared=28125 // 1 meter. Live dangerously.
    LifeSpan=+1000.0f

    bWarnAIWhenFired=true

    ProjFlightTemplate=ParticleSystem'WEP_RPG7_EMIT.FX_RPG7_Projectile'
	ProjFlightTemplateZedTime=ParticleSystem'Wep_M16_M203_EMIT.FX_M16_M203_40mm_Projectile_ZEDTIME'
	ProjDudTemplate=ParticleSystem'Wep_M16_M203_EMIT.FX_M16_M203_40mm_Projectile_Dud'
	GrenadeBounceEffectInfo=KFImpactEffectInfo'FX_Impacts_ARCH.DefaultGrenadeImpacts'
    ProjDisintegrateTemplate=ParticleSystem'ZED_Siren_EMIT.FX_Siren_grenade_disable_01'

    AmbientSoundPlayEvent=AkEvent'WW_WEP_SA_M79.Play_WEP_SA_M79_Projectile_Loop'
    AmbientSoundStopEvent=AkEvent'WW_WEP_SA_M79.Stop_WEP_SA_M79_Projectile_Loop'

	// explosion
	Begin Object Class=KFGameExplosion Name=ExploTemplate0
		Damage=20
		DamageRadius=300
		DamageFalloffExponent=1.f
		DamageDelay=0.f

		// Damage Effects
		MyDamageType=class'KFDT_Piercing_NadeFragment'
		KnockDownStrength=0
		FractureMeshRadius=200.0
		FracturePartVel=500.0
		ExplosionEffects=KFImpactEffectInfo'FX_Impacts_ARCH.Explosions.FragGrenade_Explosion'
		ExplosionSound=AkEvent'WW_WEP_EXP_Grenade_Frag.Play_WEP_EXP_Grenade_Frag_Explosion'

        // Dynamic Light
        ExploLight=ExplosionPointLight
        ExploLightStartFadeOutTime=0.0
        ExploLightFadeOutTime=0.2

		// Camera Shake
		CamShake=CameraShake'FX_CameraShake_Arch.Grenades.Default_Grenade'
		CamShakeInnerRadius=100
		CamShakeOuterRadius=400
		CamShakeFalloff=1.5f
		bOrientCameraShakeTowardsEpicenter=true

		// Shards
		ShardClass=class'KFProj_PancoFragShot_Fragment'
		NumShards=32
	End Object
	ExplosionTemplate=ExploTemplate0

	// Temporary effect (5.14.14)
	ProjDisintegrateTemplate=ParticleSystem'ZED_Siren_EMIT.FX_Siren_grenade_disable_01'

	AssociatedPerkClass=class'KFPerk_Support'
	AssociatedPerkClass=class'KFPerk_Demolitionist'
}



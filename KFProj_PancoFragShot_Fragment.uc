//=============================================================================
// KFProj_PancoFragShot_Fragment
//=============================================================================
// FRAG 12 fragment projectie
//=============================================================================
// Killing Floor 2
// Copyright (C) 2018 Gear Shift Gaming LLC
//=============================================================================

class KFProj_PancoFragShot_Fragment extends KFProj_RicochetBullet
	hidedropdown;

simulated event HitWall(vector HitNormal, Actor Wall, PrimitiveComponent WallComp)
{
    SetRotation(rotator(Normal(Velocity)));
    SetPhysics(PHYS_Falling);
    
    // check if we should do a bounce, otherwise stick
    if( !Bounce(HitNormal, Wall) )
    {
        // Turn off the corona when it stops
    	if ( WorldInfo.NetMode != NM_DedicatedServer && ProjEffects!=None )
    	{
            ProjEffects.DeactivateSystem();
        }

        Explode(Location, HitNormal);
        ImpactedActor = None;

        bBounce = false;
    }
}

//==============
// Touching
// Overriden to get nails bouncing off of destructible meshes
simulated function ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
{
	if ( Other != Instigator && !Other.bWorldGeometry && Other.bCanBeDamaged )
	{
		if ( Pawn(other) != None )
		{
            Super.ProcessTouch(Other, HitLocation, HitNormal);
		}
		else
        {
            ProcessDestructibleTouchOnBounce( Other, HitLocation, HitNormal );
        }
	}
	else
	{
        Super.ProcessTouch(Other, HitLocation, HitNormal);;
	}
}

simulated function Tick( float DeltaTime )
{
    super.Tick(DeltaTime);

    if ( WorldInfo.NetMode != NM_DedicatedServer && Physics != PHYS_None )
    {
        SetRotation(Rotator(Normal(Velocity)));
    }
}

defaultproperties
{
	MaxSpeed=4500.0
	Speed=4500.0

    Damage=45
	DamageRadius=0
	MyDamageType=class'KFDT_Piercing_NadeFragment'
	MomentumTransfer=1.f

	bSyncToOriginalLocation=True
	bSyncToThirdPersonMuzzleLocation=false
	bNoReplicationToInstigator=false
    bReplicateClientHitsAsFragments=true

    BouncesLeft=4
    DampingFactor=0.8 //Not sure what this does. Maybe it's how much momentum it loses on each bounce? Or momentum kept?
    RicochetEffects=KFImpactEffectInfo'WEP_MKII_ARCH.MKII_Shrapnel_Impacts'

	ProjFlightTemplate=ParticleSystem'WEP_3P_MKII_EMIT.FX_MKII_Shrapnel'
	ProjFlightTemplateZedTime=ParticleSystem'WEP_3P_MKII_EMIT.FX_MKII_Shrapnel_ZEDTime'
}



.class public interface abstract Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierRoamingNtnListener"
.end annotation


# virtual methods
.method public blacklist onCarrierRoamingNtnAvailableServicesChanged([I)V
    .registers 2
    .param p1, "availableServices"    # [I

    .line 1858
    return-void
.end method

.method public blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 1849
    return-void
.end method

.method public abstract blacklist onCarrierRoamingNtnModeChanged(Z)V
.end method

.method public blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 2
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 1866
    return-void
.end method

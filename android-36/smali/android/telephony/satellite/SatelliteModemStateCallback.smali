.class public interface abstract Landroid/telephony/satellite/SatelliteModemStateCallback;
.super Ljava/lang/Object;
.source "SatelliteModemStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public blacklist onEmergencyModeChanged(Z)V
    .registers 2
    .param p1, "isEmergency"    # Z

    .line 45
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .registers 2
    .param p1, "causeCode"    # I

    .line 54
    return-void
.end method

.method public abstract whitelist onSatelliteModemStateChanged(I)V
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 62
    return-void
.end method

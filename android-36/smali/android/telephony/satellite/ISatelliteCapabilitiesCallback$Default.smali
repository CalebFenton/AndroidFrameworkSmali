.class public Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Default;
.super Ljava/lang/Object;
.source "ISatelliteCapabilitiesCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilities;)V
    .registers 2
    .param p1, "capabilities"    # Landroid/telephony/satellite/SatelliteCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

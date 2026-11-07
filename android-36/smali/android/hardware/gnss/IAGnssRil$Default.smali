.class public Landroid/hardware/gnss/IAGnssRil$Default;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnssRil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IAGnssRilCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IAGnssRilCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setRefLocation(Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;)V
    .registers 2
    .param p1, "agnssReflocation"    # Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setSetId(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "setid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist updateNetworkState(Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;)V
    .registers 2
    .param p1, "attributes"    # Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

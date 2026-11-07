.class public interface abstract Landroid/hardware/gnss/IAGnssRil;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;,
        Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;,
        Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;,
        Landroid/hardware/gnss/IAGnssRil$SetIdType;,
        Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationType;,
        Landroid/hardware/gnss/IAGnssRil$Stub;,
        Landroid/hardware/gnss/IAGnssRil$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist NETWORK_CAPABILITY_NOT_METERED:I = 0x1

.field public static final blacklist NETWORK_CAPABILITY_NOT_ROAMING:I = 0x2

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 323
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$IAGnssRil"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IAGnssRil;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCallback(Landroid/hardware/gnss/IAGnssRilCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setRefLocation(Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSetId(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateNetworkState(Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

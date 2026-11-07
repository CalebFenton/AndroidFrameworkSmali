.class public interface abstract Landroid/hardware/gnss/IGnssCallback;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;,
        Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;,
        Landroid/hardware/gnss/IGnssCallback$GnssSvFlags;,
        Landroid/hardware/gnss/IGnssCallback$GnssStatusValue;,
        Landroid/hardware/gnss/IGnssCallback$Stub;,
        Landroid/hardware/gnss/IGnssCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final blacklist CAPABILITY_CORRELATION_VECTOR:I = 0x1000

.field public static final blacklist CAPABILITY_GEOFENCING:I = 0x20

.field public static final blacklist CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final blacklist CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final blacklist CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final blacklist CAPABILITY_MEASUREMENT_CORRECTIONS_FOR_DRIVING:I = 0x4000

.field public static final blacklist CAPABILITY_MSA:I = 0x4

.field public static final blacklist CAPABILITY_MSB:I = 0x2

.field public static final blacklist CAPABILITY_NAV_MESSAGES:I = 0x80

.field public static final blacklist CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final blacklist CAPABILITY_SATELLITE_BLOCKLIST:I = 0x200

.field public static final blacklist CAPABILITY_SATELLITE_PVT:I = 0x2000

.field public static final blacklist CAPABILITY_SCHEDULING:I = 0x1

.field public static final blacklist CAPABILITY_SINGLE_SHOT:I = 0x8

.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 524
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$IGnssCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist gnssAcquireWakelockCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssLocationCb(Landroid/hardware/gnss/GnssLocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssNmeaCb(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssReleaseWakelockCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssRequestLocationCb(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssRequestTimeCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssSetCapabilitiesCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssSetSystemInfoCb(Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssStatusCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssSvStatusCb([Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

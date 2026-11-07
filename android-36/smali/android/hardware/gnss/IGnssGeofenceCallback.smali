.class public interface abstract Landroid/hardware/gnss/IGnssGeofenceCallback;
.super Ljava/lang/Object;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;,
        Landroid/hardware/gnss/IGnssGeofenceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist AVAILABLE:I = 0x2

.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist ENTERED:I = 0x1

.field public static final blacklist ERROR_GENERIC:I = -0x95

.field public static final blacklist ERROR_ID_EXISTS:I = -0x65

.field public static final blacklist ERROR_ID_UNKNOWN:I = -0x66

.field public static final blacklist ERROR_INVALID_TRANSITION:I = -0x67

.field public static final blacklist ERROR_TOO_MANY_GEOFENCES:I = -0x64

.field public static final blacklist EXITED:I = 0x2

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist OPERATION_SUCCESS:I = 0x0

.field public static final blacklist UNAVAILABLE:I = 0x1

.field public static final blacklist UNCERTAIN:I = 0x4

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 414
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$IGnssGeofenceCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist gnssGeofenceAddCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssGeofencePauseCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssGeofenceRemoveCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssGeofenceResumeCb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

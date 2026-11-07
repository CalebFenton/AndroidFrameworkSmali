.class public interface abstract Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;
.super Ljava/lang/Object;
.source "IMeasurementCorrectionsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;,
        Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_EXCESS_PATH_LENGTH:I = 0x2

.field public static final blacklist CAPABILITY_LOS_SATS:I = 0x1

.field public static final blacklist CAPABILITY_REFLECTING_PLANE:I = 0x4

.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 215
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$measurement_corrections$IMeasurementCorrectionsCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist setCapabilitiesCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwResponseType;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwRequestor;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwProtocolStack;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;,
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 251
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$visibility_control$IGnssVisibilityControlCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist isInEmergencySession()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist nfwNotifyCb(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

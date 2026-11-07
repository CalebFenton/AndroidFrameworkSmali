.class public interface abstract Landroid/hardware/radio/ims/IRadioImsIndication;
.super Ljava/lang/Object;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioImsIndication$Stub;,
        Landroid/hardware/radio/ims/IRadioImsIndication$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "b2a615a151c7114c4216b1987fd32d40c797d00a"

.field public static final blacklist VERSION:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 314
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$radio$ims$IRadioImsIndication"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/radio/ims/IRadioImsIndication;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist notifyAnbr(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerImsDeregistration(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

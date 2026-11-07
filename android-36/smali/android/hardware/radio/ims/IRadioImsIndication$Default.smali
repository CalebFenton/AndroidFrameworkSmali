.class public Landroid/hardware/radio/ims/IRadioImsIndication$Default;
.super Ljava/lang/Object;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyAnbr(IIII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "mediaType"    # I
    .param p3, "direction"    # I
    .param p4, "bitsPerSecond"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "token"    # I
    .param p3, "info"    # Landroid/hardware/radio/ims/ConnectionFailureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist triggerImsDeregistration(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

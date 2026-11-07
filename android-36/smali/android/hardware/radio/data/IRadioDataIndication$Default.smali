.class public Landroid/hardware/radio/data/IRadioDataIndication$Default;
.super Ljava/lang/Object;
.source "IRadioDataIndication.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataIndication;
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

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dataCallListChanged(I[Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "dcList"    # [Landroid/hardware/radio/data/SetupDataCallResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keepaliveStatus(ILandroid/hardware/radio/data/KeepaliveStatus;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # Landroid/hardware/radio/data/KeepaliveStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist pcoData(ILandroid/hardware/radio/data/PcoDataInfo;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "pco"    # Landroid/hardware/radio/data/PcoDataInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist slicingConfigChanged(ILandroid/hardware/radio/data/SlicingConfig;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "slicingConfig"    # Landroid/hardware/radio/data/SlicingConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist unthrottleApn(ILandroid/hardware/radio/data/DataProfileInfo;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "dataProfileInfo"    # Landroid/hardware/radio/data/DataProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

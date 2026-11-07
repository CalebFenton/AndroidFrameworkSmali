.class public Landroid/hardware/radio/data/IRadioData$Default;
.super Ljava/lang/Object;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocatePduSessionId(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelHandover(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist deactivateDataCall(III)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist getDataCallList(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 319
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlicingConfig(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist releasePduSessionId(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist setDataAllowed(IZ)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "profiles"    # [Landroid/hardware/radio/data/DataProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist setDataThrottling(IBJ)V
    .registers 5
    .param p1, "serial"    # I
    .param p2, "dataThrottlingAction"    # B
    .param p3, "completionDurationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public blacklist setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "dataProfileInfo"    # Landroid/hardware/radio/data/DataProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V
    .registers 3
    .param p1, "radioDataResponse"    # Landroid/hardware/radio/data/IRadioDataResponse;
    .param p2, "radioDataIndication"    # Landroid/hardware/radio/data/IRadioDataIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public blacklist setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "accessNetwork"    # I
    .param p3, "dataProfileInfo"    # Landroid/hardware/radio/data/DataProfileInfo;
    .param p4, "roamingAllowed"    # Z
    .param p5, "reason"    # I
    .param p6, "addresses"    # [Landroid/hardware/radio/data/LinkAddress;
    .param p7, "dnses"    # [Ljava/lang/String;
    .param p8, "pduSessionId"    # I
    .param p9, "sliceInfo"    # Landroid/hardware/radio/data/SliceInfo;
    .param p10, "matchAllRuleAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    return-void
.end method

.method public blacklist startHandover(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    return-void
.end method

.method public blacklist startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "keepalive"    # Landroid/hardware/radio/data/KeepaliveRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    return-void
.end method

.method public blacklist stopKeepalive(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "sessionHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    return-void
.end method

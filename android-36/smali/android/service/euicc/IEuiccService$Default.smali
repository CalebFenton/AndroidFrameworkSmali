.class public Landroid/service/euicc/IEuiccService$Default;
.super Ljava/lang/Object;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/service/euicc/IDeleteSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "resolvedBundle"    # Landroid/os/Bundle;
    .param p7, "callback"    # Landroid/service/euicc/IDownloadSubscriptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IEraseSubscriptionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "options"    # I
    .param p3, "callback"    # Landroid/service/euicc/IEraseSubscriptionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist getAvailableMemoryInBytes(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callback"    # Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "callback"    # Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEidCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetOtaStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "statusChangedCallback"    # Landroid/service/euicc/IOtaStatusChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "callback"    # Landroid/service/euicc/ISwitchToSubscriptionCallback;
    .param p6, "useLegacyApi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

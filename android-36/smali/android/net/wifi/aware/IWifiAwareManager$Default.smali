.class public Landroid/net/wifi/aware/IWifiAwareManager$Default;
.super Ljava/lang/Object;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZLandroid/os/Bundle;Z)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p5, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p6, "notifyOnIdentityChanged"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "forAwareOffload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist disconnect(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist enableInstantCommunicationMode(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMasterPreference(ILandroid/os/IBinder;Landroid/net/wifi/IIntegerListener;)V
    .registers 4
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "listener"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist getPairedDevices(Ljava/lang/String;Landroid/net/wifi/IListListener;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/wifi/IListListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist initiateBootStrappingSetupRequest(IIII)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist initiateNanPairingSetupRequest(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "pairingDeviceAlias"    # Ljava/lang/String;
    .param p6, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist isDeviceAttached()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstantCommunicationModeEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOpportunisticModeEnabled(Ljava/lang/String;Landroid/net/wifi/IBooleanListener;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist isSetChannelOnDataPathSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsageEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist publish(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .param p4, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p5, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist removePairedDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist requestMacAddresses(I[ILandroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "peerIds"    # [I
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist resetPairedDevices(Ljava/lang/String;)V
    .registers 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist responseNanPairingSetupRequest(IIIILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "requestId"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "pairingDeviceAlias"    # Ljava/lang/String;
    .param p7, "accept"    # Z
    .param p8, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist resume(II)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist sendMessage(III[BII)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "discoverySessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist setAwareParams(Landroid/net/wifi/aware/AwareParams;)V
    .registers 2
    .param p1, "parameters"    # Landroid/net/wifi/aware/AwareParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setMasterPreference(ILandroid/os/IBinder;I)V
    .registers 4
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "mp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist setOpportunisticModeEnabled(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist subscribe(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "clientId"    # I
    .param p4, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p5, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist suspend(II)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist terminateSession(II)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "discoverySessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .registers 4
    .param p1, "clientId"    # I
    .param p2, "discoverySessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .registers 4
    .param p1, "clientId"    # I
    .param p2, "discoverySessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

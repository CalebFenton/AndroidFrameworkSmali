.class public Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Default;
.super Ljava/lang/Object;
.source "IThreadNetworkController.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IThreadNetworkController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist activateEphemeralKeyMode(JLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 4
    .param p1, "lifetimeMillis"    # J
    .param p3, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createRandomizedDataset(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;)V
    .registers 3
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist deactivateEphemeralKeyMode(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist getThreadVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist join(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "activeOpDataset"    # Landroid/net/thread/ActiveOperationalDataset;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist leave(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist registerConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist registerOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist registerStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/thread/IStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist scheduleMigration(Landroid/net/thread/PendingOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "pendingOpDataset"    # Landroid/net/thread/PendingOperationalDataset;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setChannelMaxPowers([Landroid/net/connectivity/android/net/thread/ChannelMaxPower;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "channelMaxPowers"    # [Landroid/net/connectivity/android/net/thread/ChannelMaxPower;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setConfiguration(Landroid/net/thread/ThreadConfiguration;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "config"    # Landroid/net/thread/ThreadConfiguration;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setEnabled(ZLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist setTestNetworkAsUpstream(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .registers 3
    .param p1, "testNetworkInterfaceName"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist unregisterConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist unregisterOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist unregisterStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/thread/IStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

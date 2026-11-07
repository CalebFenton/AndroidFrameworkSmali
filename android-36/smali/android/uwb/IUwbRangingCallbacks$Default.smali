.class public Landroid/uwb/IUwbRangingCallbacks$Default;
.super Ljava/lang/Object;
.source "IUwbRangingCallbacks.java"

# interfaces
.implements Landroid/uwb/IUwbRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbRangingCallbacks;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    return-void
.end method

.method public blacklist onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    return-void
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    return-void
.end method

.method public blacklist onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    return-void
.end method

.method public blacklist onDataTransferPhaseConfigFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    return-void
.end method

.method public blacklist onDataTransferPhaseConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    return-void
.end method

.method public blacklist onHybridSessionControleeConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public blacklist onHybridSessionControleeConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist onHybridSessionControllerConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    return-void
.end method

.method public blacklist onHybridSessionControllerConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    return-void
.end method

.method public blacklist onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onRangingOpened(Landroid/uwb/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "result"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public blacklist onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist onRangingRoundsUpdateDtTagStatus(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    return-void
.end method

.method public blacklist onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    return-void
.end method

.method public blacklist onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    return-void
.end method

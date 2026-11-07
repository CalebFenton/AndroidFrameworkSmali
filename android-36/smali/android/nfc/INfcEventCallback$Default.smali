.class public Landroid/nfc/INfcEventCallback$Default;
.super Ljava/lang/Object;
.source "INfcEventCallback.java"

# interfaces
.implements Landroid/nfc/INfcEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcEventCallback;
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

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAidConflictOccurred(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onAidNotRouted(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onInternalErrorReported(I)V
    .registers 2
    .param p1, "errorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onNfcStateChanged(I)V
    .registers 2
    .param p1, "nfcState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V
    .registers 2
    .param p1, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onObserveModeStateChanged(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onPreferredServiceChanged(Landroid/nfc/ComponentNameAndUser;)V
    .registers 2
    .param p1, "ComponentNameAndUser"    # Landroid/nfc/ComponentNameAndUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onRemoteFieldChanged(Z)V
    .registers 2
    .param p1, "isDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

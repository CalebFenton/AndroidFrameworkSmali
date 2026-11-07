.class public Landroid/hardware/radio/ITunerCallback$Default;
.super Ljava/lang/Object;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
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

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAntennaState(Z)V
    .registers 2
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onBackgroundScanAvailabilityChange(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onBackgroundScanComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onConfigFlagUpdated(IZ)V
    .registers 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onEmergencyAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onError(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist onProgramListChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onTrafficAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

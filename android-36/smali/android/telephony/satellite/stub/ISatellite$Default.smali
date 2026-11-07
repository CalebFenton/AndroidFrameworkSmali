.class public Landroid/telephony/satellite/stub/ISatellite$Default;
.super Ljava/lang/Object;
.source "ISatellite.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatellite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatellite;
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
.method public blacklist abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "errorCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 4
    .param p1, "simSlot"    # I
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p3, "callback"    # Landroid/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "enableAttributes"    # Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "timeout"    # I
    .param p3, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "datagram"    # Landroid/telephony/satellite/stub/SatelliteDatagram;
    .param p2, "isEmergency"    # Z
    .param p3, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "simSlot"    # I
    .param p2, "satelliteEnabled"    # Z
    .param p3, "callback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    return-void
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/satellite/stub/ISatelliteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .registers 5
    .param p1, "simSlot"    # I
    .param p4, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    .local p2, "carrierPlmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "allSatellitePlmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    return-void
.end method

.method public blacklist updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    .local p1, "systemSelectionSpecifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/stub/SystemSelectionSpecifier;>;"
    return-void
.end method

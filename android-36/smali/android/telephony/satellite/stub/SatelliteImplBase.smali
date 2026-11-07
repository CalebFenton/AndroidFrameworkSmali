.class public Landroid/telephony/satellite/stub/SatelliteImplBase;
.super Landroid/telephony/satellite/stub/SatelliteService;
.source "SatelliteImplBase.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteImplBase"


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 54
    invoke-direct {p0}, Landroid/telephony/satellite/stub/SatelliteService;-><init>()V

    .line 66
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;-><init>(Landroid/telephony/satellite/stub/SatelliteImplBase;)V

    iput-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    .line 55
    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 689
    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 321
    return-void
.end method

.method public final blacklist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 483
    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IBooleanConsumer;

    .line 368
    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 4
    .param p1, "simLogicalSlotIndex"    # I
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p3, "callback"    # Landroid/telephony/IBooleanConsumer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IBooleanConsumer;

    .line 392
    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    .line 416
    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "enableAttributes"    # Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 344
    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "timeout"    # I
    .param p3, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 310
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IIntegerConsumer;

    .line 537
    return-void
.end method

.method public blacklist requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;

    .line 660
    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/IIntegerConsumer;

    .line 563
    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "datagram"    # Landroid/telephony/satellite/stub/SatelliteDatagram;
    .param p2, "isEmergency"    # Z
    .param p3, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 511
    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "simLogicalSlotIndex"    # I
    .param p2, "satelliteEnabled"    # Z
    .param p3, "callback"    # Landroid/telephony/IIntegerConsumer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    return-void
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/satellite/stub/ISatelliteListener;

    .line 286
    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .registers 5
    .param p1, "simLogicalSlotIndex"    # I
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    .local p2, "carrierPlmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "allSatellitePlmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 671
    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 437
    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 680
    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 457
    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "resultCallback"    # Landroid/telephony/IIntegerConsumer;

    .line 700
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

    .line 712
    .local p1, "systemSelectionSpecifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/stub/SystemSelectionSpecifier;>;"
    return-void
.end method

.class public Landroid/nearby/NearbyManager;
.super Ljava/lang/Object;
.source "NearbyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/NearbyManager$ScanListenerTransport;,
        Landroid/nearby/NearbyManager$ScanStatus;,
        Landroid/nearby/NearbyManager$BroadcastListenerTransport;,
        Landroid/nearby/NearbyManager$OffloadTransport;,
        Landroid/nearby/NearbyManager$PoweredOffFindingMode;
    }
.end annotation


# static fields
.field private static final blacklist POWERED_OFF_FINDING_EID_LENGTH:I = 0x14

.field public static final whitelist POWERED_OFF_FINDING_MODE_DISABLED:I = 0x1

.field public static final whitelist POWERED_OFF_FINDING_MODE_ENABLED:I = 0x2

.field public static final whitelist POWERED_OFF_FINDING_MODE_UNSUPPORTED:I = 0x0

.field private static final blacklist POWER_OFF_FINDING_SUPPORTED_PROPERTY_PERSIST:Ljava/lang/String; = "persist.bluetooth.finder.supported"

.field private static final blacklist POWER_OFF_FINDING_SUPPORTED_PROPERTY_RO:Ljava/lang/String; = "ro.bluetooth.finder.supported"

.field private static final blacklist TAG:Ljava/lang/String; = "NearbyManager"

.field private static final blacklist sBroadcastListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/nearby/BroadcastCallback;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/nearby/NearbyManager$BroadcastListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sScanListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/nearby/ScanCallback;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/nearby/NearbyManager$ScanListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/nearby/INearbyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;
    .registers 2

    invoke-static {p0, p1}, Landroid/nearby/NearbyManager;->toClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    .line 137
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/nearby/INearbyManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nearby/INearbyManager;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    .line 152
    return-void
.end method

.method private blacklist areLocationAndBluetoothEnabled()Z
    .registers 3

    .line 590
    iget-object v0, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 590
    :goto_27
    return v0
.end method

.method private blacklist isPoweredOffFindingSupported()Z
    .registers 2

    .line 584
    const-string v0, "ro.bluetooth.finder.supported"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 585
    const-string v0, "persist.bluetooth.finder.supported"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 584
    :goto_1c
    return v0
.end method

.method static synthetic blacklist lambda$setPoweredOffFindingEphemeralIds$0([B)Landroid/nearby/PoweredOffFindingEphemeralId;
    .registers 3
    .param p0, "eid"    # [B

    .line 503
    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 504
    new-instance v0, Landroid/nearby/PoweredOffFindingEphemeralId;

    invoke-direct {v0}, Landroid/nearby/PoweredOffFindingEphemeralId;-><init>()V

    .line 505
    .local v0, "ephemeralId":Landroid/nearby/PoweredOffFindingEphemeralId;
    iput-object p0, v0, Landroid/nearby/PoweredOffFindingEphemeralId;->bytes:[B

    .line 506
    return-object v0
.end method

.method private static blacklist toClientNearbyDevice(Landroid/nearby/NearbyDeviceParcelable;I)Landroid/nearby/NearbyDevice;
    .registers 5
    .param p0, "nearbyDeviceParcelable"    # Landroid/nearby/NearbyDeviceParcelable;
    .param p1, "scanType"    # I

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_45

    .line 161
    new-instance v0, Landroid/nearby/FastPairDevice$Builder;

    invoke-direct {v0}, Landroid/nearby/FastPairDevice$Builder;-><init>()V

    .line 162
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setName(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getMedium()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->addMedium(I)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setRssi(I)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getTxPower()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setTxPower(I)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getFastPairModelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setModelId(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setBluetoothAddress(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setData([B)Landroid/nearby/FastPairDevice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nearby/FastPairDevice$Builder;->build()Landroid/nearby/FastPairDevice;

    move-result-object v0

    .line 161
    return-object v0

    .line 171
    :cond_45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_56

    .line 172
    invoke-virtual {p0}, Landroid/nearby/NearbyDeviceParcelable;->getPresenceDevice()Landroid/nearby/PresenceDevice;

    move-result-object v0

    .line 173
    .local v0, "presenceDevice":Landroid/nearby/PresenceDevice;
    if-nez v0, :cond_55

    .line 174
    const-string v1, "NearbyManager"

    const-string v2, "Cannot find any Presence device in discovered NearbyDeviceParcelable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_55
    return-object v0

    .line 179
    .end local v0    # "presenceDevice":Landroid/nearby/PresenceDevice;
    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist getPoweredOffFindingMode()I
    .registers 3

    .line 572
    invoke-direct {p0}, Landroid/nearby/NearbyManager;->isPoweredOffFindingSupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 573
    const/4 v0, 0x0

    return v0

    .line 576
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    invoke-interface {v0}, Landroid/nearby/INearbyManager;->getPoweredOffModeEnabled()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_14

    if-eqz v0, :cond_12

    .line 577
    const/4 v0, 0x2

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    .line 576
    :goto_13
    return v0

    .line 578
    :catch_14
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryOffloadCapability(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/nearby/OffloadCapability;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/nearby/OffloadCapability;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :try_start_6
    iget-object v0, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    new-instance v1, Landroid/nearby/NearbyManager$OffloadTransport;

    invoke-direct {v1, p1, p2}, Landroid/nearby/NearbyManager$OffloadTransport;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/nearby/INearbyManager;->queryOffloadCapability(Landroid/nearby/aidl/IOffloadCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 335
    nop

    .line 336
    return-void

    .line 333
    :catch_12
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPoweredOffFindingEphemeralIds(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 496
    .local p1, "eids":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Landroid/nearby/NearbyManager;->isPoweredOffFindingSupported()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 501
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/nearby/NearbyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/nearby/NearbyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 507
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 509
    .local v0, "ephemeralIdList":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PoweredOffFindingEphemeralId;>;"
    :try_start_20
    iget-object v1, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    invoke-interface {v1, v0}, Landroid/nearby/INearbyManager;->setPoweredOffFindingEphemeralIds(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    .line 512
    nop

    .line 514
    return-void

    .line 510
    :catch_27
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 498
    .end local v0    # "ephemeralIdList":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PoweredOffFindingEphemeralId;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Powered off finding is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPoweredOffFindingMode(I)V
    .registers 7
    .param p1, "poweredOffFindingMode"    # I

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_a

    :cond_8
    move v3, v0

    goto :goto_b

    :cond_a
    :goto_a
    move v3, v1

    :goto_b
    const-string v4, "invalid poweredOffFindingMode"

    invoke-static {v3, v4}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 544
    invoke-direct {p0}, Landroid/nearby/NearbyManager;->isPoweredOffFindingSupported()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 548
    if-ne p1, v2, :cond_21

    .line 549
    invoke-direct {p0}, Landroid/nearby/NearbyManager;->areLocationAndBluetoothEnabled()Z

    move-result v3

    const-string v4, "Location services and Bluetooth must be on"

    invoke-static {v3, v4}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 553
    :cond_21
    :try_start_21
    iget-object v3, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    if-ne p1, v2, :cond_26

    move v0, v1

    :cond_26
    invoke-interface {v3, v0}, Landroid/nearby/INearbyManager;->setPoweredOffModeEnabled(Z)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_2b

    .line 557
    nop

    .line 558
    return-void

    .line 555
    :catch_2b
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 545
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Powered off finding is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startBroadcast(Landroid/nearby/BroadcastRequest;Ljava/util/concurrent/Executor;Landroid/nearby/BroadcastCallback;)V
    .registers 11
    .param p1, "broadcastRequest"    # Landroid/nearby/BroadcastRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/nearby/BroadcastCallback;

    .line 273
    :try_start_0
    sget-object v0, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4f

    .line 274
    :try_start_3
    sget-object v1, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 276
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$BroadcastListenerTransport;>;"
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyManager$BroadcastListenerTransport;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 277
    .local v2, "transport":Landroid/nearby/NearbyManager$BroadcastListenerTransport;
    :goto_15
    if-nez v2, :cond_1e

    .line 278
    new-instance v3, Landroid/nearby/NearbyManager$BroadcastListenerTransport;

    invoke-direct {v3, p3, p2}, Landroid/nearby/NearbyManager$BroadcastListenerTransport;-><init>(Landroid/nearby/BroadcastCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    goto :goto_28

    .line 280
    :cond_1e
    invoke-virtual {v2}, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->isRegistered()Z

    move-result v3

    invoke-static {v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 281
    invoke-virtual {v2, p2}, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 283
    :goto_28
    iget-object v3, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    new-instance v4, Landroid/nearby/BroadcastRequestParcelable;

    invoke-direct {v4, p1}, Landroid/nearby/BroadcastRequestParcelable;-><init>(Landroid/nearby/BroadcastRequest;)V

    iget-object v5, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/nearby/INearbyManager;->startBroadcast(Landroid/nearby/BroadcastRequestParcelable;Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v3, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    nop

    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$BroadcastListenerTransport;>;"
    .end local v2    # "transport":Landroid/nearby/NearbyManager$BroadcastListenerTransport;
    monitor-exit v0

    .line 289
    nop

    .line 290
    return-void

    .line 286
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    .end local p0    # "this":Landroid/nearby/NearbyManager;
    .end local p1    # "broadcastRequest":Landroid/nearby/BroadcastRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/nearby/BroadcastCallback;
    :try_start_4e
    throw v1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 287
    .restart local p0    # "this":Landroid/nearby/NearbyManager;
    .restart local p1    # "broadcastRequest":Landroid/nearby/BroadcastRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/nearby/BroadcastCallback;
    :catch_4f
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startScan(Landroid/nearby/ScanRequest;Ljava/util/concurrent/Executor;Landroid/nearby/ScanCallback;)I
    .registers 11
    .param p1, "scanRequest"    # Landroid/nearby/ScanRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scanCallback"    # Landroid/nearby/ScanCallback;

    .line 198
    const-string v0, "scanRequest must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-string v0, "scanCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    :try_start_f
    sget-object v0, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_61

    .line 204
    :try_start_12
    sget-object v1, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 205
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$ScanListenerTransport;>;"
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyManager$ScanListenerTransport;

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 206
    .local v2, "transport":Landroid/nearby/NearbyManager$ScanListenerTransport;
    :goto_24
    if-nez v2, :cond_31

    .line 207
    new-instance v3, Landroid/nearby/NearbyManager$ScanListenerTransport;

    invoke-virtual {p1}, Landroid/nearby/ScanRequest;->getScanType()I

    move-result v4

    invoke-direct {v3, v4, p3, p2}, Landroid/nearby/NearbyManager$ScanListenerTransport;-><init>(ILandroid/nearby/ScanCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    goto :goto_3b

    .line 210
    :cond_31
    invoke-virtual {v2}, Landroid/nearby/NearbyManager$ScanListenerTransport;->isRegistered()Z

    move-result v3

    invoke-static {v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 211
    invoke-virtual {v2, p2}, Landroid/nearby/NearbyManager$ScanListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 213
    :goto_3b
    iget-object v3, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    iget-object v4, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-interface {v3, p1, v2, v4, v5}, Landroid/nearby/INearbyManager;->registerScanListener(Landroid/nearby/ScanRequest;Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 215
    .local v3, "status":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    .line 216
    monitor-exit v0

    return v3

    .line 218
    :cond_52
    sget-object v5, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p3, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v0

    return v4

    .line 220
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$ScanListenerTransport;>;"
    .end local v2    # "transport":Landroid/nearby/NearbyManager$ScanListenerTransport;
    .end local v3    # "status":I
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_12 .. :try_end_60} :catchall_5e

    .end local p0    # "this":Landroid/nearby/NearbyManager;
    .end local p1    # "scanRequest":Landroid/nearby/ScanRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "scanCallback":Landroid/nearby/ScanCallback;
    :try_start_60
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_61} :catch_61

    .line 221
    .restart local p0    # "this":Landroid/nearby/NearbyManager;
    .restart local p1    # "scanRequest":Landroid/nearby/ScanRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "scanCallback":Landroid/nearby/ScanCallback;
    :catch_61
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopBroadcast(Landroid/nearby/BroadcastCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/nearby/BroadcastCallback;

    .line 302
    :try_start_0
    sget-object v0, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_39

    .line 303
    :try_start_3
    sget-object v1, Landroid/nearby/NearbyManager;->sBroadcastListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 305
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$BroadcastListenerTransport;>;"
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyManager$BroadcastListenerTransport;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 306
    .local v2, "transport":Landroid/nearby/NearbyManager$BroadcastListenerTransport;
    :goto_15
    if-eqz v2, :cond_2c

    .line 307
    invoke-virtual {v2}, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->unregister()V

    .line 308
    iget-object v3, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    iget-object v4, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-interface {v3, v2, v4, v5}, Landroid/nearby/INearbyManager;->stopBroadcast(Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 311
    :cond_2c
    const-string v3, "NearbyManager"

    const-string v4, "Cannot stop broadcast with this callback because it is never registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$BroadcastListenerTransport;>;"
    .end local v2    # "transport":Landroid/nearby/NearbyManager$BroadcastListenerTransport;
    :goto_33
    monitor-exit v0

    .line 317
    nop

    .line 318
    return-void

    .line 314
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    .end local p0    # "this":Landroid/nearby/NearbyManager;
    .end local p1    # "callback":Landroid/nearby/BroadcastCallback;
    :try_start_38
    throw v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39

    .line 315
    .restart local p0    # "this":Landroid/nearby/NearbyManager;
    .restart local p1    # "callback":Landroid/nearby/BroadcastCallback;
    :catch_39
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopScan(Landroid/nearby/ScanCallback;)V
    .registers 8
    .param p1, "scanCallback"    # Landroid/nearby/ScanCallback;

    .line 240
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null scanCallback"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 243
    :try_start_a
    sget-object v0, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_43

    .line 244
    :try_start_d
    sget-object v1, Landroid/nearby/NearbyManager;->sScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 246
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$ScanListenerTransport;>;"
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyManager$ScanListenerTransport;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 247
    .local v2, "transport":Landroid/nearby/NearbyManager$ScanListenerTransport;
    :goto_1f
    if-eqz v2, :cond_36

    .line 248
    invoke-virtual {v2}, Landroid/nearby/NearbyManager$ScanListenerTransport;->unregister()V

    .line 249
    iget-object v3, p0, Landroid/nearby/NearbyManager;->mService:Landroid/nearby/INearbyManager;

    iget-object v4, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/nearby/NearbyManager;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-interface {v3, v2, v4, v5}, Landroid/nearby/INearbyManager;->unregisterScanListener(Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 252
    :cond_36
    const-string v3, "NearbyManager"

    const-string v4, "Cannot stop scan with this callback because it is never registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/nearby/NearbyManager$ScanListenerTransport;>;"
    .end local v2    # "transport":Landroid/nearby/NearbyManager$ScanListenerTransport;
    :goto_3d
    monitor-exit v0

    .line 258
    nop

    .line 259
    return-void

    .line 255
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_40

    .end local p0    # "this":Landroid/nearby/NearbyManager;
    .end local p1    # "scanCallback":Landroid/nearby/ScanCallback;
    :try_start_42
    throw v1
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_43} :catch_43

    .line 256
    .restart local p0    # "this":Landroid/nearby/NearbyManager;
    .restart local p1    # "scanCallback":Landroid/nearby/ScanCallback;
    :catch_43
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

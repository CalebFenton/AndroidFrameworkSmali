.class public Landroid/telephony/TelephonyRegistryManager;
.super Ljava/lang/Object;
.source "TelephonyRegistryManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;,
        Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist LISTEN_CODE_CHANGE:J = 0x8cc3350L

.field public static final blacklist SIM_ACTIVATION_TYPE_DATA:I = 0x1

.field public static final blacklist SIM_ACTIVATION_TYPE_VOICE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyRegistryManager"

.field private static final blacklist sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static final blacklist sSatelliteStateChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/satellite/SatelliteStateChangeListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;",
            "Lcom/android/internal/telephony/ICarrierConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;",
            "Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            "Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1555
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    .line 1699
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 126
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_2c

    .line 127
    nop

    .line 128
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 130
    :cond_2c
    return-void
.end method

.method private blacklist getEventsFromBitmask(I)Ljava/util/Set;
    .registers 4
    .param p1, "eventMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1364
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1366
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_11

    .line 1367
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_11
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1d

    .line 1371
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_1d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_29

    .line 1375
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_29
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_35

    .line 1379
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    :cond_35
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_41

    .line 1383
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1388
    :cond_41
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4e

    .line 1389
    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_4e
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5a

    .line 1393
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_5a
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_67

    .line 1397
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_67
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_74

    .line 1401
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    :cond_74
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_81

    .line 1405
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_81
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_8e

    .line 1409
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    :cond_8e
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_9b

    .line 1413
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1416
    :cond_9b
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_a8

    .line 1417
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1420
    :cond_a8
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_b7

    .line 1421
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_b7
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_c4

    .line 1425
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1428
    :cond_c4
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_d2

    .line 1429
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_d2
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_e0

    .line 1433
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1436
    :cond_e0
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    if-eqz v1, :cond_ee

    .line 1437
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1440
    :cond_ee
    const/high16 v1, 0x80000

    and-int/2addr v1, p1

    if-eqz v1, :cond_fc

    .line 1441
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_fc
    const/high16 v1, 0x100000

    and-int/2addr v1, p1

    if-eqz v1, :cond_10a

    .line 1445
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1448
    :cond_10a
    const/high16 v1, 0x200000

    and-int/2addr v1, p1

    if-eqz v1, :cond_118

    .line 1449
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1452
    :cond_118
    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_126

    .line 1453
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1456
    :cond_126
    const/high16 v1, 0x800000

    and-int/2addr v1, p1

    if-eqz v1, :cond_134

    .line 1457
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_134
    const/high16 v1, 0x1000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_142

    .line 1461
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_142
    const/high16 v1, 0x2000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_150

    .line 1465
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_150
    const/high16 v1, 0x4000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_15e

    .line 1469
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1472
    :cond_15e
    const/high16 v1, 0x8000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_16c

    .line 1473
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1476
    :cond_16c
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_17a

    .line 1477
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_17a
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_188

    .line 1481
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1484
    :cond_188
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_196

    .line 1485
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1488
    :cond_196
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a4

    .line 1489
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_1a4
    return-object v0
.end method

.method static synthetic blacklist lambda$listenFromListener$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 290
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$notifySimultaneousCellularCallingSubscriptionsChanged$1(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1072
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerTelephonyCallback$2(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1536
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V
    .registers 19
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "subId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z

    .line 323
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_16

    move-object/from16 v9, p6

    :try_start_4
    iget-object v6, v9, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    move-object/from16 v9, p6

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist addCarrierConfigChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 1818
    const-string v0, "Executor should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1819
    const-string v0, "Listener should be non-null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1820
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1821
    const-string v0, "TelephonyRegistryManager"

    const-string/jumbo v1, "registerCarrierConfigChangeListener: listener already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    return-void

    .line 1825
    :cond_1b
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$3;-><init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 1841
    .local v0, "callback":Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    :try_start_20
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1842
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1841
    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_36} :catch_38

    .line 1847
    nop

    .line 1848
    return-void

    .line 1844
    :catch_38
    move-exception v1

    .line 1846
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 10
    .param p1, "logicalSlotIndex"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 1715
    if-eqz p3, :cond_4c

    if-eqz p2, :cond_4c

    .line 1718
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1719
    :try_start_7
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    .line 1720
    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1721
    .local v1, "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1722
    const-string v2, "TelephonyRegistryManager"

    const-string v3, "addCarrierPrivilegesCallback: callback already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    monitor-exit v0

    return-void

    .line 1725
    :cond_20
    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;-><init>(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;Ljava/util/concurrent/Executor;)V

    .line 1727
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_49

    .line 1729
    :try_start_2f
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1732
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1733
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1729
    invoke-interface {v3, p1, v2, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_40} :catch_43
    .catchall {:try_start_2f .. :try_end_40} :catchall_49

    .line 1736
    nop

    .line 1737
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :try_start_41
    monitor-exit v0

    .line 1738
    return-void

    .line 1734
    .restart local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :catch_43
    move-exception v3

    .line 1735
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "logicalSlotIndex":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    throw v4

    .line 1737
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "logicalSlotIndex":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v1

    .line 1716
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 210
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 211
    const-string v0, "TelephonyRegistryManager"

    const-string v1, "addOnOpportunisticSubscriptionsChangedListener listener already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 218
    :cond_10
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/TelephonyRegistryManager$2;-><init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    .line 230
    .local v0, "callback":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :try_start_1a
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_2d

    .line 237
    nop

    .line 238
    return-void

    .line 234
    :catch_2d
    move-exception v1

    .line 236
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 148
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 149
    const-string v0, "TelephonyRegistryManager"

    const-string v1, "addOnSubscriptionsChangedListener listener already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_10
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/TelephonyRegistryManager$1;-><init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 163
    .local v0, "callback":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :try_start_1a
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_2d

    .line 170
    nop

    .line 171
    return-void

    .line 167
    :catch_2d
    move-exception v1

    .line 169
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addSatelliteStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/satellite/SatelliteStateChangeListener;

    .line 1567
    if-eqz p2, :cond_4c

    if-eqz p1, :cond_4c

    .line 1571
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1572
    :try_start_7
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    .line 1573
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1574
    .local v1, "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1575
    const-string v2, "TelephonyRegistryManager"

    const-string v3, "addSatelliteStateChangeListener: listener already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    monitor-exit v0

    return-void

    .line 1578
    :cond_20
    new-instance v2, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;

    invoke-direct {v2, p1, p2}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_49

    .line 1581
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    :try_start_25
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1583
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1584
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1581
    invoke-interface {v3, v2, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->addSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_40} :catch_43
    .catchall {:try_start_25 .. :try_end_40} :catchall_49

    .line 1588
    nop

    .line 1589
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    :try_start_41
    monitor-exit v0

    .line 1590
    return-void

    .line 1586
    .restart local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    :catch_43
    move-exception v3

    .line 1587
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/telephony/satellite/SatelliteStateChangeListener;
    throw v4

    .line 1589
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/telephony/satellite/SatelliteStateChangeListener;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v1

    .line 1568
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEventsFromCallback(Landroid/telephony/TelephonyCallback;)Ljava/util/Set;
    .registers 4
    .param p1, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyCallback;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1201
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    if-eqz v1, :cond_11

    .line 1202
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_11
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;

    if-eqz v1, :cond_1d

    .line 1206
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_1d
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    if-eqz v1, :cond_29

    .line 1210
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_29
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CellLocationListener;

    if-eqz v1, :cond_35

    .line 1214
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_35
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallStateListener;

    if-eqz v1, :cond_41

    .line 1219
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_41
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;

    if-eqz v1, :cond_4d

    .line 1223
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_4d
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataActivityListener;

    if-eqz v1, :cond_5a

    .line 1227
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_5a
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    if-eqz v1, :cond_67

    .line 1231
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_67
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CellInfoListener;

    if-eqz v1, :cond_74

    .line 1235
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_74
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    if-eqz v1, :cond_81

    .line 1239
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_81
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;

    if-eqz v1, :cond_8e

    .line 1243
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_8e
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    if-eqz v1, :cond_9b

    .line 1247
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_9b
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    if-eqz v1, :cond_a8

    .line 1251
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_a8
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SrvccStateListener;

    if-eqz v1, :cond_b5

    .line 1255
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_b5
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;

    if-eqz v1, :cond_c2

    .line 1259
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_c2
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataActivationStateListener;

    if-eqz v1, :cond_cf

    .line 1263
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_cf
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    if-eqz v1, :cond_dc

    .line 1267
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_dc
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    if-eqz v1, :cond_e9

    .line 1271
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_e9
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;

    if-eqz v1, :cond_f6

    .line 1275
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_f6
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;

    if-eqz v1, :cond_103

    .line 1279
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1282
    :cond_103
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    if-eqz v1, :cond_110

    .line 1283
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1286
    :cond_110
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    if-eqz v1, :cond_11d

    .line 1287
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1290
    :cond_11d
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    if-eqz v1, :cond_12a

    .line 1291
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_12a
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;

    if-eqz v1, :cond_137

    .line 1295
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_137
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;

    if-eqz v1, :cond_144

    .line 1299
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_144
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;

    if-eqz v1, :cond_151

    .line 1303
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_151
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallAttributesListener;

    if-eqz v1, :cond_15e

    .line 1307
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_15e
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$BarringInfoListener;

    if-eqz v1, :cond_16b

    .line 1311
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_16b
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    if-eqz v1, :cond_178

    .line 1315
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_178
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataEnabledListener;

    if-eqz v1, :cond_185

    .line 1319
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_185
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    if-eqz v1, :cond_192

    .line 1323
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_192
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;

    if-eqz v1, :cond_19f

    .line 1327
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_19f
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

    if-eqz v1, :cond_1ac

    .line 1331
    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1334
    :cond_1ac
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    if-eqz v1, :cond_1b9

    .line 1335
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_1b9
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;

    if-eqz v1, :cond_1c7

    .line 1340
    nop

    .line 1341
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1340
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_1c7
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    if-eqz v1, :cond_1ef

    .line 1345
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1346
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1347
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1348
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_1ef
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

    if-eqz v1, :cond_1fc

    .line 1352
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1355
    :cond_1fc
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

    if-eqz v1, :cond_209

    .line 1356
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_209
    return-object v0
.end method

.method public blacklist listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V
    .registers 21
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p7, "events"    # I
    .param p8, "notifyNow"    # Z

    .line 285
    move-object/from16 v1, p6

    if-eqz v1, :cond_59

    .line 290
    move/from16 v2, p7

    :try_start_6
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyRegistryManager;->getEventsFromBitmask(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    move-object v10, v0

    .line 293
    .local v10, "eventsList":[I
    const-wide/32 v3, 0x8cc3350

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 296
    array-length v0, v10

    if-nez v0, :cond_2a

    .line 297
    const/4 v0, -0x1

    goto :goto_2b

    :cond_2a
    move v0, p1

    .line 296
    :goto_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    goto :goto_3e

    .line 298
    :cond_32
    iget-object v0, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    if-eqz v0, :cond_3e

    .line 299
    iget-object v0, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3c} :catch_53

    move v6, v0

    .end local p1    # "subId":I
    .local v0, "subId":I
    goto :goto_3f

    .line 301
    .end local v0    # "subId":I
    .restart local p1    # "subId":I
    :cond_3e
    :goto_3e
    move v6, p1

    .end local p1    # "subId":I
    .local v6, "subId":I
    :goto_3f
    :try_start_3f
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v9, v1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move v4, p2

    move v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4e} :catch_50

    .line 305
    .end local v10    # "eventsList":[I
    nop

    .line 306
    return-void

    .line 303
    :catch_50
    move-exception v0

    move p1, v6

    goto :goto_54

    .end local v6    # "subId":I
    .restart local p1    # "subId":I
    :catch_53
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    :goto_54
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_59
    move/from16 v2, p7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyActiveDataSubIdChanged(I)V
    .registers 4
    .param p1, "activeDataSubId"    # I

    .line 931
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyActiveDataSubIdChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 934
    nop

    .line 935
    return-void

    .line 932
    :catch_7
    move-exception v0

    .line 933
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(IIIJ)V
    .registers 12
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "reason"    # I
    .param p4, "allowedNetworkType"    # J

    .line 1037
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .end local p1    # "slotIndex":I
    .end local p2    # "subId":I
    .end local p3    # "reason":I
    .end local p4    # "allowedNetworkType":J
    .local v1, "slotIndex":I
    .local v2, "subId":I
    .local v3, "reason":I
    .local v4, "allowedNetworkType":J
    :try_start_6
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyAllowedNetworkTypesChanged(IIIJ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1042
    nop

    .line 1043
    return-void

    .line 1039
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v1    # "slotIndex":I
    .end local v2    # "subId":I
    .end local v3    # "reason":I
    .end local v4    # "allowedNetworkType":J
    .restart local p1    # "slotIndex":I
    .restart local p2    # "subId":I
    .restart local p3    # "reason":I
    .restart local p4    # "allowedNetworkType":J
    :catch_e
    move-exception v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object p1, v0

    .line 1041
    .end local p2    # "subId":I
    .end local p3    # "reason":I
    .end local p4    # "allowedNetworkType":J
    .restart local v1    # "slotIndex":I
    .restart local v2    # "subId":I
    .restart local v3    # "reason":I
    .restart local v4    # "allowedNetworkType":J
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 982
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 986
    nop

    .line 987
    return-void

    .line 983
    :catch_7
    move-exception v0

    .line 985
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallForwardingChanged(IZ)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callForwardInd"    # Z

    .line 517
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 521
    nop

    .line 522
    return-void

    .line 518
    :catch_7
    move-exception v0

    .line 520
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallQualityChanged(IILandroid/telephony/CallQuality;I)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "callQuality"    # Landroid/telephony/CallQuality;
    .param p4, "networkType"    # I

    .line 597
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 601
    nop

    .line 602
    return-void

    .line 598
    :catch_7
    move-exception v0

    .line 600
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallStateChanged(IIILjava/lang/String;)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;

    .line 397
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(IIILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 401
    nop

    .line 402
    return-void

    .line 398
    :catch_7
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallStateChangedForAllSubscriptions(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForAllSubs(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 421
    nop

    .line 422
    return-void

    .line 418
    :catch_7
    move-exception v0

    .line 420
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallbackModeRestarted(IIIJ)V
    .registers 14
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "durationMillis"    # J

    .line 1934
    :try_start_0
    const-string v0, "TelephonyRegistryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallbackModeRestarted:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    sget-object v2, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_27

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "phoneId":I
    .end local p2    # "subId":I
    .end local p3    # "type":I
    .end local p4    # "durationMillis":J
    .local v3, "phoneId":I
    .local v4, "subId":I
    .local v5, "type":I
    .local v6, "durationMillis":J
    :try_start_1f
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallbackModeRestarted(IIIJ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_24

    .line 1939
    nop

    .line 1940
    return-void

    .line 1936
    :catch_24
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v3    # "phoneId":I
    .end local v4    # "subId":I
    .end local v5    # "type":I
    .end local v6    # "durationMillis":J
    .restart local p1    # "phoneId":I
    .restart local p2    # "subId":I
    .restart local p3    # "type":I
    .restart local p4    # "durationMillis":J
    :catch_27
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object p1, v0

    .line 1938
    .end local p2    # "subId":I
    .end local p3    # "type":I
    .end local p4    # "durationMillis":J
    .restart local v3    # "phoneId":I
    .restart local v4    # "subId":I
    .restart local v5    # "type":I
    .restart local v6    # "durationMillis":J
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist notifyCallbackModeStarted(IIIJ)V
    .registers 14
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "durationMillis"    # J

    .line 1913
    :try_start_0
    const-string v0, "TelephonyRegistryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallbackModeStarted:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    sget-object v2, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_27

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "phoneId":I
    .end local p2    # "subId":I
    .end local p3    # "type":I
    .end local p4    # "durationMillis":J
    .local v3, "phoneId":I
    .local v4, "subId":I
    .local v5, "type":I
    .local v6, "durationMillis":J
    :try_start_1f
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallbackModeStarted(IIIJ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_24

    .line 1918
    nop

    .line 1919
    return-void

    .line 1915
    :catch_24
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v3    # "phoneId":I
    .end local v4    # "subId":I
    .end local v5    # "type":I
    .end local v6    # "durationMillis":J
    .restart local p1    # "phoneId":I
    .restart local p2    # "subId":I
    .restart local p3    # "type":I
    .restart local p4    # "durationMillis":J
    :catch_27
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object p1, v0

    .line 1917
    .end local p2    # "subId":I
    .end local p3    # "type":I
    .end local p4    # "durationMillis":J
    .restart local v3    # "phoneId":I
    .restart local v4    # "subId":I
    .restart local v5    # "type":I
    .restart local v6    # "durationMillis":J
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist notifyCallbackModeStopped(IIII)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "type"    # I
    .param p4, "reason"    # I

    .line 1956
    :try_start_0
    const-string v0, "TelephonyRegistryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallbackModeStopped:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallbackModeStopped(IIII)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 1961
    nop

    .line 1962
    return-void

    .line 1958
    :catch_2a
    move-exception v0

    .line 1960
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierConfigChanged(IIII)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I
    .param p4, "specificCarrierId"    # I

    .line 1889
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCarrierConfigChanged, ignored: invalid slotIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyRegistryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return-void

    .line 1894
    :cond_20
    :try_start_20
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierConfigChanged(IIII)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    .line 1897
    nop

    .line 1898
    return-void

    .line 1895
    :catch_27
    move-exception v0

    .line 1896
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierNetworkChange(IZ)V
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "active"    # Z

    .line 377
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChangeWithSubId(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 381
    nop

    .line 382
    return-void

    .line 378
    :catch_7
    move-exception v0

    .line 380
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierNetworkChange(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 350
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChange(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 354
    nop

    .line 355
    return-void

    .line 351
    :catch_7
    move-exception v0

    .line 353
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierPrivilegesChanged(ILjava/util/Set;Ljava/util/Set;)V
    .registers 7
    .param p1, "logicalSlotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1776
    .local p2, "privilegedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "privilegedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_26

    if-eqz p3, :cond_26

    .line 1782
    :try_start_4
    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1783
    .local v0, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1784
    .local v1, "uids":[I
    sget-object v2, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, p1, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_20

    .line 1787
    .end local v0    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "uids":[I
    nop

    .line 1788
    return-void

    .line 1785
    :catch_20
    move-exception v0

    .line 1786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1777
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "privilegedPackageNames and privilegedUids must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "availableServices"    # [I

    .line 1133
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1137
    nop

    .line 1138
    return-void

    .line 1134
    :catch_7
    move-exception v0

    .line 1136
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierRoamingNtnEligibleStateChanged(IZ)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "eligible"    # Z

    .line 1118
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierRoamingNtnEligibleStateChanged(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1122
    nop

    .line 1123
    return-void

    .line 1119
    :catch_7
    move-exception v0

    .line 1121
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierRoamingNtnModeChanged(IZ)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "active"    # Z

    .line 1090
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierRoamingNtnModeChanged(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1094
    nop

    .line 1095
    return-void

    .line 1091
    :catch_7
    move-exception v0

    .line 1093
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final blacklist notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 1150
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1154
    nop

    .line 1155
    return-void

    .line 1151
    :catch_7
    move-exception v0

    .line 1153
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .registers 6
    .param p1, "logicalSlotIndex"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1801
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierServiceChanged(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1804
    nop

    .line 1805
    return-void

    .line 1802
    :catch_7
    move-exception v0

    .line 1803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCellInfoChanged(ILjava/util/List;)V
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 918
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 921
    nop

    .line 922
    return-void

    .line 919
    :catch_7
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCellLocation(ILandroid/telephony/CellIdentity;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/telephony/CellIdentity;

    .line 901
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 905
    nop

    .line 906
    return-void

    .line 902
    :catch_7
    move-exception v0

    .line 904
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;

    .line 1184
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1188
    nop

    .line 1189
    return-void

    .line 1185
    :catch_7
    move-exception v0

    .line 1187
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataActivationStateChanged(III)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "activationState"    # I

    .line 741
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 746
    nop

    .line 747
    return-void

    .line 743
    :catch_8
    move-exception v0

    .line 745
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataActivityChanged(II)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "dataActivityType"    # I

    .line 534
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 538
    nop

    .line 539
    return-void

    .line 535
    :catch_7
    move-exception v0

    .line 537
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataActivityChanged(III)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "dataActivityType"    # I

    .line 554
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriberWithSlot(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 558
    nop

    .line 559
    return-void

    .line 555
    :catch_7
    move-exception v0

    .line 557
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 576
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 581
    nop

    .line 582
    return-void

    .line 578
    :catch_7
    move-exception v0

    .line 580
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataEnabled(IIZI)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "enabled"    # Z
    .param p4, "reason"    # I

    .line 1018
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataEnabled(IIZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1022
    nop

    .line 1023
    return-void

    .line 1019
    :catch_7
    move-exception v0

    .line 1021
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDisconnectCause(IIII)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "cause"    # I
    .param p4, "preciseCause"    # I

    .line 885
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(IIII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 889
    nop

    .line 890
    return-void

    .line 886
    :catch_7
    move-exception v0

    .line 888
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 802
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 806
    nop

    .line 807
    return-void

    .line 803
    :catch_7
    move-exception v0

    .line 805
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyEmergencyNumberList(II)V
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I

    .line 636
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyEmergencyNumberList(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 640
    nop

    .line 641
    return-void

    .line 637
    :catch_7
    move-exception v0

    .line 639
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 818
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 822
    nop

    .line 823
    return-void

    .line 819
    :catch_7
    move-exception v0

    .line 821
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 1055
    .local p3, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1059
    nop

    .line 1060
    return-void

    .line 1056
    :catch_7
    move-exception v0

    .line 1058
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "status"    # Landroid/telephony/ims/MediaQualityStatus;

    .line 619
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 623
    nop

    .line 624
    return-void

    .line 620
    :catch_7
    move-exception v0

    .line 622
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyMessageWaitingChanged(IIZ)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "msgWaitingInd"    # Z

    .line 500
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 504
    nop

    .line 505
    return-void

    .line 501
    :catch_7
    move-exception v0

    .line 503
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOpportunisticSubscriptionInfoChanged()V
    .registers 3

    .line 443
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOpportunisticSubscriptionInfoChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 447
    nop

    .line 448
    return-void

    .line 444
    :catch_7
    move-exception v0

    .line 446
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 6
    .param p1, "simSlotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 657
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 661
    nop

    .line 662
    return-void

    .line 658
    :catch_7
    move-exception v0

    .line 660
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 674
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 678
    nop

    .line 679
    return-void

    .line 675
    :catch_7
    move-exception v0

    .line 677
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 4
    .param p1, "phoneCapability"    # Landroid/telephony/PhoneCapability;

    .line 708
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 712
    nop

    .line 713
    return-void

    .line 709
    :catch_7
    move-exception v0

    .line 711
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1004
    nop

    .line 1005
    return-void

    .line 1001
    :catch_7
    move-exception v0

    .line 1003
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V
    .registers 14
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "callStates"    # [I
    .param p4, "imsCallIds"    # [Ljava/lang/String;
    .param p5, "imsServiceTypes"    # [I
    .param p6, "imsCallTypes"    # [I

    .line 862
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_10

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "slotIndex":I
    .end local p2    # "subId":I
    .end local p3    # "callStates":[I
    .end local p4    # "imsCallIds":[Ljava/lang/String;
    .end local p5    # "imsServiceTypes":[I
    .end local p6    # "imsCallTypes":[I
    .local v1, "slotIndex":I
    .local v2, "subId":I
    .local v3, "callStates":[I
    .local v4, "imsCallIds":[Ljava/lang/String;
    .local v5, "imsServiceTypes":[I
    .local v6, "imsCallTypes":[I
    :try_start_8
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    .line 867
    nop

    .line 868
    return-void

    .line 864
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "slotIndex":I
    .end local v2    # "subId":I
    .end local v3    # "callStates":[I
    .end local v4    # "imsCallIds":[Ljava/lang/String;
    .end local v5    # "imsServiceTypes":[I
    .end local v6    # "imsCallTypes":[I
    .restart local p1    # "slotIndex":I
    .restart local p2    # "subId":I
    .restart local p3    # "callStates":[I
    .restart local p4    # "imsCallIds":[Ljava/lang/String;
    .restart local p5    # "imsServiceTypes":[I
    .restart local p6    # "imsCallTypes":[I
    :catch_10
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object p1, v0

    .line 866
    .end local p2    # "subId":I
    .end local p3    # "callStates":[I
    .end local p4    # "imsCallIds":[Ljava/lang/String;
    .end local p5    # "imsServiceTypes":[I
    .end local p6    # "imsCallTypes":[I
    .restart local v1    # "slotIndex":I
    .restart local v2    # "subId":I
    .restart local v3    # "callStates":[I
    .restart local v4    # "imsCallIds":[Ljava/lang/String;
    .restart local v5    # "imsServiceTypes":[I
    .restart local v6    # "imsCallTypes":[I
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist notifyRadioPowerStateChanged(III)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "radioPowerState"    # I

    .line 693
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyRadioPowerStateChanged(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 697
    nop

    .line 698
    return-void

    .line 694
    :catch_7
    move-exception v0

    .line 696
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 16
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p4, "chosenPlmn"    # Ljava/lang/String;
    .param p5, "domain"    # I
    .param p6, "causeCode"    # I
    .param p7, "additionalCauseCode"    # I

    .line 964
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_11

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .end local p1    # "slotIndex":I
    .end local p2    # "subId":I
    .end local p3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local p4    # "chosenPlmn":Ljava/lang/String;
    .end local p5    # "domain":I
    .end local p6    # "causeCode":I
    .end local p7    # "additionalCauseCode":I
    .local v1, "slotIndex":I
    .local v2, "subId":I
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    .local v4, "chosenPlmn":Ljava/lang/String;
    .local v5, "domain":I
    .local v6, "causeCode":I
    .local v7, "additionalCauseCode":I
    :try_start_9
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 968
    nop

    .line 969
    return-void

    .line 966
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "slotIndex":I
    .end local v2    # "subId":I
    .end local v3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v4    # "chosenPlmn":Ljava/lang/String;
    .end local v5    # "domain":I
    .end local v6    # "causeCode":I
    .end local v7    # "additionalCauseCode":I
    .restart local p1    # "slotIndex":I
    .restart local p2    # "subId":I
    .restart local p3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .restart local p4    # "chosenPlmn":Ljava/lang/String;
    .restart local p5    # "domain":I
    .restart local p6    # "causeCode":I
    .restart local p7    # "additionalCauseCode":I
    :catch_11
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    move-object p1, v0

    .line 967
    .end local p2    # "subId":I
    .end local p3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local p4    # "chosenPlmn":Ljava/lang/String;
    .end local p5    # "domain":I
    .end local p6    # "causeCode":I
    .end local p7    # "additionalCauseCode":I
    .restart local v1    # "slotIndex":I
    .restart local v2    # "subId":I
    .restart local v3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .restart local v4    # "chosenPlmn":Ljava/lang/String;
    .restart local v5    # "domain":I
    .restart local v6    # "causeCode":I
    .restart local v7    # "additionalCauseCode":I
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist notifySatelliteStateChanged(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .line 1627
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySatelliteStateChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1631
    nop

    .line 1632
    return-void

    .line 1628
    :catch_7
    move-exception v0

    .line 1630
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;

    .line 1167
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1171
    nop

    .line 1172
    return-void

    .line 1168
    :catch_7
    move-exception v0

    .line 1170
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .line 461
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 465
    nop

    .line 466
    return-void

    .line 462
    :catch_7
    move-exception v0

    .line 464
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 480
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 484
    nop

    .line 485
    return-void

    .line 481
    :catch_7
    move-exception v0

    .line 483
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1071
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1072
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1071
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimultaneousCellularCallingSubscriptionsChanged([I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    .line 1076
    nop

    .line 1077
    return-void

    .line 1073
    :catch_18
    move-exception v0

    .line 1075
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySrvccStateChanged(II)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 835
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySrvccStateChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 839
    nop

    .line 840
    return-void

    .line 836
    :catch_7
    move-exception v0

    .line 838
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .registers 3

    .line 430
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 434
    nop

    .line 435
    return-void

    .line 431
    :catch_7
    move-exception v0

    .line 433
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyUserMobileDataStateChanged(IIZ)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z

    .line 782
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 786
    nop

    .line 787
    return-void

    .line 783
    :catch_7
    move-exception v0

    .line 785
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyVoiceActivationStateChanged(III)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "activationState"    # I

    .line 762
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 767
    nop

    .line 768
    return-void

    .line 764
    :catch_8
    move-exception v0

    .line 766
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V
    .registers 18
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "subId"    # I
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/telephony/TelephonyCallback;
    .param p8, "notifyNow"    # Z

    .line 1530
    move-object/from16 v6, p7

    if-eqz v6, :cond_29

    .line 1533
    invoke-virtual {v6, p3}, Landroid/telephony/TelephonyCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 1534
    nop

    .line 1536
    invoke-virtual {p0, v6}, Landroid/telephony/TelephonyRegistryManager;->getEventsFromCallback(Landroid/telephony/TelephonyCallback;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 1534
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/telephony/TelephonyRegistryManager;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V

    .line 1537
    return-void

    .line 1531
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeCarrierConfigChangedListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 1858
    const-string v0, "Listener should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1859
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1860
    const-string v0, "TelephonyRegistryManager"

    const-string/jumbo v1, "removeCarrierConfigChangedListener: listener was not present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void

    .line 1865
    :cond_16
    :try_start_16
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1866
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1865
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mCarrierConfigChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2e} :catch_30

    .line 1871
    nop

    .line 1872
    return-void

    .line 1868
    :catch_30
    move-exception v0

    .line 1870
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 1747
    if-eqz p1, :cond_32

    .line 1750
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1751
    :try_start_5
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    .line 1752
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1753
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 1754
    :cond_11
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    .line 1755
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    if-nez v2, :cond_1b

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2f

    return-void

    .line 1757
    :cond_1b
    :try_start_1b
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_29
    .catchall {:try_start_1b .. :try_end_26} :catchall_2f

    .line 1760
    nop

    .line 1761
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :try_start_27
    monitor-exit v0

    .line 1762
    return-void

    .line 1758
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :catch_29
    move-exception v3

    .line 1759
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    throw v4

    .line 1761
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v1

    .line 1748
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 251
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 252
    return-void

    .line 255
    :cond_9
    :try_start_9
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 256
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 255
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 257
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_23

    .line 261
    nop

    .line 262
    return-void

    .line 258
    :catch_23
    move-exception v0

    .line 260
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 183
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 184
    return-void

    .line 187
    :cond_9
    :try_start_9
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 187
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 189
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_23

    .line 193
    nop

    .line 194
    return-void

    .line 190
    :catch_23
    move-exception v0

    .line 192
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeSatelliteStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/satellite/SatelliteStateChangeListener;

    .line 1600
    if-eqz p1, :cond_37

    .line 1604
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1605
    :try_start_5
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    .line 1606
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1607
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 1608
    :cond_11
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;

    .line 1609
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    if-nez v2, :cond_1b

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_34

    return-void

    .line 1611
    :cond_1b
    :try_start_1b
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;)V

    .line 1612
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sSatelliteStateChangeListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2b} :catch_2e
    .catchall {:try_start_1b .. :try_end_2b} :catchall_34

    .line 1615
    nop

    .line 1616
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    :try_start_2c
    monitor-exit v0

    .line 1617
    return-void

    .line 1613
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    :catch_2e
    move-exception v3

    .line 1614
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "listener":Landroid/telephony/satellite/SatelliteStateChangeListener;
    throw v4

    .line 1616
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "listener":Landroid/telephony/satellite/SatelliteStateChangeListener;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v1

    .line 1601
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V
    .registers 16
    .param p1, "subId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/telephony/TelephonyCallback;
    .param p5, "notifyNow"    # Z

    .line 1547
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    .end local p1    # "subId":I
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "callback":Landroid/telephony/TelephonyCallback;
    .end local p5    # "notifyNow":Z
    .local v4, "subId":I
    .local v5, "pkgName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    .local v7, "callback":Landroid/telephony/TelephonyCallback;
    .local v9, "notifyNow":Z
    invoke-direct/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V

    .line 1549
    return-void
.end method

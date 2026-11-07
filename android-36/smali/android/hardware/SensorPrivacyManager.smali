.class public final Landroid/hardware/SensorPrivacyManager;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$Sources;,
        Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$StateTypes;,
        Landroid/hardware/SensorPrivacyManager$ToggleType;,
        Landroid/hardware/SensorPrivacyManager$Sensors;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ALL_SENSORS:Ljava/lang/String;

.field public static final blacklist EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final blacklist EXTRA_SENSOR:Ljava/lang/String;

.field public static final blacklist EXTRA_TOGGLE_TYPE:Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist TOGGLE_TYPE_HARDWARE:I = 0x2

.field public static final whitelist TOGGLE_TYPE_SOFTWARE:I = 0x1

.field private static blacklist sInstance:Landroid/hardware/SensorPrivacyManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

.field private final blacklist mLegacyToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRequiresAuthentication:Ljava/lang/Boolean;

.field private final blacklist mService:Landroid/hardware/ISensorPrivacyManager;

.field private blacklist mToggleListenerRegistered:Z

.field private final blacklist mToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToggleSupportCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 56
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.notification_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.all_sensors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extra.toggle_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISensorPrivacyManager;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 356
    new-instance v0, Landroid/hardware/SensorPrivacyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorPrivacyManager$1;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    .line 404
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 405
    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    .line 406
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    .line 407
    return-void
.end method

.method private blacklist addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 582
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    if-nez v0, :cond_13

    .line 584
    :try_start_4
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 588
    goto :goto_13

    .line 586
    :catch_f
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 593
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void

    .line 591
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 415
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v1, :cond_21

    .line 418
    :try_start_7
    const-string/jumbo v1, "sensor_privacy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 419
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;

    move-result-object v2

    .line 420
    .local v2, "service":Landroid/hardware/ISensorPrivacyManager;
    new-instance v3, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v3, p0, v2}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v3, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_19
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 423
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/ISensorPrivacyManager;
    goto :goto_21

    .line 421
    :catch_1a
    move-exception v1

    .line 422
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 425
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_21
    :goto_21
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object v1

    .line 426
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)Landroid/hardware/SensorPrivacyManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/hardware/ISensorPrivacyManager;

    .line 435
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    new-instance v1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v1, p0, p1}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    .line 437
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object v1

    .line 438
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private blacklist removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 640
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 643
    :try_start_d
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 647
    goto :goto_1c

    .line 645
    :catch_18
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist resolveSourceFromCurrentContext()I
    .registers 3

    .line 804
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 807
    const/4 v1, 0x6

    return v1

    .line 809
    :cond_18
    const/4 v1, 0x5

    return v1
.end method


# virtual methods
.method public blacklist addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    .line 1057
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1058
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    .line 1059
    .local v1, "iListener":Landroid/hardware/ISensorPrivacyListener;
    if-nez v1, :cond_18

    .line 1060
    new-instance v2, Landroid/hardware/SensorPrivacyManager$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/SensorPrivacyManager$3;-><init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    move-object v1, v2

    .line 1073
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_26

    .line 1077
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_20
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    .line 1080
    nop

    .line 1081
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    :try_start_1e
    monitor-exit v0

    .line 1082
    return-void

    .line 1078
    .restart local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    :catch_20
    move-exception v2

    .line 1079
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    throw v3

    .line 1081
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public blacklist addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "userId"    # I
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 505
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 506
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 488
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 8
    .param p1, "sensor"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 524
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;>;"
    new-instance v1, Landroid/hardware/SensorPrivacyManager$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/hardware/SensorPrivacyManager$2;-><init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 537
    .local v1, "toggleListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 538
    :try_start_11
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 540
    monitor-exit v2

    .line 541
    return-void

    .line 540
    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public whitelist addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 557
    return-void
.end method

.method public whitelist addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 574
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist areAnySensorPrivacyTogglesEnabled(I)Z
    .registers 4
    .param p1, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 699
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 700
    :catch_7
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCameraPrivacyAllowlist()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1}, Landroid/hardware/ISensorPrivacyManager;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return-object v1

    .line 763
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 760
    :catch_d
    move-exception v1

    .line 761
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    throw v2

    .line 763
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public whitelist getSensorPrivacyState(II)I
    .registers 5
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->getToggleSensorPrivacyState(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 721
    :catch_7
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAllSensorPrivacyEnabled()Z
    .registers 3

    .line 1119
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1120
    :catch_7
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 740
    :catch_7
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSensorPrivacyEnabled(I)Z
    .registers 3
    .param p1, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isSensorPrivacyEnabled(II)Z
    .registers 5
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->isToggleSensorPrivacyEnabled(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 681
    :catch_7
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    .line 1096
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1097
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    .line 1098
    .local v1, "iListener":Landroid/hardware/ISensorPrivacyListener;
    if-eqz v1, :cond_1e

    .line 1099
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_20

    .line 1101
    :try_start_12
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_20

    .line 1104
    goto :goto_1e

    .line 1102
    :catch_18
    move-exception v2

    .line 1103
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_19
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    throw v3

    .line 1106
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 6
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 609
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;>;"
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_c
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 612
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 613
    .local v2, "onToggleSensorPrivacyChangedListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    if-eqz v2, :cond_19

    .line 614
    invoke-direct {p0, v2}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 616
    .end local v2    # "onToggleSensorPrivacyChangedListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    :cond_19
    monitor-exit v1

    .line 617
    return-void

    .line 616
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public whitelist removeSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 632
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist requiresAuthentication()Z
    .registers 3

    .line 984
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 986
    :try_start_4
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->requiresAuthentication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 989
    goto :goto_17

    .line 987
    :catch_11
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 991
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setAllSensorPrivacy(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1039
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->setSensorPrivacy(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1042
    nop

    .line 1043
    return-void

    .line 1040
    :catch_7
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCameraPrivacyAllowlist(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 778
    .local p1, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v1, p1}, Landroid/hardware/ISensorPrivacyManager;->setCameraPrivacyAllowlist(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 783
    nop

    .line 784
    :try_start_9
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 781
    :catch_d
    move-exception v1

    .line 782
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v2

    .line 784
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist setSensorPrivacy(IIZ)V
    .registers 5
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z

    .line 842
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 843
    return-void
.end method

.method public blacklist setSensorPrivacy(IIZI)V
    .registers 7
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacy(IIIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 861
    nop

    .line 862
    return-void

    .line 859
    :catch_7
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSensorPrivacy(IZ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 799
    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 800
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 799
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 801
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZ)V
    .registers 5
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z

    .line 899
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZI)V

    .line 900
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZI)V
    .registers 7
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 917
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyForProfileGroup(IIIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 920
    nop

    .line 921
    return-void

    .line 918
    :catch_7
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSensorPrivacyState(II)V
    .registers 4
    .param p1, "sensor"    # I
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 825
    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyState(III)V

    .line 826
    return-void
.end method

.method public blacklist setSensorPrivacyState(III)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyState(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 882
    nop

    .line 884
    return-void

    .line 880
    :catch_d
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSensorPrivacyStateForProfileGroup(III)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 938
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyStateForProfileGroup(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_d
    move-exception v0

    .line 941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist showSensorUseDialog(I)V
    .registers 5
    .param p1, "sensor"    # I

    .line 1007
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->showSensorUseDialog(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1010
    goto :goto_e

    .line 1008
    :catch_6
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received exception while trying to show sensor use dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist supportsSensorToggle(I)Z
    .registers 3
    .param p1, "sensor"    # I

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    return v0
.end method

.method public whitelist supportsSensorToggle(II)Z
    .registers 7
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I

    .line 458
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .local v0, "key":Landroid/util/Pair;
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_33

    .line 460
    :try_start_10
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 461
    .local v2, "val":Ljava/lang/Boolean;
    if-nez v2, :cond_2a

    .line 462
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v3, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    .line 463
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v1

    return v3

    .line 466
    .end local v2    # "val":Ljava/lang/Boolean;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "toggleType":I
    .end local p2    # "sensor":I
    :try_start_32
    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_33} :catch_33

    .line 467
    .end local v0    # "key":Landroid/util/Pair;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "toggleType":I
    .restart local p2    # "sensor":I
    :catch_33
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist suppressSensorPrivacyReminders(IZ)V
    .registers 4
    .param p1, "sensor"    # I
    .param p2, "suppress"    # Z

    .line 955
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZI)V

    .line 956
    return-void
.end method

.method public blacklist suppressSensorPrivacyReminders(IZI)V
    .registers 6
    .param p1, "sensor"    # I
    .param p2, "suppress"    # Z
    .param p3, "userId"    # I

    .line 970
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    invoke-interface {v0, p3, p1, v1, p2}, Landroid/hardware/ISensorPrivacyManager;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 974
    nop

    .line 975
    return-void

    .line 972
    :catch_9
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final blacklist CAPPED_SAMPLING_PERIOD_US:I = 0x1388

.field private static final blacklist CAPPED_SAMPLING_RATE_LEVEL:I = 0x1

.field static final blacklist CHANGE_ID_SAMPLING_RATE_SENSORS_PERMISSION:J = 0x81c4045L

.field private static final greylist-max-o DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final blacklist HIGH_SAMPLING_RATE_SENSORS_PERMISSION:Ljava/lang/String; = "android.permission.HIGH_SAMPLING_RATE_SENSORS"

.field private static final greylist-max-o MAX_LISTENER_COUNT:I = 0x80

.field private static final greylist-max-o MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static greylist-max-o sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNativeClassInited:Z


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDynamicSensorListDirty:Z

.field private greylist-max-o mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsPackageDebuggable:Z

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mNativeInstance:J

.field private blacklist mRuntimeSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTargetSdkLevel:I

.field private final greylist-max-o mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field private blacklist mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRuntimeSensorListByDeviceByType(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I
    .registers 1

    iget p0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDynamicSensorListDirty(Landroid/hardware/SystemSensorManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupSensorConnection(Landroid/hardware/SystemSensorManager;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDynamicSensorList(Landroid/hardware/SystemSensorManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 147
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 144
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 148
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_47
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_50

    .line 150
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 151
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 153
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_95

    .line 155
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 157
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 158
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 160
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "index":I
    :goto_72
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 165
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetDefaultDeviceSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v3

    if-nez v3, :cond_80

    .line 169
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    return-void

    .line 166
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_80
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 153
    .end local v0    # "index":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0
.end method

.method private greylist-max-o cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .registers 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 464
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 467
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 468
    :try_start_17
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 471
    .local v1, "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEventListener;

    .line 473
    .local v3, "l":Landroid/hardware/TriggerEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 477
    nop

    .end local v3    # "l":Landroid/hardware/TriggerEventListener;
    goto :goto_26

    .line 478
    .end local v1    # "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    :cond_5b
    monitor-exit v0

    goto :goto_a6

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_5d

    throw v1

    .line 480
    :cond_60
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 481
    :try_start_63
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 484
    .local v1, "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 486
    .local v3, "l":Landroid/hardware/SensorEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0, v3, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 490
    .end local v3    # "l":Landroid/hardware/SensorEventListener;
    goto :goto_72

    .line 491
    .end local v1    # "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    :cond_a5
    monitor-exit v0

    .line 493
    :goto_a6
    return-void

    .line 491
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_63 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private blacklist createRuntimeSensorListLocked(I)Ljava/util/List;
    .registers 7
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 552
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupVirtualDeviceListener()V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v1, v2, p1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetRuntimeSensors(JILjava/util/List;)V

    .line 555
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 556
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 558
    .local v2, "s":Landroid/hardware/Sensor;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .end local v2    # "s":Landroid/hardware/Sensor;
    goto :goto_20

    .line 560
    :cond_3a
    return-object v0
.end method

.method private static greylist-max-o diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .line 656
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 658
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 660
    .local v2, "j":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-le v3, v4, :cond_34

    .line 662
    :cond_25
    const/4 v0, 0x1

    .line 663
    if-eqz p4, :cond_31

    .line 664
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 667
    :cond_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 668
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 669
    :cond_56
    const/4 v0, 0x1

    .line 670
    if-eqz p3, :cond_62

    .line 671
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_62
    if-eqz p2, :cond_6d

    .line 674
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 677
    :cond_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 678
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v3, v4, :cond_a3

    .line 679
    if-eqz p2, :cond_9d

    .line 680
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 688
    :cond_a3
    return v0
.end method

.method private blacklist hasHighSamplingRateSensorsPermission()Z
    .registers 4

    .line 1213
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1214
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 1216
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1214
    const-string v2, "android.permission.HIGH_SAMPLING_RATE_SENSORS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1217
    .local v0, "granted":Z
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 1220
    .end local v0    # "granted":Z
    :cond_2b
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist isDeviceSensorPolicyDefault(I)Z
    .registers 5
    .param p1, "deviceId"    # I

    .line 1186
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 1187
    return v0

    .line 1189
    :cond_4
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_14

    .line 1190
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 1192
    :cond_14
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_24

    :cond_22
    move v0, v2

    goto :goto_25

    :cond_24
    :goto_24
    nop

    .line 1192
    :goto_25
    return v0
.end method

.method private blacklist isSensorInCappedSet(I)Z
    .registers 4
    .param p1, "sensorType"    # I

    .line 1204
    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/16 v1, 0x23

    if-eq p1, v1, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_17

    const/16 v1, 0x10

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/16 v1, 0xe

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private static native greylist-max-o nativeConfigDirectChannel(JIII)I
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native greylist-max-o nativeDestroyDirectChannel(JI)V
.end method

.method private static native blacklist nativeGetDefaultDeviceSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeGetRuntimeSensors(JILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native blacklist nativeIsHalBypassReplayDataInjectionEnabled(J)Z
.end method

.method private static native blacklist nativeIsReplayDataInjectionEnabled(J)Z
.end method

.method private static native greylist-max-o nativeSetOperationParameter(JII[F[I)I
.end method

.method private greylist-max-o setupDynamicSensorBroadcastReceiver()V
    .registers 5

    .line 592
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    .line 593
    new-instance v0, Landroid/hardware/SystemSensorManager$3;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$3;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 607
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 612
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method private blacklist setupVirtualDeviceListener()V
    .registers 4

    .line 564
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v0, :cond_5

    .line 565
    return-void

    .line 567
    :cond_5
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1a

    .line 568
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 569
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1a

    .line 570
    return-void

    .line 573
    :cond_1a
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 588
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 589
    return-void
.end method

.method private greylist-max-o updateDynamicSensorList()V
    .registers 14

    .line 496
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v1, :cond_ad

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v2, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 508
    .local v5, "changed":Z
    if-eqz v5, :cond_aa

    .line 510
    const-string v6, "SensorManager"

    const-string v7, "DYNS dynamic sensor list cached should be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 514
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 515
    .local v7, "s":Landroid/hardware/Sensor;
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    nop

    .end local v7    # "s":Landroid/hardware/Sensor;
    goto :goto_35

    .line 518
    :cond_50
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 520
    .local v6, "mainHandler":Landroid/os/Handler;
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_af

    .line 522
    :try_start_5e
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 523
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 525
    .local v10, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_82

    move-object v11, v6

    goto :goto_88

    :cond_82
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Handler;

    .line 527
    .local v11, "handler":Landroid/os/Handler;
    :goto_88
    new-instance v12, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v12, p0, v3, v10, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    nop

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v10    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v11    # "handler":Landroid/os/Handler;
    goto :goto_68

    .line 539
    :cond_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_5e .. :try_end_93} :catchall_a7

    .line 541
    :try_start_93
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_97
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 542
    .local v8, "s":Landroid/hardware/Sensor;
    invoke-direct {p0, v8}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_af

    .line 543
    .end local v8    # "s":Landroid/hardware/Sensor;
    goto :goto_97

    .line 539
    :catchall_a7
    move-exception v8

    :try_start_a8
    monitor-exit v7
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    .end local p0    # "this":Landroid/hardware/SystemSensorManager;
    :try_start_a9
    throw v8

    .line 546
    .end local v6    # "mainHandler":Landroid/os/Handler;
    .restart local p0    # "this":Landroid/hardware/SystemSensorManager;
    :cond_aa
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 548
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v2    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v5    # "changed":Z
    :cond_ad
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_af

    throw v1
.end method


# virtual methods
.method protected greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 353
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 354
    return v0

    .line 356
    :cond_b
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 357
    :try_start_e
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 358
    .local v2, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v2, :cond_35

    .line 360
    if-nez p2, :cond_1f

    .line 361
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_23

    .line 363
    .end local v0    # "result":Z
    :cond_1f
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v0

    .line 365
    .restart local v0    # "result":Z
    :goto_23
    if-eqz v0, :cond_33

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_33

    .line 366
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 369
    :cond_33
    monitor-exit v1

    return v0

    .line 371
    .end local v0    # "result":Z
    :cond_35
    monitor-exit v1

    return v0

    .line 372
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_37

    throw v0
.end method

.method protected greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 9
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 694
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 698
    if-ltz p3, :cond_79

    const/4 v0, 0x3

    if-gt p3, v0, :cond_79

    .line 703
    if-nez p2, :cond_19

    if-nez p3, :cond_10

    goto :goto_19

    .line 705
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_19
    :goto_19
    if-nez p2, :cond_1d

    const/4 v0, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 710
    .local v0, "sensorHandle":I
    :goto_21
    const/4 v1, 0x1

    if-eqz p2, :cond_63

    .line 711
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result v2

    if-eqz v2, :cond_63

    if-le p3, v1, :cond_63

    iget-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    if-eqz v2, :cond_63

    .line 714
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result v2

    if-nez v2, :cond_63

    .line 715
    const-wide/32 v2, 0x81c4045

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_63

    .line 716
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To use the sampling rate level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_63
    :goto_63
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 722
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v4

    .line 721
    invoke-static {v2, v3, v4, v0, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result v2

    .line 723
    .local v2, "ret":I
    const/4 v3, 0x0

    if-nez p3, :cond_75

    .line 724
    if-nez v2, :cond_73

    goto :goto_74

    :cond_73
    move v1, v3

    :goto_74
    return v1

    .line 726
    :cond_75
    if-lez v2, :cond_78

    move v3, v2

    :cond_78
    return v3

    .line 700
    .end local v0    # "sensorHandle":I
    .end local v2    # "ret":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate parameter invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 15
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 733
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 734
    .local v0, "deviceId":I
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->isDeviceSensorPolicyDefault(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 735
    const/4 v0, 0x0

    move v3, v0

    goto :goto_10

    .line 734
    :cond_f
    move v3, v0

    .line 740
    .end local v0    # "deviceId":I
    .local v3, "deviceId":I
    :goto_10
    const/16 v0, 0x68

    if-eqz p1, :cond_66

    .line 743
    :try_start_14
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_5d

    .line 746
    .local v7, "fd":I
    nop

    .line 748
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    if-lt v1, v0, :cond_55

    .line 754
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v4, v0

    .line 755
    .local v4, "size":J
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I

    move-result v0

    .line 757
    .local v0, "id":I
    if-lez v0, :cond_37

    .line 761
    const/4 v1, 0x1

    .line 762
    .end local v7    # "fd":I
    .local v1, "type":I
    move v8, v0

    move v9, v1

    move-wide v10, v4

    goto :goto_9f

    .line 758
    .end local v1    # "type":I
    .restart local v7    # "fd":I
    :cond_37
    new-instance v1, Ljava/io/UncheckedIOException;

    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create MemoryFile direct channel failed "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 749
    .end local v0    # "id":I
    .end local v4    # "size":J
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    .end local v7    # "fd":I
    :catch_5d
    move-exception v0

    .line 745
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MemoryFile object is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    .end local v0    # "e":Ljava/io/IOException;
    :cond_66
    if-eqz p2, :cond_e4

    .line 763
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_dc

    .line 766
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d4

    .line 769
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_cc

    .line 774
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/32 v4, 0x800000

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c4

    .line 778
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v4, v0

    .line 779
    .restart local v4    # "size":J
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I

    move-result v0

    .line 782
    .local v0, "id":I
    if-lez v0, :cond_a6

    .line 786
    const/4 v1, 0x2

    move v8, v0

    move v9, v1

    move-wide v10, v4

    .line 790
    .end local v0    # "id":I
    .end local v4    # "size":J
    .local v8, "id":I
    .local v9, "type":I
    .local v10, "size":J
    :goto_9f
    new-instance v6, Landroid/hardware/SensorDirectChannel;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v6

    .line 783
    .end local v8    # "id":I
    .end local v9    # "type":I
    .end local v10    # "size":J
    .restart local v0    # "id":I
    .restart local v4    # "size":J
    :cond_a6
    new-instance v1, Ljava/io/UncheckedIOException;

    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create HardwareBuffer direct channel failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 775
    .end local v0    # "id":I
    .end local v4    # "size":J
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width if HardwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_e4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 5
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 795
    if-eqz p1, :cond_b

    .line 796
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    .line 798
    :cond_b
    return-void
.end method

.method protected greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 376
    if-eqz p1, :cond_1e

    .line 378
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 379
    :try_start_5
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 380
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 381
    monitor-exit v0

    return v2

    .line 383
    :cond_12
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_19

    const/4 v2, 0x1

    :cond_19
    monitor-exit v0

    return v2

    .line 385
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 376
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 237
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 238
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected greylist-max-o getFullSensorList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 211
    .local v0, "deviceId":I
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->isDeviceSensorPolicyDefault(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 212
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v1

    .line 216
    :cond_f
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    monitor-enter v1

    .line 217
    :try_start_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 218
    .local v2, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v2, :cond_21

    .line 219
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->createRuntimeSensorListLocked(I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 221
    :cond_21
    monitor-exit v1

    .line 222
    return-object v2

    .line 221
    .end local v2    # "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .registers 4
    .param p1, "sensorHandle"    # I

    .line 228
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    return-object v0
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .registers 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 175
    .local v0, "deviceId":I
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->isDeviceSensorPolicyDefault(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 176
    invoke-super {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 181
    :cond_11
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    monitor-enter v1

    .line 182
    :try_start_14
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 183
    .local v2, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v2, :cond_23

    .line 184
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->createRuntimeSensorListLocked(I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 186
    :cond_23
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 188
    .local v3, "deviceSensorListByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 189
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v4, :cond_60

    .line 190
    const/4 v5, -0x1

    if-ne p1, v5, :cond_38

    .line 191
    move-object v4, v2

    goto :goto_58

    .line 193
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 195
    .local v6, "i":Landroid/hardware/Sensor;
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, p1, :cond_57

    .line 196
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v6    # "i":Landroid/hardware/Sensor;
    :cond_57
    goto :goto_42

    .line 200
    :cond_58
    :goto_58
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 201
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    .end local v2    # "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "deviceSensorListByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    :cond_60
    monitor-exit v1

    .line 204
    return-object v4

    .line 203
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_62

    throw v2
.end method

.method protected blacklist initDataInjectionImpl(ZI)Z
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .line 389
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "isDataInjectionModeEnabled":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8a

    .line 392
    packed-switch p2, :pswitch_data_9c

    :pswitch_b
    move v4, v0

    goto :goto_29

    .line 401
    :pswitch_d
    :try_start_d
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsHalBypassReplayDataInjectionEnabled(J)Z

    move-result v4

    move v0, v4

    .line 403
    goto :goto_29

    .line 397
    :pswitch_15
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsReplayDataInjectionEnabled(J)Z

    move-result v4

    move v0, v4

    .line 399
    goto :goto_29

    .line 394
    :pswitch_1d
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v4

    move v0, v4

    .line 395
    goto :goto_29

    .line 436
    .end local v0    # "isDataInjectionModeEnabled":Z
    :catchall_25
    move-exception v0

    move v10, p2

    goto/16 :goto_99

    .line 408
    .local v4, "isDataInjectionModeEnabled":Z
    :goto_29
    const/4 v5, 0x0

    if-nez v4, :cond_35

    .line 409
    const-string v0, "SensorManager"

    const-string v2, "The correct Data Injection mode has not been enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_25

    return v5

    .line 412
    :cond_35
    :try_start_35
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_87

    if-eqz v0, :cond_48

    :try_start_39
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->getDataInjectionMode()I

    move-result v0

    if-eq v0, p2, :cond_48

    .line 415
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 416
    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_25

    .line 419
    :cond_48
    :try_start_48
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_87

    if-nez v0, :cond_7e

    .line 421
    :try_start_4c
    new-instance v6, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_56} :catch_62
    .catchall {:try_start_4c .. :try_end_56} :catchall_87

    move-object v9, p0

    move-object v7, p0

    move v10, p2

    .end local p2    # "mode":I
    .local v10, "mode":I
    :try_start_59
    invoke-direct/range {v6 .. v11}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    sput-object v6, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_98

    .line 425
    goto :goto_7f

    .line 423
    :catch_5f
    move-exception v0

    move-object p2, v0

    goto :goto_65

    .end local v10    # "mode":I
    .restart local p2    # "mode":I
    :catch_62
    move-exception v0

    move v10, p2

    move-object p2, v0

    .line 424
    .restart local v10    # "mode":I
    .local p2, "e":Ljava/lang/RuntimeException;
    :goto_65
    :try_start_65
    const-string v0, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create InjectEventQueue: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 419
    .end local v10    # "mode":I
    .local p2, "mode":I
    :cond_7e
    move v10, p2

    .line 427
    .end local p2    # "mode":I
    .restart local v10    # "mode":I
    :goto_7f
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz p2, :cond_84

    goto :goto_85

    :cond_84
    move v3, v5

    :goto_85
    monitor-exit v1

    return v3

    .line 436
    .end local v4    # "isDataInjectionModeEnabled":Z
    .end local v10    # "mode":I
    .restart local p2    # "mode":I
    :catchall_87
    move-exception v0

    move v10, p2

    .end local p2    # "mode":I
    .restart local v10    # "mode":I
    goto :goto_99

    .line 430
    .end local v10    # "mode":I
    .restart local v0    # "isDataInjectionModeEnabled":Z
    .restart local p2    # "mode":I
    :cond_8a
    move v10, p2

    .end local p2    # "mode":I
    .restart local v10    # "mode":I
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz p2, :cond_96

    .line 431
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 432
    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 434
    :cond_96
    monitor-exit v1

    return v3

    .line 436
    .end local v0    # "isDataInjectionModeEnabled":Z
    :catchall_98
    move-exception v0

    :goto_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_65 .. :try_end_9a} :catchall_98

    throw v0

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_b
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method protected greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 15
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 441
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_3
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4b

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 443
    :try_start_8
    const-string v0, "SensorManager"

    const-string v3, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    return v2

    .line 460
    :catchall_11
    move-exception v0

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    goto :goto_4f

    .line 446
    :cond_16
    :try_start_16
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->getDataInjectionMode()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_4b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2f

    .line 447
    :try_start_1f
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2f

    .line 450
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor does not support data injection"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/SystemSensorManager;
    .end local p1    # "sensor":Landroid/hardware/Sensor;
    .end local p2    # "values":[F
    .end local p3    # "accuracy":I
    .end local p4    # "timestamp":J
    throw v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_11

    .line 452
    .restart local p0    # "this":Landroid/hardware/SystemSensorManager;
    .restart local p1    # "sensor":Landroid/hardware/Sensor;
    .restart local p2    # "values":[F
    .restart local p3    # "accuracy":I
    .restart local p4    # "timestamp":J
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_4b

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p2    # "values":[F
    .end local p3    # "accuracy":I
    .end local p4    # "timestamp":J
    .local v5, "values":[F
    .local v6, "accuracy":I
    .local v7, "timestamp":J
    :try_start_38
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result p2

    .line 455
    .local p2, "ret":I
    if-eqz p2, :cond_46

    .line 456
    sget-object p3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p3}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 457
    const/4 p3, 0x0

    sput-object p3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 459
    :cond_46
    if-nez p2, :cond_49

    const/4 v2, 0x1

    :cond_49
    monitor-exit v1

    return v2

    .line 460
    .end local v5    # "values":[F
    .end local v6    # "accuracy":I
    .end local v7    # "timestamp":J
    .local p2, "values":[F
    .restart local p3    # "accuracy":I
    .restart local p4    # "timestamp":J
    :catchall_4b
    move-exception v0

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p2    # "values":[F
    .end local p3    # "accuracy":I
    .end local p4    # "timestamp":J
    .restart local v5    # "values":[F
    .restart local v6    # "accuracy":I
    .restart local v7    # "timestamp":J
    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_51

    throw v0

    :catchall_51
    move-exception v0

    goto :goto_4f
.end method

.method protected greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 618
    const-string v0, "SensorManager"

    const-string v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-eqz p1, :cond_23

    .line 624
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 625
    :try_start_c
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 627
    monitor-exit v0

    return-void

    .line 630
    :cond_16
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 631
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v1

    .line 622
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 245
    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    if-nez p2, :cond_7

    goto/16 :goto_8e

    .line 250
    :cond_7
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 251
    const-string v1, "SensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v0

    .line 254
    :cond_16
    if-ltz p5, :cond_85

    if-gez p3, :cond_1b

    goto :goto_85

    .line 258
    :cond_1b
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_7c

    .line 268
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 269
    :try_start_28
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 270
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_73

    .line 271
    if-eqz p4, :cond_39

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_3b

    :cond_39
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 273
    .local v3, "looper":Landroid/os/Looper;
    :goto_3b
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 274
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    .line 275
    :cond_52
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_5a
    nop

    .line 276
    .local v4, "fullClassName":Ljava/lang/String;
    new-instance v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v5, p1, v3, p0, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 277
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .local v5, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v5, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 278
    invoke-virtual {v5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 279
    monitor-exit v1

    return v0

    .line 281
    :cond_6b
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 284
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v4    # "fullClassName":Ljava/lang/String;
    .end local v5    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_73
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 286
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_28 .. :try_end_7b} :catchall_79

    throw v0

    .line 259
    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_85
    :goto_85
    const-string v1, "SensorManager"

    const-string/jumbo v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v0

    .line 246
    :cond_8e
    :goto_8e
    const-string v1, "SensorManager"

    const-string/jumbo v2, "sensor or listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v0
.end method

.method protected greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 317
    if-eqz p2, :cond_79

    .line 319
    if-eqz p1, :cond_70

    .line 321
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    return v2

    .line 323
    :cond_d
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_67

    .line 329
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 330
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 331
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5e

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 335
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_43
    nop

    .line 336
    .local v3, "fullClassName":Ljava/lang/String;
    new-instance v4, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v4, p1, v5, p0, v3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 337
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .local v4, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    invoke-virtual {v4, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v1

    if-nez v1, :cond_56

    .line 338
    invoke-virtual {v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 339
    monitor-exit v0

    return v2

    .line 341
    :cond_56
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 344
    .end local v3    # "fullClassName":Ljava/lang/String;
    .end local v4    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_5e
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 346
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_1a .. :try_end_66} :catchall_64

    throw v1

    .line 324
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 9
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 1178
    const/4 v0, -0x1

    .line 1179
    .local v0, "handle":I
    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    :cond_b
    move v3, v0

    .line 1180
    .end local v0    # "handle":I
    .local v3, "handle":I
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method protected greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 639
    const-string v0, "SensorManager"

    const-string v1, "Removing dynamic sensor listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 642
    :try_start_a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 293
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 294
    return-void

    .line 297
    :cond_a
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 298
    :try_start_d
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 299
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v1, :cond_33

    .line 301
    if-nez p2, :cond_1e

    .line 302
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v2

    .local v2, "result":Z
    goto :goto_23

    .line 304
    .end local v2    # "result":Z
    :cond_1e
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v2

    .line 306
    .restart local v2    # "result":Z
    :goto_23
    if-eqz v2, :cond_33

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_33

    .line 307
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 311
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v2    # "result":Z
    :cond_33
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    throw v1
.end method

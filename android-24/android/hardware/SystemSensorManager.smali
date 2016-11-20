.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$BaseEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    }
.end annotation


# static fields
.field private static DEBUG_DYNAMIC_SENSOR:Z

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/SystemSensorManager;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Landroid/hardware/SystemSensorManager;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/hardware/SystemSensorManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/SystemSensorManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@3
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    #@a
    .line 62
    const/4 v0, 0x0

    #@b
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    #@d
    .line 64
    const/4 v0, 0x0

    #@e
    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@10
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 90
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    #@4
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@b
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    #@12
    .line 68
    iput-boolean v3, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    #@14
    .line 70
    new-instance v2, Ljava/util/HashMap;

    #@16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    #@1b
    .line 74
    new-instance v2, Ljava/util/HashMap;

    #@1d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@20
    .line 73
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@22
    .line 76
    new-instance v2, Ljava/util/HashMap;

    #@24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@27
    .line 75
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@29
    .line 80
    new-instance v2, Ljava/util/HashMap;

    #@2b
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@2e
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@30
    .line 91
    sget-object v3, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    #@32
    monitor-enter v3

    #@33
    .line 92
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    #@35
    if-nez v2, :cond_0

    #@37
    .line 93
    const/4 v2, 0x1

    #@38
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    #@3a
    .line 94
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_0
    monitor-exit v3

    #@3e
    .line 98
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@40
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@43
    move-result-object v2

    #@44
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@46
    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    #@48
    .line 100
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@4a
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    #@51
    move-result-wide v2

    #@52
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@54
    .line 104
    const/4 v0, 0x0

    #@55
    .line 105
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    #@57
    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    #@5a
    .line 106
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@5c
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    #@5f
    move-result v2

    #@60
    if-nez v2, :cond_1

    #@62
    .line 90
    return-void

    #@63
    .line 91
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 107
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b
    .line 108
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    #@6d
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    #@70
    move-result v3

    #@71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 104
    add-int/lit8 v0, v0, 0x1

    #@7a
    goto :goto_0
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .locals 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 307
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@5
    move-result v4

    #@6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 309
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    #@10
    move-result v3

    #@11
    const/4 v4, 0x2

    #@12
    if-ne v3, v4, :cond_2

    #@14
    .line 310
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@16
    monitor-enter v4

    #@17
    .line 311
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@19
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .local v2, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Landroid/hardware/TriggerEventListener;

    #@2d
    .line 312
    .local v1, "l":Landroid/hardware/TriggerEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 313
    const-string/jumbo v3, "SensorManager"

    #@34
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "removed trigger listener"

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v1}, Landroid/hardware/TriggerEventListener;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 314
    const-string/jumbo v6, " due to sensor disconnection"

    #@4b
    .line 313
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 316
    :cond_0
    const/4 v3, 0x1

    #@57
    invoke-virtual {p0, v1, p1, v3}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 310
    .end local v1    # "l":Landroid/hardware/TriggerEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@5c
    monitor-exit v4

    #@5d
    throw v3

    #@5e
    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@5f
    .line 306
    return-void

    #@60
    .line 320
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@62
    monitor-enter v4

    #@63
    .line 321
    :try_start_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@65
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@68
    move-result-object v3

    #@69
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v2

    #@6d
    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_1

    #@73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Landroid/hardware/SensorEventListener;

    #@79
    .line 322
    .local v0, "l":Landroid/hardware/SensorEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@7b
    if-eqz v3, :cond_3

    #@7d
    .line 323
    const-string/jumbo v3, "SensorManager"

    #@80
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v6, "removed event listener"

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    .line 324
    const-string/jumbo v6, " due to sensor disconnection"

    #@97
    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 326
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a5
    goto :goto_1

    #@a6
    .line 320
    .end local v0    # "l":Landroid/hardware/SensorEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@a7
    monitor-exit v4

    #@a8
    throw v3
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 452
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    #@1
    .line 454
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    const/4 v2, 0x0

    #@3
    .line 456
    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_2

    #@9
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    if-ge v1, v3, :cond_0

    #@f
    .line 457
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/hardware/Sensor;

    #@15
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@18
    move-result v4

    #@19
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/hardware/Sensor;

    #@1f
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@22
    move-result v3

    #@23
    if-le v4, v3, :cond_2

    #@25
    .line 458
    :cond_0
    const/4 v0, 0x1

    #@26
    .line 459
    if-eqz p4, :cond_1

    #@28
    .line 460
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/hardware/Sensor;

    #@2e
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 462
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@33
    .line 457
    goto :goto_0

    #@34
    .line 463
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@37
    move-result v3

    #@38
    if-ge v1, v3, :cond_6

    #@3a
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3d
    move-result v3

    #@3e
    if-ge v2, v3, :cond_3

    #@40
    .line 464
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/hardware/Sensor;

    #@46
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@49
    move-result v4

    #@4a
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Landroid/hardware/Sensor;

    #@50
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@53
    move-result v3

    #@54
    if-ge v4, v3, :cond_6

    #@56
    .line 465
    :cond_3
    const/4 v0, 0x1

    #@57
    .line 466
    if-eqz p3, :cond_4

    #@59
    .line 467
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Landroid/hardware/Sensor;

    #@5f
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    .line 469
    :cond_4
    if-eqz p2, :cond_5

    #@64
    .line 470
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Landroid/hardware/Sensor;

    #@6a
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 472
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@6f
    .line 464
    goto :goto_0

    #@70
    .line 473
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@73
    move-result v3

    #@74
    if-ge v1, v3, :cond_8

    #@76
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@79
    move-result v3

    #@7a
    if-ge v2, v3, :cond_8

    #@7c
    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v3

    #@80
    check-cast v3, Landroid/hardware/Sensor;

    #@82
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@85
    move-result v4

    #@86
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v3

    #@8a
    check-cast v3, Landroid/hardware/Sensor;

    #@8c
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    #@8f
    move-result v3

    #@90
    if-ne v4, v3, :cond_8

    #@92
    .line 475
    if-eqz p2, :cond_7

    #@94
    .line 476
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@97
    move-result-object v3

    #@98
    check-cast v3, Landroid/hardware/Sensor;

    #@9a
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9d
    .line 478
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@9f
    .line 479
    add-int/lit8 v2, v2, 0x1

    #@a1
    .line 474
    goto/16 :goto_0

    #@a3
    .line 484
    :cond_8
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .locals 3

    #@0
    .prologue
    .line 387
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 388
    new-instance v1, Landroid/hardware/SystemSensorManager$2;

    #@6
    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    #@9
    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    #@d
    const-string/jumbo v1, "dynamic_sensor_change"

    #@10
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@13
    .line 403
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    #@16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@19
    .line 404
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@1b
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@20
    .line 386
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 410
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@c
    .line 411
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@f
    .line 408
    return-void
.end method

.method private updateDynamicSensorList()V
    .locals 18

    #@0
    .prologue
    .line 333
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    #@4
    monitor-enter v15

    #@5
    .line 334
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    #@9
    if-eqz v14, :cond_5

    #@b
    .line 335
    new-instance v8, Ljava/util/ArrayList;

    #@d
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 336
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    #@12
    iget-wide v0, v0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@14
    move-wide/from16 v16, v0

    #@16
    move-wide/from16 v0, v16

    #@18
    invoke-static {v0, v1, v8}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    #@1b
    .line 338
    new-instance v13, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 339
    .local v13, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 340
    .local v2, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@27
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 343
    .local v10, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    #@2c
    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    #@2e
    .line 342
    invoke-static {v14, v8, v13, v2, v10}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    #@31
    move-result v4

    #@32
    .line 345
    .local v4, "changed":Z
    if-eqz v4, :cond_4

    #@34
    .line 346
    sget-boolean v14, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@36
    if-eqz v14, :cond_0

    #@38
    .line 347
    const-string/jumbo v14, "SensorManager"

    #@3b
    const-string/jumbo v16, "DYNS dynamic sensor list cached should be updated"

    #@3e
    move-object/from16 v0, v16

    #@40
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 349
    :cond_0
    move-object/from16 v0, p0

    #@45
    iput-object v13, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    #@47
    .line 351
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v12

    #@4b
    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v14

    #@4f
    if-eqz v14, :cond_1

    #@51
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v11

    #@55
    check-cast v11, Landroid/hardware/Sensor;

    #@57
    .line 352
    .local v11, "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    #@59
    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    #@5b
    invoke-virtual {v11}, Landroid/hardware/Sensor;->getHandle()I

    #@5e
    move-result v16

    #@5f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v16

    #@63
    move-object/from16 v0, v16

    #@65
    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    goto :goto_0

    #@69
    .line 333
    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v14

    #@6a
    monitor-exit v15

    #@6b
    throw v14

    #@6c
    .line 355
    .restart local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v4    # "changed":Z
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v12    # "s$iterator":Ljava/util/Iterator;
    .restart local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    :try_start_1
    new-instance v9, Landroid/os/Handler;

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@72
    invoke-virtual {v14}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@75
    move-result-object v14

    #@76
    invoke-direct {v9, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@79
    .line 358
    .local v9, "mainHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@80
    move-result-object v14

    #@81
    .line 357
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v6

    #@85
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v14

    #@89
    if-eqz v14, :cond_3

    #@8b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v5

    #@8f
    check-cast v5, Ljava/util/Map$Entry;

    #@91
    .line 359
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@94
    move-result-object v3

    #@95
    check-cast v3, Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@97
    .line 361
    .local v3, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9a
    move-result-object v14

    #@9b
    if-nez v14, :cond_2

    #@9d
    move-object v7, v9

    #@9e
    .line 363
    .local v7, "handler":Landroid/os/Handler;
    :goto_2
    new-instance v14, Landroid/hardware/SystemSensorManager$1;

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-direct {v14, v0, v2, v3, v10}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    #@a5
    invoke-virtual {v7, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a8
    goto :goto_1

    #@a9
    .line 361
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@ac
    move-result-object v7

    #@ad
    check-cast v7, Landroid/os/Handler;

    #@af
    .restart local v7    # "handler":Landroid/os/Handler;
    goto :goto_2

    #@b0
    .line 376
    .end local v3    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_3
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b3
    move-result-object v12

    #@b4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@b7
    move-result v14

    #@b8
    if-eqz v14, :cond_4

    #@ba
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bd
    move-result-object v11

    #@be
    check-cast v11, Landroid/hardware/Sensor;

    #@c0
    .line 377
    .restart local v11    # "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    #@c2
    invoke-direct {v0, v11}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    #@c5
    goto :goto_3

    #@c6
    .line 381
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "mainHandler":Landroid/os/Handler;
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v14, 0x0

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cb
    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    monitor-exit v15

    #@cc
    .line 332
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 228
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x2

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 229
    return v4

    #@b
    .line 231
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@d
    monitor-enter v3

    #@e
    .line 232
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@16
    .line 233
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_4

    #@18
    .line 235
    if-nez p2, :cond_2

    #@1a
    .line 236
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    #@1d
    move-result v1

    #@1e
    .line 240
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    #@20
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_3

    #@26
    :cond_1
    :goto_1
    monitor-exit v3

    #@27
    .line 244
    return v1

    #@28
    .line 238
    .end local v1    # "result":Z
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    #@2b
    move-result v1

    #@2c
    .restart local v1    # "result":Z
    goto :goto_0

    #@2d
    .line 241
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 242
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 231
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2

    #@39
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_4
    monitor-exit v3

    #@3a
    .line 246
    return v4
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 251
    if-nez p1, :cond_0

    #@3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "listener cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 253
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@e
    monitor-enter v2

    #@f
    .line 254
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@11
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 255
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    #@19
    monitor-exit v2

    #@1a
    .line 256
    return v1

    #@1b
    .line 258
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    const/4 v1, 0x1

    #@22
    :cond_2
    monitor-exit v2

    #@23
    return v1

    #@24
    .line 253
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    #@3
    .line 125
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    #@6
    .line 126
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    #@8
    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 264
    sget-object v2, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 265
    if-eqz p1, :cond_2

    #@5
    .line 266
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@7
    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    #@a
    move-result v0

    #@b
    .line 268
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    #@d
    .line 269
    const-string/jumbo v1, "SensorManager"

    #@10
    const-string/jumbo v3, "Data Injection mode not enabled"

    #@13
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 270
    const/4 v1, 0x0

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 273
    :cond_0
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 274
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@1f
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@21
    .line 275
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 274
    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@2a
    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 284
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@2d
    monitor-exit v2

    #@2e
    return v1

    #@2f
    .line 279
    :cond_2
    :try_start_2
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 280
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@35
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    #@38
    .line 281
    const/4 v1, 0x0

    #@39
    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 264
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 290
    sget-object v8, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 291
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 292
    const-string/jumbo v0, "SensorManager"

    #@b
    const-string/jumbo v1, "Data injection mode not activated before calling injectSensorData"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v8

    #@12
    .line 293
    return v7

    #@13
    .line 295
    :cond_0
    :try_start_1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@15
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@18
    move-result v1

    #@19
    move-object v2, p2

    #@1a
    move v3, p3

    #@1b
    move-wide v4, p4

    #@1c
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    #@1f
    move-result v6

    #@20
    .line 298
    .local v6, "ret":I
    if-eqz v6, :cond_1

    #@22
    .line 299
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@24
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    #@27
    .line 300
    const/4 v0, 0x0

    #@28
    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 302
    :cond_1
    if-nez v6, :cond_2

    #@2c
    const/4 v0, 0x1

    #@2d
    :goto_0
    monitor-exit v8

    #@2e
    return v0

    #@2f
    :cond_2
    move v0, v7

    #@30
    goto :goto_0

    #@31
    .line 290
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v8

    #@33
    throw v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 417
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 418
    const-string/jumbo v0, "SensorManager"

    #@7
    const-string/jumbo v1, "DYNS Register dynamic sensor callback"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 421
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "callback cannot be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 424
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 426
    return-void

    #@21
    .line 429
    :cond_2
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    #@24
    .line 430
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@26
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 416
    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 133
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 134
    :cond_0
    const-string/jumbo v3, "SensorManager"

    #@8
    const-string/jumbo v4, "sensor or listener is null"

    #@b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 135
    return v5

    #@f
    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x2

    #@14
    if-ne v3, v4, :cond_2

    #@16
    .line 139
    const-string/jumbo v3, "SensorManager"

    #@19
    const-string/jumbo v4, "Trigger Sensors should use the requestTriggerSensor."

    #@1c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 140
    return v5

    #@20
    .line 142
    :cond_2
    if-ltz p5, :cond_3

    #@22
    if-gez p3, :cond_4

    #@24
    .line 143
    :cond_3
    const-string/jumbo v3, "SensorManager"

    #@27
    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    #@2a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 144
    return v5

    #@2e
    .line 151
    :cond_4
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@30
    monitor-enter v4

    #@31
    .line 152
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@33
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@39
    .line 153
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_8

    #@3b
    .line 154
    if-eqz p4, :cond_5

    #@3d
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v1

    #@41
    .line 155
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@48
    move-result-object v3

    #@49
    if-eqz v3, :cond_6

    #@4b
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 158
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@59
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@5c
    .line 159
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_7

    #@62
    .line 160
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v4

    #@66
    .line 161
    return v5

    #@67
    .line 154
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_5
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@69
    .restart local v1    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@6a
    .line 157
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_1

    #@73
    .line 163
    :cond_7
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@75
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 164
    const/4 v3, 0x1

    #@79
    monitor-exit v4

    #@7a
    return v3

    #@7b
    .line 166
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_8
    :try_start_2
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    move-result v3

    #@7f
    monitor-exit v4

    #@80
    return v3

    #@81
    .line 151
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v3

    #@82
    monitor-exit v4

    #@83
    throw v3
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 199
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "sensor cannot be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 201
    :cond_0
    if-nez p1, :cond_1

    #@e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v3, "listener cannot be null"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 203
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x2

    #@1c
    if-eq v2, v3, :cond_2

    #@1e
    return v5

    #@1f
    .line 205
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@21
    monitor-enter v3

    #@22
    .line 206
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@2a
    .line 207
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5

    #@2c
    .line 208
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@33
    move-result-object v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 209
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 211
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@44
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@46
    invoke-direct {v1, p1, v2, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@49
    .line 212
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v2, 0x0

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_4

    #@51
    .line 213
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 214
    return v5

    #@56
    .line 210
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_0

    #@5f
    .line 216
    :cond_4
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@61
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 217
    const/4 v2, 0x1

    #@65
    monitor-exit v3

    #@66
    return v2

    #@67
    .line 219
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    #@68
    const/4 v4, 0x0

    #@69
    :try_start_2
    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    move-result v2

    #@6d
    monitor-exit v3

    #@6e
    return v2

    #@6f
    .line 205
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@0
    .prologue
    .line 436
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 437
    const-string/jumbo v0, "SensorManager"

    #@7
    const-string/jumbo v1, "Removing dynamic sensor listerner"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 439
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 435
    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 175
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x2

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 176
    return-void

    #@a
    .line 179
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@c
    monitor-enter v3

    #@d
    .line 180
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@15
    .line 181
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    #@17
    .line 183
    if-nez p2, :cond_2

    #@19
    .line 184
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    #@1c
    move-result v1

    #@1d
    .line 188
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    #@1f
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

    #@25
    .end local v1    # "result":Z
    :cond_1
    :goto_1
    monitor-exit v3

    #@26
    .line 173
    return-void

    #@27
    .line 186
    :cond_2
    const/4 v2, 0x1

    #@28
    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    #@2b
    move-result v1

    #@2c
    .restart local v1    # "result":Z
    goto :goto_0

    #@2d
    .line 189
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 190
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 179
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2
.end method

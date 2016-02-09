.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$BaseEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;
    }
.end annotation


# static fields
.field private static mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static sSensorModuleInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

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

.field private final mHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

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
.method static synthetic -get0(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/SystemSensorManager;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Landroid/hardware/SystemSensorManager;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@6
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    #@3
    .line 52
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    #@a
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@11
    .line 55
    new-instance v2, Landroid/util/SparseArray;

    #@13
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    #@18
    .line 59
    new-instance v2, Ljava/util/HashMap;

    #@1a
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 58
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@1f
    .line 61
    new-instance v2, Ljava/util/HashMap;

    #@21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 60
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@26
    .line 71
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@28
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2b
    move-result-object v2

    #@2c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2e
    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    #@30
    .line 73
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@32
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    #@39
    move-result-wide v2

    #@3a
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@3c
    .line 76
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    #@3e
    monitor-enter v3

    #@3f
    .line 77
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    #@41
    if-nez v2, :cond_0

    #@43
    .line 78
    const/4 v2, 0x1

    #@44
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    #@46
    .line 79
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    :cond_0
    monitor-exit v3

    #@4a
    .line 84
    const/4 v0, 0x0

    #@4b
    .line 85
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    #@4d
    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    #@50
    .line 86
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@52
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    #@55
    move-result v2

    #@56
    if-nez v2, :cond_1

    #@58
    .line 70
    return-void

    #@59
    .line 76
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    #@5a
    monitor-exit v3

    #@5b
    throw v2

    #@5c
    .line 87
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61
    .line 88
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    #@63
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    #@66
    move-result v3

    #@67
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@6a
    .line 84
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
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
    .line 199
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
    .line 200
    return v4

    #@b
    .line 202
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@d
    monitor-enter v3

    #@e
    .line 203
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@16
    .line 204
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_4

    #@18
    .line 206
    if-nez p2, :cond_2

    #@1a
    .line 207
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    #@1d
    move-result v1

    #@1e
    .line 211
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
    .line 215
    return v1

    #@28
    .line 209
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
    .line 212
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 213
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 202
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
    .line 217
    return v4
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 222
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
    .line 224
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@e
    monitor-enter v2

    #@f
    .line 225
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
    .line 226
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    #@19
    monitor-exit v2

    #@1a
    .line 227
    return v1

    #@1b
    .line 229
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
    .line 224
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
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
    .line 96
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 235
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 236
    if-eqz p1, :cond_2

    #@5
    .line 237
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    #@7
    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    #@a
    move-result v0

    #@b
    .line 239
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    #@d
    .line 240
    const-string/jumbo v1, "SensorManager"

    #@10
    const-string/jumbo v3, "Data Injection mode not enabled"

    #@13
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 241
    const/4 v1, 0x0

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 244
    :cond_0
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 245
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@1f
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@21
    .line 246
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 245
    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@2a
    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 255
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@2d
    monitor-exit v2

    #@2e
    return v1

    #@2f
    .line 250
    :cond_2
    :try_start_2
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 251
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@35
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    #@38
    .line 252
    const/4 v1, 0x0

    #@39
    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 235
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
    .line 261
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 262
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 263
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
    .line 264
    return v7

    #@13
    .line 266
    :cond_0
    :try_start_1
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

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
    .line 269
    .local v6, "ret":I
    if-eqz v6, :cond_1

    #@22
    .line 270
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    #@24
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    #@27
    .line 271
    const/4 v0, 0x0

    #@28
    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 273
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
    .line 261
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v8

    #@33
    throw v0
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
    .line 104
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 105
    :cond_0
    const-string/jumbo v3, "SensorManager"

    #@8
    const-string/jumbo v4, "sensor or listener is null"

    #@b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 106
    return v5

    #@f
    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x2

    #@14
    if-ne v3, v4, :cond_2

    #@16
    .line 110
    const-string/jumbo v3, "SensorManager"

    #@19
    const-string/jumbo v4, "Trigger Sensors should use the requestTriggerSensor."

    #@1c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 111
    return v5

    #@20
    .line 113
    :cond_2
    if-ltz p5, :cond_3

    #@22
    if-gez p3, :cond_4

    #@24
    .line 114
    :cond_3
    const-string/jumbo v3, "SensorManager"

    #@27
    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    #@2a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 115
    return v5

    #@2e
    .line 122
    :cond_4
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@30
    monitor-enter v4

    #@31
    .line 123
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@33
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@39
    .line 124
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_8

    #@3b
    .line 125
    if-eqz p4, :cond_5

    #@3d
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v1

    #@41
    .line 126
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
    .line 127
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
    .line 129
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@59
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@5c
    .line 130
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_7

    #@62
    .line 131
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v4

    #@66
    .line 132
    return v5

    #@67
    .line 125
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_5
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@69
    .restart local v1    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@6a
    .line 128
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
    .line 134
    :cond_7
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@75
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 135
    const/4 v3, 0x1

    #@79
    monitor-exit v4

    #@7a
    return v3

    #@7b
    .line 137
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
    .line 122
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
    .line 170
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
    .line 172
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
    .line 174
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
    .line 176
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@21
    monitor-enter v3

    #@22
    .line 177
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@2a
    .line 178
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5

    #@2c
    .line 179
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
    .line 180
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
    .line 182
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    #@44
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    #@46
    invoke-direct {v1, p1, v2, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    #@49
    .line 183
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
    .line 184
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 185
    return v5

    #@56
    .line 181
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
    .line 187
    :cond_4
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    #@61
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 188
    const/4 v2, 0x1

    #@65
    monitor-exit v3

    #@66
    return v2

    #@67
    .line 190
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
    .line 176
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 146
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
    .line 147
    return-void

    #@a
    .line 150
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@c
    monitor-enter v3

    #@d
    .line 151
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    #@15
    .line 152
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    #@17
    .line 154
    if-nez p2, :cond_2

    #@19
    .line 155
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    #@1c
    move-result v1

    #@1d
    .line 159
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
    .line 144
    return-void

    #@27
    .line 157
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
    .line 160
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 161
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 150
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2
.end method

.class public Landroid/hardware/input/InputDeviceSensorManager;
.super Ljava/lang/Object;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MSG_SENSOR_ACCURACY_CHANGED:I = 0x1

.field private static final blacklist MSG_SENSOR_CHANGED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceSensorManager"


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mInputSensorEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInputSensorLock:Ljava/lang/Object;

.field private blacklist mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

.field private blacklist mSensorThread:Landroid/os/HandlerThread;

.field private final blacklist mSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->flushInternal(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getFullSensorListForDevice(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorAccuracyChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorChanged(IIIJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 3
    .param p1, "inputManagerGlobal"    # Landroid/hardware/input/InputManagerGlobal;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 80
    invoke-direct {p0}, Landroid/hardware/input/InputDeviceSensorManager;->initializeSensors()V

    .line 81
    return-void
.end method

.method private blacklist findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 176
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 177
    return v0

    .line 175
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "i":I
    :cond_1b
    const/high16 v0, -0x80000000

    return v0
.end method

.method private blacklist flushInternal(Landroid/hardware/SensorEventListener;)Z
    .registers 10
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 556
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    .line 558
    .local v1, "idx":I
    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 559
    monitor-exit v0

    return v2

    .line 561
    :cond_c
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 562
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    .line 563
    .local v5, "deviceId":I
    iget-object v6, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManagerGlobal;->flushSensor(II)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 564
    monitor-exit v0

    return v2

    .line 566
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    .end local v5    # "deviceId":I
    :cond_3a
    goto :goto_1c

    .line 567
    :cond_3b
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 568
    .end local v1    # "idx":I
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private blacklist getFullSensorListForDevice(I)Ljava/util/List;
    .registers 9
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_8
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 401
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 402
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    if-ne v6, p1, :cond_3d

    .line 406
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_3d
    goto :goto_28

    .line 409
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    :cond_3e
    goto :goto_12

    .line 410
    :cond_3f
    monitor-exit v1

    .line 411
    return-object v0

    .line 410
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private blacklist getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 164
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 166
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, p2, :cond_23

    .line 167
    return-object v2

    .line 169
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_23
    goto :goto_10

    .line 170
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 4
    .param p1, "requestedHandler"    # Landroid/os/Handler;

    .line 489
    if-eqz p1, :cond_7

    .line 490
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    .line 492
    :cond_7
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_19

    .line 493
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 494
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 496
    :cond_19
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSensorForInputDevice(II)Landroid/hardware/Sensor;
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "type"    # I

    .line 379
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 381
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 382
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, p1, :cond_3d

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p2, :cond_3d

    .line 386
    monitor-exit v0

    return-object v4

    .line 388
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_3d
    goto :goto_23

    .line 389
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    :cond_3e
    goto :goto_d

    .line 390
    :cond_3f
    monitor-exit v0

    .line 391
    const/4 v0, 0x0

    return-object v0

    .line 390
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private blacklist initializeSensors()V
    .registers 5

    .line 146
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v1

    .line 149
    .local v1, "deviceIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 150
    aget v3, v1, v2

    .line 151
    .local v3, "deviceId":I
    invoke-direct {p0, v3}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 149
    .end local v3    # "deviceId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 153
    .end local v1    # "deviceIds":[I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private blacklist onInputSensorAccuracyChanged(III)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I

    .line 221
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 223
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 225
    .local v2, "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 226
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorAccuracyChanged(III)V

    .line 222
    .end local v2    # "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 229
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist onInputSensorChanged(IIIJ[F)V
    .registers 15
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F

    .line 189
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;

    move-result-object v1

    .line 191
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_29

    .line 192
    const-string v2, "InputDeviceSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInputSensorChanged: Got sensor update for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the sensor was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_29
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 197
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 199
    .local v3, "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 200
    invoke-static {v3, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->-$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object v4

    .line 201
    .local v4, "event":Landroid/hardware/SensorEvent;
    if-nez v4, :cond_4f

    .line 202
    const-string v5, "InputDeviceSensorManager"

    const-string v6, "Failed to get SensorEvent."

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_4f
    iput-object v1, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 206
    iput p3, v4, Landroid/hardware/SensorEvent;->accuracy:I

    .line 207
    iput-wide p4, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 208
    iget-object v5, v4, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {p6, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-virtual {v3, v4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 196
    .end local v3    # "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    .end local v4    # "event":Landroid/hardware/SensorEvent;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 213
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "i":I
    :cond_64
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private blacklist populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorInfos"    # [Landroid/hardware/input/InputSensorInfo;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 136
    new-instance v2, Landroid/hardware/Sensor;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Landroid/hardware/Sensor;-><init>(Landroid/hardware/input/InputSensorInfo;)V

    .line 140
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 142
    .end local v1    # "i":I
    :cond_16
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method private blacklist registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 421
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 422
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v0

    .line 426
    :cond_b
    if-nez p2, :cond_15

    .line 427
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "sensor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0

    .line 432
    :cond_15
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 433
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v0

    .line 437
    :cond_24
    if-ltz p4, :cond_f1

    if-gez p3, :cond_2a

    goto/16 :goto_f1

    .line 442
    :cond_2a
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_2d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 444
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    .line 445
    .local v2, "deviceId":I
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 446
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_65

    .line 447
    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input device not found for sensor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit v1

    return v0

    .line 451
    :cond_65
    invoke-virtual {v3}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v4

    if-nez v4, :cond_85

    .line 452
    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device doesn\'t have the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit v1

    return v0

    .line 455
    :cond_85
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v2, v5, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->enableSensor(IIII)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 457
    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t enable the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v1

    return v0

    .line 463
    .end local v2    # "deviceId":I
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_ab
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-nez v2, :cond_ca

    .line 464
    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 465
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 466
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Failed registering the sensor listener"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit v1

    return v0

    .line 471
    :cond_ca
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v0

    .line 472
    .local v0, "idx":I
    if-gez v0, :cond_e0

    .line 473
    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 475
    invoke-direct {p0, p5}, Landroid/hardware/input/InputDeviceSensorManager;->getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;-><init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V

    .line 476
    .local v2, "d":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    nop

    .end local v2    # "d":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    goto :goto_eb

    .line 479
    :cond_e0
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 481
    .end local v0    # "idx":I
    :goto_eb
    monitor-exit v1

    .line 483
    const/4 v0, 0x1

    return v0

    .line 481
    :catchall_ee
    move-exception v0

    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_2d .. :try_end_f0} :catchall_ee

    throw v0

    .line 438
    :cond_f1
    :goto_f1
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v0
.end method

.method private static blacklist sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p0, "lhs"    # Landroid/hardware/Sensor;
    .param p1, "rhs"    # Landroid/hardware/Sensor;

    .line 130
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private blacklist unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 503
    if-eqz p1, :cond_ae

    .line 506
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    .line 510
    .local v1, "idx":I
    if-ltz v1, :cond_a2

    .line 511
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 513
    .local v2, "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .local v3, "sensorsRegistered":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)V

    .line 516
    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 518
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    .end local v2    # "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_2a
    nop

    .line 525
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 526
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v4}, Landroid/hardware/input/InputManagerGlobal;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 527
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 530
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 531
    .local v4, "s":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    .line 532
    .local v5, "deviceId":I
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    .line 534
    .local v6, "sensorType":I
    const/4 v7, 0x0

    .line 535
    .local v7, "enableSensor":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5b
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_98

    .line 536
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 538
    .local v9, "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v9, v5, v6}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 539
    const/4 v7, 0x1

    .line 540
    const-string v10, "InputDeviceSensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " still uses sensor "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    goto :goto_98

    .line 535
    .end local v9    # "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 545
    .end local v8    # "i":I
    :cond_98
    :goto_98
    if-nez v7, :cond_9f

    .line 549
    iget-object v8, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v8, v5, v6}, Landroid/hardware/input/InputManagerGlobal;->disableSensor(II)V

    .line 551
    .end local v4    # "s":Landroid/hardware/Sensor;
    .end local v5    # "deviceId":I
    .end local v6    # "sensorType":I
    .end local v7    # "enableSensor":Z
    :cond_9f
    goto :goto_45

    .line 552
    .end local v1    # "idx":I
    .end local v3    # "sensorsRegistered":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_a0
    monitor-exit v0

    .line 553
    return-void

    .line 521
    .restart local v1    # "idx":I
    :cond_a2
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Listener is not registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-exit v0

    return-void

    .line 552
    .end local v1    # "idx":I
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_5 .. :try_end_ad} :catchall_ab

    throw v1

    .line 504
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateInputDeviceSensorInfoLocked(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 97
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 98
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 99
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 100
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v1

    .line 101
    .local v1, "sensorInfos":[Landroid/hardware/input/InputSensorInfo;
    invoke-direct {p0, p1, v1}, Landroid/hardware/input/InputDeviceSensorManager;->populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V

    .line 103
    .end local v1    # "sensorInfos":[Landroid/hardware/input/InputSensorInfo;
    :cond_15
    return-void
.end method


# virtual methods
.method blacklist getSensorManager(I)Landroid/hardware/SensorManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 90
    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;-><init>(Landroid/hardware/input/InputDeviceSensorManager;I)V

    return-object v0
.end method

.method public blacklist onInputDeviceAdded(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .line 106
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 108
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    goto :goto_31

    .line 110
    :cond_13
    const-string v1, "InputDeviceSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'device added\' notification for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it is already in the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_31
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist onInputDeviceChanged(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 123
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist onInputDeviceRemoved(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 117
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

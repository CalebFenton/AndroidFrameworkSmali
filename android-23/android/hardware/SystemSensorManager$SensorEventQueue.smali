.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 433
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    #@4
    .line 429
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@b
    .line 434
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@d
    .line 432
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 439
    new-instance v0, Landroid/hardware/SensorEvent;

    #@2
    .line 440
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@4
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get3(Landroid/hardware/SystemSensorManager;)I

    #@7
    move-result v1

    #@8
    .line 439
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    #@f
    .line 441
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@11
    monitor-enter v2

    #@12
    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@14
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 438
    return-void

    #@1d
    .line 441
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 2
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 486
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@2
    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 487
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@8
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/Sensor;

    #@12
    .line 488
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@14
    check-cast v1, Landroid/hardware/SensorEventListener2;

    #@16
    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    #@19
    .line 490
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 458
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@3
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/hardware/Sensor;

    #@d
    .line 459
    .local v1, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x0

    #@e
    .line 460
    .local v2, "t":Landroid/hardware/SensorEvent;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@10
    monitor-enter v4

    #@11
    .line 461
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    .end local v2    # "t":Landroid/hardware/SensorEvent;
    check-cast v2, Landroid/hardware/SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .local v2, "t":Landroid/hardware/SensorEvent;
    monitor-exit v4

    #@1a
    .line 464
    if-nez v2, :cond_0

    #@1c
    .line 467
    return-void

    #@1d
    .line 460
    .end local v2    # "t":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .line 470
    .restart local v2    # "t":Landroid/hardware/SensorEvent;
    :cond_0
    iget-object v3, v2, Landroid/hardware/SensorEvent;->values:[F

    #@22
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    #@24
    array-length v4, v4

    #@25
    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@28
    .line 471
    iput-wide p4, v2, Landroid/hardware/SensorEvent;->timestamp:J

    #@2a
    .line 472
    iput p3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@2c
    .line 473
    iput-object v1, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@2e
    .line 476
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    #@30
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@33
    move-result v0

    #@34
    .line 477
    .local v0, "accuracy":I
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@36
    if-ltz v3, :cond_1

    #@38
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@3a
    if-eq v0, v3, :cond_1

    #@3c
    .line 478
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    #@3e
    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@40
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@43
    .line 479
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@45
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@47
    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@49
    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    #@4c
    .line 481
    :cond_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@4e
    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    #@51
    .line 457
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 449
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@5
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@8
    move-result v2

    #@9
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 447
    return-void

    #@e
    .line 448
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

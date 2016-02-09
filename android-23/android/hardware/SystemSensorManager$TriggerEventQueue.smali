.class final Landroid/hardware/SystemSensorManager$TriggerEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TriggerEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mTriggerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    #@4
    .line 496
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@b
    .line 501
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@d
    .line 499
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 506
    new-instance v0, Landroid/hardware/TriggerEvent;

    #@2
    .line 507
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@4
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get3(Landroid/hardware/SystemSensorManager;)I

    #@7
    move-result v1

    #@8
    .line 506
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    #@f
    .line 508
    .local v0, "t":Landroid/hardware/TriggerEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@11
    monitor-enter v2

    #@12
    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

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
    .line 505
    return-void

    #@1d
    .line 508
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 548
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 525
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@3
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/hardware/Sensor;

    #@d
    .line 526
    .local v0, "sensor":Landroid/hardware/Sensor;
    const/4 v1, 0x0

    #@e
    .line 527
    .local v1, "t":Landroid/hardware/TriggerEvent;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@10
    monitor-enter v3

    #@11
    .line 528
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    check-cast v1, Landroid/hardware/TriggerEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .local v1, "t":Landroid/hardware/TriggerEvent;
    monitor-exit v3

    #@1a
    .line 530
    if-nez v1, :cond_0

    #@1c
    .line 531
    const-string/jumbo v2, "SensorManager"

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Error: Trigger Event is null for Sensor: "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 532
    return-void

    #@37
    .line 527
    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit v3

    #@39
    throw v2

    #@3a
    .line 536
    .restart local v1    # "t":Landroid/hardware/TriggerEvent;
    :cond_0
    iget-object v2, v1, Landroid/hardware/TriggerEvent;->values:[F

    #@3c
    iget-object v3, v1, Landroid/hardware/TriggerEvent;->values:[F

    #@3e
    array-length v3, v3

    #@3f
    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@42
    .line 537
    iput-wide p4, v1, Landroid/hardware/TriggerEvent;->timestamp:J

    #@44
    .line 538
    iput-object v0, v1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    #@46
    .line 542
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@48
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@4a
    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    #@4d
    .line 544
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@4f
    invoke-virtual {v2, v1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    #@52
    .line 524
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 515
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

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
    .line 514
    return-void

    #@e
    .line 515
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

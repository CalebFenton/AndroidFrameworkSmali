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
    .line 741
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    #@4
    .line 737
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@b
    .line 742
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@d
    .line 740
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 747
    new-instance v0, Landroid/hardware/TriggerEvent;

    #@2
    .line 748
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@4
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get4(Landroid/hardware/SystemSensorManager;)I

    #@7
    move-result v1

    #@8
    .line 747
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    #@f
    .line 749
    .local v0, "t":Landroid/hardware/TriggerEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@11
    monitor-enter v2

    #@12
    .line 750
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
    .line 746
    return-void

    #@1d
    .line 749
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
    .line 793
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
    .line 766
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@3
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    #@6
    move-result-object v2

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/hardware/Sensor;

    #@11
    .line 767
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    #@13
    .line 769
    return-void

    #@14
    .line 771
    :cond_0
    const/4 v1, 0x0

    #@15
    .line 772
    .local v1, "t":Landroid/hardware/TriggerEvent;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@17
    monitor-enter v3

    #@18
    .line 773
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    check-cast v1, Landroid/hardware/TriggerEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .local v1, "t":Landroid/hardware/TriggerEvent;
    monitor-exit v3

    #@21
    .line 775
    if-nez v1, :cond_1

    #@23
    .line 776
    const-string/jumbo v2, "SensorManager"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Error: Trigger Event is null for Sensor: "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 777
    return-void

    #@3e
    .line 772
    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2

    #@41
    .line 781
    .restart local v1    # "t":Landroid/hardware/TriggerEvent;
    :cond_1
    iget-object v2, v1, Landroid/hardware/TriggerEvent;->values:[F

    #@43
    iget-object v3, v1, Landroid/hardware/TriggerEvent;->values:[F

    #@45
    array-length v3, v3

    #@46
    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@49
    .line 782
    iput-wide p4, v1, Landroid/hardware/TriggerEvent;->timestamp:J

    #@4b
    .line 783
    iput-object v0, v1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    #@4d
    .line 787
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@4f
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@51
    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    #@54
    .line 789
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    #@56
    invoke-virtual {v2, v1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    #@59
    .line 765
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 756
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 757
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
    .line 755
    return-void

    #@e
    .line 756
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

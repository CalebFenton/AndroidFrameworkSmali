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
    .line 646
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    #@4
    .line 642
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@b
    .line 647
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@d
    .line 645
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 652
    new-instance v0, Landroid/hardware/SensorEvent;

    #@2
    .line 653
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@4
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get4(Landroid/hardware/SystemSensorManager;)I

    #@7
    move-result v1

    #@8
    .line 652
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    #@f
    .line 654
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@11
    monitor-enter v2

    #@12
    .line 655
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
    .line 651
    return-void

    #@1d
    .line 654
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method protected dispatchAdditionalInfoEvent(III[F[I)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    #@0
    .prologue
    .line 722
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@2
    instance-of v2, v2, Landroid/hardware/SensorEventCallback;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 723
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@8
    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    #@b
    move-result-object v2

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/hardware/Sensor;

    #@16
    .line 724
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    #@18
    .line 726
    return-void

    #@19
    .line 729
    :cond_0
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    #@1b
    move v2, p2

    #@1c
    move v3, p3

    #@1d
    move-object v4, p5

    #@1e
    move-object v5, p4

    #@1f
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    #@22
    .line 730
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@24
    check-cast v2, Landroid/hardware/SensorEventCallback;

    #@26
    invoke-virtual {v2, v0}, Landroid/hardware/SensorEventCallback;->onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V

    #@29
    .line 721
    .end local v0    # "info":Landroid/hardware/SensorAdditionalInfo;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return-void
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 3
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 706
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@2
    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 707
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@8
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    #@b
    move-result-object v1

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/Sensor;

    #@16
    .line 708
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    #@18
    .line 710
    return-void

    #@19
    .line 712
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@1b
    check-cast v1, Landroid/hardware/SensorEventListener2;

    #@1d
    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    #@20
    .line 714
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_1
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
    .line 671
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@3
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    #@6
    move-result-object v3

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/hardware/Sensor;

    #@11
    .line 672
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    #@13
    .line 674
    return-void

    #@14
    .line 677
    :cond_0
    const/4 v2, 0x0

    #@15
    .line 678
    .local v2, "t":Landroid/hardware/SensorEvent;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@17
    monitor-enter v4

    #@18
    .line 679
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .end local v2    # "t":Landroid/hardware/SensorEvent;
    check-cast v2, Landroid/hardware/SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .local v2, "t":Landroid/hardware/SensorEvent;
    monitor-exit v4

    #@21
    .line 682
    if-nez v2, :cond_1

    #@23
    .line 685
    return-void

    #@24
    .line 678
    .end local v2    # "t":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3

    #@27
    .line 688
    .restart local v2    # "t":Landroid/hardware/SensorEvent;
    :cond_1
    iget-object v3, v2, Landroid/hardware/SensorEvent;->values:[F

    #@29
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    #@2b
    array-length v4, v4

    #@2c
    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@2f
    .line 689
    iput-wide p4, v2, Landroid/hardware/SensorEvent;->timestamp:J

    #@31
    .line 690
    iput p3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@33
    .line 691
    iput-object v1, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@35
    .line 694
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    #@37
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@3a
    move-result v0

    #@3b
    .line 695
    .local v0, "accuracy":I
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@3d
    if-ltz v3, :cond_2

    #@3f
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@41
    if-eq v0, v3, :cond_2

    #@43
    .line 696
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    #@45
    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@47
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@4a
    .line 697
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@4c
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@4e
    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    #@50
    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    #@53
    .line 699
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    #@55
    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    #@58
    .line 670
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 661
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 662
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
    .line 660
    return-void

    #@e
    .line 661
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

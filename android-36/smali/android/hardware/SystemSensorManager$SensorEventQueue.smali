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
.field private final greylist-max-o mListener:Landroid/hardware/SensorEventListener;

.field private final greylist-max-o mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 976
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 972
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 977
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 978
    return-void
.end method


# virtual methods
.method public greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 982
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 984
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 985
    :try_start_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 986
    monitor-exit v1

    .line 987
    return-void

    .line 986
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method protected greylist-max-o dispatchAdditionalInfoEvent(III[F[I)V
    .registers 13
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .line 1064
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventCallback;

    if-eqz v0, :cond_2b

    .line 1065
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/Sensor;

    .line 1066
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_1a

    .line 1068
    return-void

    .line 1070
    :cond_1a
    new-instance v1, Landroid/hardware/SensorAdditionalInfo;

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v5, p5

    .end local p2    # "type":I
    .end local p3    # "serial":I
    .end local p4    # "floatValues":[F
    .end local p5    # "intValues":[I
    .local v3, "type":I
    .local v4, "serial":I
    .local v5, "intValues":[I
    .local v6, "floatValues":[F
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 1072
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object p2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast p2, Landroid/hardware/SensorEventCallback;

    invoke-virtual {p2, v1}, Landroid/hardware/SensorEventCallback;->onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V

    goto :goto_2f

    .line 1064
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "type":I
    .end local v4    # "serial":I
    .end local v5    # "intValues":[I
    .end local v6    # "floatValues":[F
    .restart local p2    # "type":I
    .restart local p3    # "serial":I
    .restart local p4    # "floatValues":[F
    .restart local p5    # "intValues":[I
    :cond_2b
    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v5, p5

    .line 1074
    .end local p2    # "type":I
    .end local p3    # "serial":I
    .end local p4    # "floatValues":[F
    .end local p5    # "intValues":[I
    .restart local v3    # "type":I
    .restart local v4    # "serial":I
    .restart local v5    # "intValues":[I
    .restart local v6    # "floatValues":[F
    :goto_2f
    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .registers 4
    .param p1, "handle"    # I

    .line 1048
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventListener2;

    if-eqz v0, :cond_20

    .line 1049
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1050
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_19

    .line 1052
    return-void

    .line 1054
    :cond_19
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 1056
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_20
    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .registers 13
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .line 1001
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1002
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_13

    .line 1004
    return-void

    .line 1007
    :cond_13
    const/4 v1, 0x0

    .line 1008
    .local v1, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1009
    :try_start_17
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    move-object v1, v3

    .line 1010
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_7c

    .line 1012
    if-nez v1, :cond_24

    .line 1015
    return-void

    .line 1018
    :cond_24
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    iput-wide p4, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1020
    iput p3, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 1021
    iput-object v0, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1024
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1025
    .local v2, "accuracy":I
    iget v3, v1, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_51

    iget v3, v1, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v2, v3, :cond_51

    .line 1026
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v5, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 1031
    :cond_51
    iput-boolean v4, v1, Landroid/hardware/SensorEvent;->firstEventAfterDiscontinuity:Z

    .line 1032
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_76

    .line 1033
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1034
    .local v3, "lastCount":I
    const/4 v4, 0x6

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 1035
    .local v4, "curCount":I
    if-ltz v3, :cond_76

    if-eq v3, v4, :cond_76

    .line 1036
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/hardware/SensorEvent;->firstEventAfterDiscontinuity:Z

    .line 1041
    .end local v3    # "lastCount":I
    .end local v4    # "curCount":I
    :cond_76
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v3, v1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 1042
    return-void

    .line 1010
    .end local v2    # "accuracy":I
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v3
.end method

.method public greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 991
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 992
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 993
    monitor-exit v0

    .line 994
    return-void

    .line 993
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

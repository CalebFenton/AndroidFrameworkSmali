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
.field private final greylist-max-o mListener:Landroid/hardware/TriggerEventListener;

.field private final greylist-max-o mTriggerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1083
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1079
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 1084
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 1085
    return-void
.end method


# virtual methods
.method public greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1089
    new-instance v0, Landroid/hardware/TriggerEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    .line 1091
    .local v0, "t":Landroid/hardware/TriggerEvent;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1092
    :try_start_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1093
    monitor-exit v1

    .line 1094
    return-void

    .line 1093
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 1136
    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .registers 11
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1108
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1109
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_13

    .line 1111
    return-void

    .line 1113
    :cond_13
    const/4 v1, 0x0

    .line 1114
    .local v1, "t":Landroid/hardware/TriggerEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1115
    :try_start_17
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEvent;

    move-object v1, v3

    .line 1116
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_56

    .line 1117
    if-nez v1, :cond_3c

    .line 1118
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Trigger Event is null for Sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .line 1123
    :cond_3c
    iget-object v2, v1, Landroid/hardware/TriggerEvent;->values:[F

    iget-object v3, v1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    iput-wide p4, v1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 1125
    iput-object v0, v1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 1129
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 1131
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    .line 1132
    return-void

    .line 1116
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v3
.end method

.method public greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1098
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1099
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

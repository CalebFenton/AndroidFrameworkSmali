.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# static fields
.field protected static final greylist-max-o OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final blacklist OPERATING_MODE_HAL_BYPASS_REPLAY_DATA_INJECTION:I = 0x4

.field protected static final greylist-max-o OPERATING_MODE_NORMAL:I = 0x0

.field protected static final blacklist OPERATING_MODE_REPLAY_DATA_INJECTION:I = 0x3


# instance fields
.field private final greylist-max-o mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final greylist-max-o mManager:Landroid/hardware/SystemSensorManager;

.field private greylist-max-o mNativeSensorEventQueue:J

.field protected final greylist-max-o mSensorAccuracies:Landroid/util/SparseIntArray;

.field protected final blacklist mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .registers 13
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 822
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 823
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    .line 824
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 833
    if-nez p4, :cond_22

    const-string p4, ""

    :cond_22
    move-object v4, p4

    .line 834
    .end local p4    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 835
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object p4

    .line 836
    invoke-virtual {p4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object p4

    .line 837
    invoke-virtual {p4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 834
    move v5, p3

    .end local p3    # "mode":I
    .local v5, "mode":I
    invoke-static/range {v0 .. v7}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    .line 838
    iget-object p3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p4, "BaseEventQueue.dispose"

    invoke-virtual {p3, p4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 839
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 840
    return-void
.end method

.method private greylist-max-o disableSensor(Landroid/hardware/Sensor;)I
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 950
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 951
    if-eqz p1, :cond_15

    .line 952
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v0

    return v0

    .line 951
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 950
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .line 914
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 915
    if-eqz p1, :cond_b

    .line 916
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 918
    :cond_b
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 920
    :cond_10
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 921
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    .line 922
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    .line 924
    :cond_1f
    return-void
.end method

.method private greylist-max-o enableSensor(Landroid/hardware/Sensor;II)I
    .registers 8
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .line 928
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    .line 929
    if-eqz p1, :cond_5e

    .line 930
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x1388

    if-ge p2, v0, :cond_53

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 933
    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 934
    const-wide/32 v0, 0x81c4045

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_53

    .line 935
    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use the sampling rate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " microseconds, app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_53
    :goto_53
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v0

    return v0

    .line 929
    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 928
    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nativeDestroySensorEventQueue(J)V
.end method

.method private static native greylist-max-o nativeDisableSensor(JI)I
.end method

.method private static native greylist-max-o nativeEnableSensor(JIII)I
.end method

.method private static native greylist-max-o nativeFlushSensor(J)I
.end method

.method private static native blacklist nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public greylist-max-o addSensor(Landroid/hardware/Sensor;II)Z
    .registers 8
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .line 849
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 850
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 853
    :cond_e
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 854
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 855
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2b

    .line 857
    if-eqz p3, :cond_27

    if-lez p3, :cond_2b

    .line 858
    invoke-direct {p0, p1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2b

    .line 859
    :cond_27
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    .line 860
    return v2

    .line 863
    :cond_2b
    return v3
.end method

.method protected abstract greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected greylist-max-r dispatchAdditionalInfoEvent(III[F[I)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .line 964
    return-void
.end method

.method protected abstract greylist-max-r dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract greylist-max-r dispatchSensorEvent(I[FIJ)V
.end method

.method public greylist-max-o dispose()V
    .registers 2

    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 844
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 907
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 909
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 910
    nop

    .line 911
    return-void

    .line 909
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 910
    throw v0
.end method

.method public greylist-max-o flush()I
    .registers 5

    .line 895
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 896
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0

    .line 895
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o hasSensors()Z
    .registers 3

    .line 901
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-ltz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected greylist-max-o injectSensorDataBase(I[FIJ)I
    .registers 13
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 945
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "handle":I
    .end local p2    # "values":[F
    .end local p3    # "accuracy":I
    .end local p4    # "timestamp":J
    .local v2, "handle":I
    .local v3, "values":[F
    .local v4, "accuracy":I
    .local v5, "timestamp":J
    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    move-result p1

    return p1
.end method

.method public greylist-max-o removeAllSensors()Z
    .registers 6

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_39

    .line 868
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-ne v1, v2, :cond_36

    .line 869
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 870
    .local v1, "handle":I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 871
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_36

    .line 872
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 873
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 874
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 867
    .end local v1    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 880
    .end local v0    # "i":I
    :cond_39
    return v2
.end method

.method public greylist-max-o removeSensor(Landroid/hardware/Sensor;Z)Z
    .registers 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z

    .line 884
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 885
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 886
    if-eqz p2, :cond_12

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 887
    :cond_12
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 888
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 889
    const/4 v1, 0x1

    return v1

    .line 891
    :cond_20
    return v2
.end method

.method protected abstract greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
.end method

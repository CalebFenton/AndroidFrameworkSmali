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
.field protected static final OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final OPERATING_MODE_NORMAL:I


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:J


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 508
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@a
    .line 509
    new-instance v0, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    #@11
    .line 510
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@17
    .line 517
    if-nez p4, :cond_0

    #@19
    const-string/jumbo p4, ""

    #@1c
    .line 518
    :cond_0
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-get3(Landroid/hardware/SystemSensorManager;)J

    #@1f
    move-result-wide v0

    #@20
    .line 519
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@22
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@25
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@28
    move-result-object v3

    #@29
    .line 520
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    move-object v4, p4

    #@32
    move v5, p3

    #@33
    .line 518
    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;)J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@39
    .line 521
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@3b
    const-string/jumbo v1, "dispose"

    #@3e
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@41
    .line 522
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@43
    .line 516
    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 623
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 624
    :cond_0
    if-nez p1, :cond_1

    #@10
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@15
    throw v0

    #@16
    .line 625
    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@18
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@1b
    move-result v2

    #@1c
    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 597
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 598
    if-eqz p1, :cond_0

    #@8
    .line 599
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@d
    .line 601
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 603
    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@14
    cmp-long v0, v0, v2

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 604
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@1a
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    #@1d
    .line 605
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@1f
    .line 596
    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;II)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    #@0
    .prologue
    .line 611
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 612
    :cond_0
    if-nez p1, :cond_1

    #@10
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@15
    throw v0

    #@16
    .line 613
    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@18
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@1b
    move-result v2

    #@1c
    invoke-static {v0, v1, v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method private static native nativeDestroySensorEventQueue(J)V
.end method

.method private static native nativeDisableSensor(JI)I
.end method

.method private static native nativeEnableSensor(JIII)I
.end method

.method private static native nativeFlushSensor(J)I
.end method

.method private static native nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;II)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 532
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@5
    move-result v0

    #@6
    .line 533
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@8
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    return v2

    #@f
    .line 536
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@11
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@14
    .line 537
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    #@17
    .line 538
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 540
    if-eqz p3, :cond_1

    #@1f
    .line 541
    if-lez p3, :cond_2

    #@21
    invoke-direct {p0, p1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 542
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    #@2a
    .line 543
    return v2

    #@2b
    .line 546
    :cond_2
    return v3
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected dispatchAdditionalInfoEvent(III[F[I)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    #@0
    .prologue
    .line 632
    return-void
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 526
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    #@4
    .line 525
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 592
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 588
    return-void

    #@8
    .line 591
    :catchall_0
    move-exception v0

    #@9
    .line 592
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 591
    throw v0
.end method

.method public flush()I
    .locals 4

    #@0
    .prologue
    .line 578
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 579
    :cond_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@10
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public hasSensors()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 584
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@4
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    #@7
    move-result v2

    #@8
    if-ltz v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method protected injectSensorDataBase(I[FIJ)I
    .locals 8
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 619
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    #@2
    move v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-wide v5, p4

    #@6
    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public removeAllSensors()Z
    .locals 5

    #@0
    .prologue
    .line 550
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 551
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 552
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@16
    move-result v0

    #@17
    .line 553
    .local v0, "handle":I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    #@19
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/hardware/Sensor;

    #@27
    .line 554
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    #@29
    .line 555
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    #@2c
    .line 556
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@32
    .line 557
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    #@35
    .line 550
    .end local v0    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 563
    :cond_1
    const/4 v3, 0x1

    #@39
    return v3
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 567
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@4
    move-result v0

    #@5
    .line 568
    .local v0, "handle":I
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@7
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 569
    if-eqz p2, :cond_0

    #@f
    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    #@12
    .line 570
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    #@14
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1b
    .line 571
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    #@1e
    .line 572
    const/4 v1, 0x1

    #@1f
    return v1

    #@20
    .line 574
    :cond_1
    return v3
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method

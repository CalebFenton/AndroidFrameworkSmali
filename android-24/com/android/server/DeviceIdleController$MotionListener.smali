.class final Lcom/android/server/DeviceIdleController$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionListener"
.end annotation


# instance fields
.field active:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    #@5
    .line 415
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@8
    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$MotionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 435
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    monitor-enter v1

    #@3
    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@5
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@b
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    #@12
    .line 429
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@15
    .line 430
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@17
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 426
    return-void

    #@1c
    .line 427
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    #@0
    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    monitor-enter v1

    #@3
    .line 420
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@6
    .line 421
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@8
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 418
    return-void

    #@d
    .line 419
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public registerLocked()Z
    .locals 5

    #@0
    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getReportingMode()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x2

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 440
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@f
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@15
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@1b
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    #@22
    move-result v0

    #@23
    .line 445
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_1

    #@25
    .line 446
    const/4 v1, 0x1

    #@26
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@28
    .line 450
    :goto_1
    return v0

    #@29
    .line 442
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2b
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    #@2e
    move-result-object v1

    #@2f
    .line 443
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@31
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    #@34
    move-result-object v2

    #@35
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@37
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@3a
    move-result-object v3

    #@3b
    const/4 v4, 0x3

    #@3c
    .line 442
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@3f
    move-result v0

    #@40
    .restart local v0    # "success":Z
    goto :goto_0

    #@41
    .line 448
    :cond_1
    const-string/jumbo v1, "DeviceIdleController"

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "Unable to register for "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@52
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_1
.end method

.method public unregisterLocked()V
    .locals 3

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 455
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@f
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@15
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@1b
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    #@22
    .line 459
    :goto_0
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    #@25
    .line 453
    return-void

    #@26
    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@28
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    #@2e
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@35
    goto :goto_0
.end method

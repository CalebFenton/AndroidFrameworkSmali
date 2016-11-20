.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    #@0
    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    #@3
    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 360
    .local v10, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@8
    move-object/from16 v19, v0

    #@a
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get1(Lcom/android/server/GestureLauncherService;)J

    #@d
    move-result-wide v20

    #@e
    sub-long v16, v10, v20

    #@10
    .line 366
    .local v16, "totalDuration":J
    move-object/from16 v0, p1

    #@12
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    #@14
    move-object/from16 v18, v0

    #@16
    .line 368
    .local v18, "values":[F
    move-wide/from16 v0, v16

    #@18
    long-to-double v0, v0

    #@19
    move-wide/from16 v20, v0

    #@1b
    const/16 v19, 0x0

    #@1d
    aget v19, v18, v19

    #@1f
    move/from16 v0, v19

    #@21
    float-to-double v0, v0

    #@22
    move-wide/from16 v22, v0

    #@24
    mul-double v20, v20, v22

    #@26
    move-wide/from16 v0, v20

    #@28
    double-to-long v12, v0

    #@29
    .line 369
    .local v12, "sensor1OnTime":J
    move-wide/from16 v0, v16

    #@2b
    long-to-double v0, v0

    #@2c
    move-wide/from16 v20, v0

    #@2e
    const/16 v19, 0x1

    #@30
    aget v19, v18, v19

    #@32
    move/from16 v0, v19

    #@34
    float-to-double v0, v0

    #@35
    move-wide/from16 v22, v0

    #@37
    mul-double v20, v20, v22

    #@39
    move-wide/from16 v0, v20

    #@3b
    double-to-long v14, v0

    #@3c
    .line 370
    .local v14, "sensor2OnTime":J
    const/16 v19, 0x2

    #@3e
    aget v19, v18, v19

    #@40
    move/from16 v0, v19

    #@42
    float-to-int v9, v0

    #@43
    .line 373
    .local v9, "extra":I
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@47
    move-object/from16 v19, v0

    #@49
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get0(Lcom/android/server/GestureLauncherService;)J

    #@4c
    move-result-wide v20

    #@4d
    sub-long v2, v10, v20

    #@4f
    .line 374
    .local v2, "gestureOnTimeDiff":J
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@53
    move-object/from16 v19, v0

    #@55
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get2(Lcom/android/server/GestureLauncherService;)J

    #@58
    move-result-wide v20

    #@59
    sub-long v4, v12, v20

    #@5b
    .line 375
    .local v4, "sensor1OnTimeDiff":J
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@5f
    move-object/from16 v19, v0

    #@61
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get3(Lcom/android/server/GestureLauncherService;)J

    #@64
    move-result-wide v20

    #@65
    sub-long v6, v14, v20

    #@67
    .line 376
    .local v6, "sensor2OnTimeDiff":J
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@6b
    move-object/from16 v19, v0

    #@6d
    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get4(Lcom/android/server/GestureLauncherService;)I

    #@70
    move-result v19

    #@71
    sub-int v8, v9, v19

    #@73
    .line 380
    .local v8, "extraDiff":I
    const-wide/16 v20, 0x0

    #@75
    cmp-long v19, v2, v20

    #@77
    if-ltz v19, :cond_0

    #@79
    const-wide/16 v20, 0x0

    #@7b
    cmp-long v19, v4, v20

    #@7d
    if-gez v19, :cond_1

    #@7f
    .line 382
    :cond_0
    return-void

    #@80
    .line 380
    :cond_1
    const-wide/16 v20, 0x0

    #@82
    cmp-long v19, v6, v20

    #@84
    if-ltz v19, :cond_0

    #@86
    .line 391
    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    #@89
    .line 397
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@8d
    move-object/from16 v19, v0

    #@8f
    move-object/from16 v0, v19

    #@91
    invoke-static {v0, v10, v11}, Lcom/android/server/GestureLauncherService;->-set0(Lcom/android/server/GestureLauncherService;J)J

    #@94
    .line 398
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@98
    move-object/from16 v19, v0

    #@9a
    move-object/from16 v0, v19

    #@9c
    invoke-static {v0, v12, v13}, Lcom/android/server/GestureLauncherService;->-set1(Lcom/android/server/GestureLauncherService;J)J

    #@9f
    .line 399
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@a3
    move-object/from16 v19, v0

    #@a5
    move-object/from16 v0, v19

    #@a7
    invoke-static {v0, v14, v15}, Lcom/android/server/GestureLauncherService;->-set2(Lcom/android/server/GestureLauncherService;J)J

    #@aa
    .line 400
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@ae
    move-object/from16 v19, v0

    #@b0
    move-object/from16 v0, v19

    #@b2
    invoke-static {v0, v9}, Lcom/android/server/GestureLauncherService;->-set3(Lcom/android/server/GestureLauncherService;I)I

    #@b5
    .line 358
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 354
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@2
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 336
    return-void

    #@9
    .line 338
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@b
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@d
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get5(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    #@10
    move-result-object v1

    #@11
    if-ne v0, v1, :cond_2

    #@13
    .line 344
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@15
    const/4 v1, 0x1

    #@16
    .line 345
    const/4 v2, 0x0

    #@17
    .line 344
    invoke-static {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->-wrap0(Lcom/android/server/GestureLauncherService;ZI)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 346
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    #@1f
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    const/16 v1, 0x100

    #@25
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@28
    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    #@2b
    .line 349
    :cond_1
    return-void

    #@2c
    .line 333
    :cond_2
    return-void
.end method

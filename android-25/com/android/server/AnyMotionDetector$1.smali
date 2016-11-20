.class Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    #@0
    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 291
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 273
    const/4 v0, -0x1

    #@1
    .line 274
    .local v0, "status":I
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@3
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get2(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    monitor-enter v7

    #@8
    .line 275
    :try_start_0
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #@10
    const/4 v5, 0x0

    #@11
    aget v4, v4, v5

    #@13
    .line 276
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    #@15
    const/4 v6, 0x1

    #@16
    aget v5, v5, v6

    #@18
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    #@1a
    const/4 v8, 0x2

    #@1b
    aget v6, v6, v8

    #@1d
    .line 275
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@20
    .line 277
    .local v1, "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@22
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get4(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    #@29
    .line 280
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@2b
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get4(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    #@32
    move-result v2

    #@33
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@35
    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->-get3(Lcom/android/server/AnyMotionDetector;)I

    #@38
    move-result v3

    #@39
    if-lt v2, v3, :cond_0

    #@3b
    .line 281
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@3d
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-wrap0(Lcom/android/server/AnyMotionDetector;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v0

    #@41
    :cond_0
    monitor-exit v7

    #@42
    .line 284
    const/4 v2, -0x1

    #@43
    if-eq v0, v2, :cond_1

    #@45
    .line 285
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@47
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    #@4a
    move-result-object v2

    #@4b
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@4d
    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->-get5(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@54
    .line 286
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    #@56
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@59
    move-result-object v2

    #@5a
    invoke-interface {v2, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    #@5d
    .line 272
    :cond_1
    return-void

    #@5e
    .line 274
    .end local v1    # "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v7

    #@60
    throw v2
.end method

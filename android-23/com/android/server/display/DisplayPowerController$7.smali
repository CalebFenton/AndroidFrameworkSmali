.class Lcom/android/server/display/DisplayPowerController$7;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    #@0
    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

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
    .line 1231
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 1222
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get3(Lcom/android/server/display/DisplayPowerController;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 1223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 1224
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #@e
    const/4 v5, 0x0

    #@f
    aget v0, v4, v5

    #@11
    .line 1225
    .local v0, "distance":F
    const/4 v4, 0x0

    #@12
    cmpl-float v4, v0, v4

    #@14
    if-ltz v4, :cond_1

    #@16
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@18
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get4(Lcom/android/server/display/DisplayPowerController;)F

    #@1b
    move-result v4

    #@1c
    cmpg-float v4, v0, v4

    #@1e
    if-gez v4, :cond_1

    #@20
    const/4 v1, 0x1

    #@21
    .line 1226
    .local v1, "positive":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@23
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->-wrap2(Lcom/android/server/display/DisplayPowerController;JZ)V

    #@26
    .line 1221
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_0
    return-void

    #@27
    .line 1225
    .restart local v0    # "distance":F
    .restart local v2    # "time":J
    :cond_1
    const/4 v1, 0x0

    #@28
    .restart local v1    # "positive":Z
    goto :goto_0
.end method

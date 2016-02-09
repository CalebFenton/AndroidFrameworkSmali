.class Lcom/android/server/power/WirelessChargerDetector$1;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WirelessChargerDetector;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

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
    .line 345
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    #@2
    invoke-static {v0}, Lcom/android/server/power/WirelessChargerDetector;->-get0(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    #@9
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    #@b
    const/4 v3, 0x0

    #@c
    aget v2, v2, v3

    #@e
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    #@10
    const/4 v4, 0x1

    #@11
    aget v3, v3, v4

    #@13
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    #@15
    const/4 v5, 0x2

    #@16
    aget v4, v4, v5

    #@18
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/power/WirelessChargerDetector;->-wrap1(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 338
    return-void

    #@1d
    .line 339
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

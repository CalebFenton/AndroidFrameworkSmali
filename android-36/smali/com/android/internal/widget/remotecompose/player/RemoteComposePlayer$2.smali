.class Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;
.super Ljava/lang/Object;
.source "RemoteComposePlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 787
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 811
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 790
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3a

    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 793
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto/16 :goto_bd

    .line 797
    :cond_3a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_70

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto :goto_bd

    .line 801
    :cond_70
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_a6

    .line 802
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto :goto_bd

    .line 805
    :cond_a6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_bd

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 808
    :cond_bd
    :goto_bd
    return-void
.end method

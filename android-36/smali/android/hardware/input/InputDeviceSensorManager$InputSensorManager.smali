.class public Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;
.super Landroid/hardware/SensorManager;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputSensorManager"
.end annotation


# instance fields
.field final blacklist mId:I

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputDeviceSensorManager;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/input/InputDeviceSensorManager;
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 578
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 579
    iput p2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    .line 580
    return-void
.end method


# virtual methods
.method protected blacklist cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 5
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 4
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 2
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 623
    return-void
.end method

.method protected blacklist flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 611
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4
    .param p1, "type"    # I

    .line 584
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected blacklist getFullSensorList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initDataInjectionImpl(ZI)Z
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 634
    return-void
.end method

.method protected blacklist registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 600
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v4, p5

    .end local p1    # "listener":Landroid/hardware/SensorEventListener;
    .end local p2    # "sensor":Landroid/hardware/Sensor;
    .end local p3    # "delayUs":I
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "maxBatchReportLatencyUs":I
    .local v1, "listener":Landroid/hardware/SensorEventListener;
    .local v2, "sensor":Landroid/hardware/Sensor;
    .local v3, "delayUs":I
    .local v4, "maxBatchReportLatencyUs":I
    .local v5, "handler":Landroid/os/Handler;
    invoke-static/range {v0 .. v5}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method protected blacklist requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 3
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 640
    return-void
.end method

.method protected blacklist unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 606
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 607
    return-void
.end method

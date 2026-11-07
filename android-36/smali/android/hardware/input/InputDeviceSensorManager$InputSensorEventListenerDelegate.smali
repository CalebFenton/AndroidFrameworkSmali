.class final Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
.super Landroid/os/Handler;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputSensorEventListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mListener:Landroid/hardware/SensorEventListener;

.field private final blacklist mSensorEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 259
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    .line 260
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    .line 261
    invoke-virtual {p0, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 262
    return-void
.end method

.method private blacklist getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .registers 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 334
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist addSensor(Landroid/hardware/Sensor;)V
    .registers 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 295
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 296
    .local v1, "s":Landroid/hardware/Sensor;
    invoke-static {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exist!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputDeviceSensorManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 300
    .end local v1    # "s":Landroid/hardware/Sensor;
    :cond_37
    goto :goto_6

    .line 301
    :cond_38
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 303
    .local v0, "vecLength":I
    new-instance v1, Landroid/hardware/SensorEvent;

    const-wide/16 v4, 0x0

    new-array v6, v0, [F

    const/4 v3, -0x1

    move-object v2, p1

    .end local p1    # "sensor":Landroid/hardware/Sensor;
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorEvent;-><init>(Landroid/hardware/Sensor;IJ[F)V

    .line 305
    .local v1, "event":Landroid/hardware/SensorEvent;
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    return-void
.end method

.method public blacklist getListener()Landroid/hardware/SensorEventListener;
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method public blacklist getSensors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_41

    .line 367
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    .line 368
    .local v0, "event":Landroid/hardware/SensorEvent;
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 369
    goto :goto_41

    .line 356
    .end local v0    # "event":Landroid/hardware/SensorEvent;
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 357
    .local v0, "deviceId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 358
    .local v1, "sensorType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 359
    .local v2, "accuracy":I
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 360
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, v0, :cond_3f

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v1, :cond_3f

    .line 361
    iget-object v5, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v5, v4, v2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 363
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_3f
    goto :goto_22

    .line 364
    :cond_40
    nop

    .line 372
    .end local v0    # "deviceId":I
    .end local v1    # "sensorType":I
    .end local v2    # "accuracy":I
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist hasSensorRegistered(II)Z
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 315
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 316
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p2, :cond_20

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_20
    goto :goto_6

    .line 320
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist removeSensor(Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 278
    if-nez p1, :cond_d

    .line 279
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 281
    return-void

    .line 283
    :cond_d
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 284
    .local v1, "s":Landroid/hardware/Sensor;
    invoke-static {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 285
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 288
    .end local v1    # "s":Landroid/hardware/Sensor;
    :cond_33
    goto :goto_13

    .line 289
    :cond_34
    return-void
.end method

.method public blacklist sendSensorAccuracyChanged(III)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I

    .line 348
    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public blacklist sendSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 341
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void
.end method

.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "target"    # Landroid/hardware/SensorListener;

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    const/4 v0, 0x6

    #@4
    new-array v0, v0, [F

    #@6
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    #@8
    .line 209
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    #@a
    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    #@d
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    #@f
    .line 212
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    #@11
    .line 213
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@14
    .line 211
    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 354
    packed-switch p0, :pswitch_data_0

    #@3
    .line 364
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 356
    :pswitch_1
    const/4 v0, 0x2

    #@6
    return v0

    #@7
    .line 358
    :pswitch_2
    const/16 v0, 0x8

    #@9
    return v0

    #@a
    .line 360
    :pswitch_3
    const/16 v0, 0x80

    #@c
    return v0

    #@d
    .line 362
    :pswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 354
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .locals 2
    .param p0, "sensors"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 244
    and-int/lit16 v1, p0, 0x81

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8
    .param p1, "sensor"    # I
    .param p2, "values"    # [F
    .param p3, "orientation"    # I

    #@0
    .prologue
    const/high16 v7, 0x43340000    # 180.0f

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 288
    aget v0, p2, v4

    #@7
    .line 289
    .local v0, "x":F
    aget v1, p2, v5

    #@9
    .line 290
    .local v1, "y":F
    aget v2, p2, v6

    #@b
    .line 292
    .local v2, "z":F
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 307
    :goto_0
    aput v0, p2, v4

    #@10
    .line 308
    aput v1, p2, v5

    #@12
    .line 309
    aput v2, p2, v6

    #@14
    .line 310
    const/4 v3, 0x3

    #@15
    aput v0, p2, v3

    #@17
    .line 311
    const/4 v3, 0x4

    #@18
    aput v1, p2, v3

    #@1a
    .line 312
    const/4 v3, 0x5

    #@1b
    aput v2, p2, v3

    #@1d
    .line 314
    and-int/lit8 v3, p3, 0x1

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 316
    sparse-switch p1, :sswitch_data_1

    #@24
    .line 331
    :cond_0
    :goto_1
    and-int/lit8 v3, p3, 0x2

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 332
    aget v0, p2, v4

    #@2a
    .line 333
    aget v1, p2, v5

    #@2c
    .line 334
    aget v2, p2, v6

    #@2e
    .line 336
    sparse-switch p1, :sswitch_data_2

    #@31
    .line 287
    :cond_1
    :goto_2
    return-void

    #@32
    .line 295
    :sswitch_0
    neg-float v2, v2

    #@33
    .line 296
    goto :goto_0

    #@34
    .line 298
    :sswitch_1
    neg-float v0, v0

    #@35
    .line 299
    neg-float v1, v1

    #@36
    .line 300
    neg-float v2, v2

    #@37
    .line 301
    goto :goto_0

    #@38
    .line 303
    :sswitch_2
    neg-float v0, v0

    #@39
    .line 304
    neg-float v1, v1

    #@3a
    .line 305
    goto :goto_0

    #@3b
    .line 319
    :sswitch_3
    neg-float v3, v1

    #@3c
    aput v3, p2, v4

    #@3e
    .line 320
    aput v0, p2, v5

    #@40
    .line 321
    aput v2, p2, v6

    #@42
    goto :goto_1

    #@43
    .line 325
    :sswitch_4
    const/high16 v3, 0x43870000    # 270.0f

    #@45
    cmpg-float v3, v0, v3

    #@47
    if-gez v3, :cond_2

    #@49
    const/16 v3, 0x5a

    #@4b
    :goto_3
    int-to-float v3, v3

    #@4c
    add-float/2addr v3, v0

    #@4d
    aput v3, p2, v4

    #@4f
    .line 326
    aput v2, p2, v5

    #@51
    .line 327
    aput v1, p2, v6

    #@53
    goto :goto_1

    #@54
    .line 325
    :cond_2
    const/16 v3, -0x10e

    #@56
    goto :goto_3

    #@57
    .line 339
    :sswitch_5
    neg-float v3, v0

    #@58
    aput v3, p2, v4

    #@5a
    .line 340
    neg-float v3, v1

    #@5b
    aput v3, p2, v5

    #@5d
    .line 341
    aput v2, p2, v6

    #@5f
    goto :goto_2

    #@60
    .line 345
    :sswitch_6
    cmpl-float v3, v0, v7

    #@62
    if-ltz v3, :cond_3

    #@64
    sub-float v3, v0, v7

    #@66
    :goto_4
    aput v3, p2, v4

    #@68
    .line 346
    neg-float v3, v1

    #@69
    aput v3, p2, v5

    #@6b
    .line 347
    neg-float v3, v2

    #@6c
    aput v3, p2, v6

    #@6e
    goto :goto_2

    #@6f
    .line 345
    :cond_3
    add-float v3, v0, v7

    #@71
    goto :goto_4

    #@72
    .line 292
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch

    #@84
    .line 316
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    #@96
    .line 336
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method hasSensors()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 240
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    #@2
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    #@5
    move-result v2

    #@6
    invoke-static {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, v2, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 248
    :goto_0
    return-void

    #@e
    .line 251
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 258
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    #@5
    .line 259
    .local v2, "v":[F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    #@7
    aget v3, v3, v7

    #@9
    aput v3, v2, v7

    #@b
    .line 260
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    #@d
    aget v3, v3, v8

    #@f
    aput v3, v2, v8

    #@11
    .line 261
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    #@13
    aget v3, v3, v4

    #@15
    aput v3, v2, v4

    #@17
    .line 262
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    #@19
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    #@1c
    move-result v1

    #@1d
    .line 263
    .local v1, "type":I
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    #@20
    move-result v0

    #@21
    .line 264
    .local v0, "legacyType":I
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    #@24
    move-result v3

    #@25
    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    #@28
    .line 265
    const/4 v3, 0x3

    #@29
    if-ne v1, v3, :cond_2

    #@2b
    .line 266
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@2d
    and-int/lit16 v3, v3, 0x80

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 267
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    #@33
    const/16 v4, 0x80

    #@35
    invoke-interface {v3, v4, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    #@38
    .line 269
    :cond_0
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@3a
    and-int/lit8 v3, v3, 0x1

    #@3c
    if-eqz v3, :cond_1

    #@3e
    .line 270
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    #@40
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #@42
    aget v6, v2, v7

    #@44
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    #@47
    move-result v3

    #@48
    aput v3, v2, v7

    #@4a
    .line 271
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    #@4c
    invoke-interface {v3, v8, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    #@4f
    .line 257
    :cond_1
    :goto_0
    return-void

    #@50
    .line 274
    :cond_2
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    #@52
    invoke-interface {v3, v0, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    #@55
    goto :goto_0
.end method

.method registerSensor(I)Z
    .locals 3
    .param p1, "legacyType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 217
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 218
    return v2

    #@7
    .line 220
    :cond_0
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@9
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    #@c
    move-result v0

    #@d
    .line 221
    .local v0, "alreadyHasOrientationSensor":Z
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@f
    or-int/2addr v1, p1

    #@10
    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@12
    .line 222
    if-eqz v0, :cond_1

    #@14
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 223
    return v2

    #@1b
    .line 225
    :cond_1
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method unregisterSensor(I)Z
    .locals 3
    .param p1, "legacyType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 229
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@3
    and-int/2addr v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 230
    return v2

    #@7
    .line 232
    :cond_0
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@9
    not-int v1, p1

    #@a
    and-int/2addr v0, v1

    #@b
    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@d
    .line 233
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    #@15
    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 234
    return v2

    #@1c
    .line 236
    :cond_1
    const/4 v0, 0x1

    #@1d
    return v0
.end method

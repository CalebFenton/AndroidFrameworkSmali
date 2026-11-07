.class public final Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
.super Ljava/lang/Object;
.source "DistanceMeasurementResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAltitudeAngle:D

.field private blacklist mAzimuthAngle:D

.field private blacklist mConfidenceLevel:D

.field private blacklist mDelaySpreadMeters:D

.field private blacklist mDetectedAttackLevel:I

.field private blacklist mErrorAltitudeAngle:D

.field private blacklist mErrorAzimuthAngle:D

.field private blacklist mErrorMeters:D

.field private blacklist mMeasurementTimestampNanos:J

.field private blacklist mMeters:D

.field private blacklist mVelocityMetersPerSecond:D


# direct methods
.method public constructor whitelist <init>(DD)V
    .registers 8
    .param p1, "meters"    # D
    .param p3, "errorMeters"    # D

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeters:D

    .line 412
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorMeters:D

    .line 413
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAzimuthAngle:D

    .line 414
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAzimuthAngle:D

    .line 415
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAltitudeAngle:D

    .line 416
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAltitudeAngle:D

    .line 417
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDelaySpreadMeters:D

    .line 418
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mConfidenceLevel:D

    .line 419
    const/16 v2, 0xff

    iput v2, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDetectedAttackLevel:I

    .line 420
    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mVelocityMetersPerSecond:D

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeasurementTimestampNanos:J

    .line 432
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_53

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_53

    .line 435
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3a

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_3a

    .line 439
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeters:D

    .line 440
    iput-wide p3, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorMeters:D

    .line 441
    return-void

    .line 436
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMeters must be >= 0.0 and not NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meters must be >= 0.0 and not NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/DistanceMeasurementResult;
    .registers 29
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 618
    move-object/from16 v0, p0

    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementResult;

    iget-wide v2, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeters:D

    iget-wide v4, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorMeters:D

    iget-wide v6, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAzimuthAngle:D

    iget-wide v8, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAzimuthAngle:D

    iget-wide v10, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAltitudeAngle:D

    iget-wide v12, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAltitudeAngle:D

    iget-wide v14, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDelaySpreadMeters:D

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    iget-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mConfidenceLevel:D

    iget v3, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDetectedAttackLevel:I

    move-wide/from16 v19, v1

    iget-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mVelocityMetersPerSecond:D

    move-wide/from16 v21, v1

    iget-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeasurementTimestampNanos:J

    const/16 v23, 0x0

    move-wide/from16 v24, v17

    move/from16 v18, v3

    move-wide/from16 v26, v1

    move-object/from16 v1, v16

    move-wide/from16 v2, v24

    move-wide/from16 v16, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v26

    invoke-direct/range {v1 .. v23}, Landroid/bluetooth/le/DistanceMeasurementResult;-><init>(DDDDDDDDIDJLandroid/bluetooth/le/DistanceMeasurementResult-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAltitudeAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 6
    .param p1, "angle"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 489
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_15

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_15

    .line 493
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAltitudeAngle:D

    .line 494
    return-object p0

    .line 490
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "angle must be in the range from -90.0 to 90.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAzimuthAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 6
    .param p1, "angle"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 453
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_12

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_12

    .line 457
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mAzimuthAngle:D

    .line 458
    return-object p0

    .line 454
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "angle must be in the range from 0.0 to 360.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfidenceLevel(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 6
    .param p1, "confidenceLevel"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 544
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_f

    .line 549
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mConfidenceLevel:D

    .line 550
    return-object p0

    .line 545
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error confidenceLevel must be in the range from 0.0 to 100.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDelaySpreadMeters(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 5
    .param p1, "delaySpreadMeters"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 525
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_9

    .line 528
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDelaySpreadMeters:D

    .line 529
    return-object p0

    .line 526
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delaySpreadMeters must be > 0.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDetectedAttackLevel(I)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 5
    .param p1, "detectedAttackLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 564
    sparse-switch p1, :sswitch_data_20

    .line 576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :sswitch_1c
    iput p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mDetectedAttackLevel:I

    .line 574
    nop

    .line 578
    return-object p0

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1c
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1c
        0xff -> :sswitch_1c
    .end sparse-switch
.end method

.method public whitelist setErrorAltitudeAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 6
    .param p1, "angle"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 507
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_12

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_12

    .line 511
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAltitudeAngle:D

    .line 512
    return-object p0

    .line 508
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error angle must be in the range from 0.0 to 180.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setErrorAzimuthAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 6
    .param p1, "angle"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 471
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_12

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_12

    .line 475
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mErrorAzimuthAngle:D

    .line 476
    return-object p0

    .line 472
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error angle must be in the range from 0.0 to 360.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMeasurementTimestampNanos(J)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 3
    .param p1, "measurementTimestampNanos"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 605
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mMeasurementTimestampNanos:J

    .line 606
    return-object p0
.end method

.method public whitelist setVelocityMetersPerSecond(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;
    .registers 3
    .param p1, "velocityMetersPerSecond"    # D
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 591
    iput-wide p1, p0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->mVelocityMetersPerSecond:D

    .line 592
    return-object p0
.end method

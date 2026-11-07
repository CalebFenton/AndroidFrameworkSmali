.class public final Landroid/uwb/RangingMeasurement$Builder;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private blacklist mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private blacklist mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

.field private blacklist mElapsedRealtimeNanos:J

.field private blacklist mHusPrimarySessionId:J

.field private blacklist mLineOfSight:I

.field private blacklist mMeasurementFocus:I

.field private blacklist mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

.field private blacklist mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

.field private blacklist mRssiDbm:I

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 411
    const/4 v1, -0x1

    iput v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    .line 412
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    .line 413
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 414
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 415
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 416
    const/16 v1, 0xff

    iput v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    .line 417
    const/4 v1, 0x0

    iput v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    .line 418
    const/16 v1, -0x80

    iput v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    .line 419
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mHusPrimarySessionId:J

    .line 420
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/uwb/RangingMeasurement;
    .registers 18

    .line 580
    move-object/from16 v0, p0

    iget v1, v0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    if-eqz v1, :cond_1f

    .line 581
    iget-object v1, v0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    if-nez v1, :cond_17

    .line 586
    iget-object v1, v0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    if-nez v1, :cond_f

    goto :goto_1f

    .line 587
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Angle of Arrival must be null if ranging is not successful"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Distance Measurement must be null if ranging is not successful"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_1f
    :goto_1f
    iget-object v1, v0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    if-eqz v1, :cond_64

    .line 598
    iget-wide v1, v0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_49

    .line 603
    new-instance v2, Landroid/uwb/RangingMeasurement;

    iget-object v3, v0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    iget v4, v0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    iget-wide v5, v0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    iget-object v7, v0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    iget-object v8, v0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget-object v9, v0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget v10, v0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    iget v11, v0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    iget v12, v0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    iget-wide v13, v0, Landroid/uwb/RangingMeasurement$Builder;->mHusPrimarySessionId:J

    iget-object v15, v0, Landroid/uwb/RangingMeasurement$Builder;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Landroid/uwb/RangingMeasurement;-><init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIIJLandroid/os/PersistableBundle;Landroid/uwb/RangingMeasurement-IA;)V

    return-object v2

    .line 599
    :cond_49
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elapsedRealtimeNanos must be >=0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No remote device address was set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;

    .line 478
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 479
    return-object p0
.end method

.method public whitelist setDestinationAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;

    .line 491
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 492
    return-object p0
.end method

.method public whitelist setDistanceMeasurement(Landroid/uwb/DistanceMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "distanceMeasurement"    # Landroid/uwb/DistanceMeasurement;

    .line 465
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 466
    return-object p0
.end method

.method public whitelist setElapsedRealtimeNanos(J)Landroid/uwb/RangingMeasurement$Builder;
    .registers 5
    .param p1, "elapsedRealtimeNanos"    # J

    .line 451
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 454
    iput-wide p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    .line 455
    return-object p0

    .line 452
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elapsedRealtimeNanos must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setHusPrimarySessionId(J)Landroid/uwb/RangingMeasurement$Builder;
    .registers 3
    .param p1, "husPrimarySessionId"    # J

    .line 549
    iput-wide p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mHusPrimarySessionId:J

    .line 550
    return-object p0
.end method

.method public whitelist setLineOfSight(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "lineOfSight"    # I

    .line 502
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    .line 503
    return-object p0
.end method

.method public whitelist setMeasurementFocus(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "measurementFocus"    # I

    .line 513
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    .line 514
    return-object p0
.end method

.method public whitelist setRangingMeasurementMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 4
    .param p1, "rangingMeasurementMetadata"    # Landroid/os/PersistableBundle;

    .line 563
    if-eqz p1, :cond_5

    .line 566
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    .line 567
    return-object p0

    .line 564
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected non-null rangingMeasurementMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRemoteDeviceAddress(Landroid/uwb/UwbAddress;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;

    .line 429
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 430
    return-object p0
.end method

.method public whitelist setRssiDbm(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 5
    .param p1, "rssiDbm"    # I

    .line 524
    const/16 v0, -0x80

    if-eq p1, v0, :cond_25

    const/16 v0, -0x7f

    if-lt p1, v0, :cond_c

    const/4 v0, -0x1

    if-gt p1, v0, :cond_c

    goto :goto_25

    .line 525
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rssiDbm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_25
    :goto_25
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    .line 528
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 440
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    .line 441
    return-object p0
.end method

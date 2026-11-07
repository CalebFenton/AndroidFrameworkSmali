.class public final Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionDebug"
.end annotation


# instance fields
.field public blacklist ageSeconds:F

.field public blacklist altitudeMeters:F

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:F

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:F

.field public blacklist valid:Z

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 263
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 267
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 271
    iput v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 275
    iput v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 280
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 285
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 289
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 293
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 301
    iput v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 407
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 408
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 409
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 408
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 412
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 414
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;-><init>()V

    .line 415
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;
    mul-int/lit8 v6, v3, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 416
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 420
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 448
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 449
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 450
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 451
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 452
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 453
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 455
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 458
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 459
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 305
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 306
    return v0

    .line 308
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 309
    return v1

    .line 311
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    if-eq v2, v3, :cond_11

    .line 312
    return v1

    .line 314
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    .line 315
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;
    iget-boolean v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    if-eq v3, v4, :cond_1b

    .line 316
    return v1

    .line 318
    :cond_1b
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_24

    .line 319
    return v1

    .line 321
    :cond_24
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2d

    .line 322
    return v1

    .line 324
    :cond_2d
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_36

    .line 325
    return v1

    .line 327
    :cond_36
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3f

    .line 328
    return v1

    .line 330
    :cond_3f
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_48

    .line 331
    return v1

    .line 333
    :cond_48
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_51

    .line 334
    return v1

    .line 336
    :cond_51
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5a

    .line 337
    return v1

    .line 339
    :cond_5a
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_63

    .line 340
    return v1

    .line 342
    :cond_63
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6c

    .line 343
    return v1

    .line 345
    :cond_6c
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_75

    .line 346
    return v1

    .line 348
    :cond_75
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 13

    .line 353
    iget-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    .line 354
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 356
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 357
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 358
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 359
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 360
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 361
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 362
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 363
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    .line 364
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 353
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 425
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    .line 426
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 427
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 428
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 429
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 430
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 431
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 432
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 433
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 434
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 435
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    .line 436
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 398
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 399
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 400
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, ".valid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-boolean v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", .latitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ", .longitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ", .altitudeMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, ", .speedMetersPerSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ", .bearingDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", .horizontalAccuracyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", .verticalAccuracyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, ", .speedAccuracyMetersPerSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, ", .bearingAccuracyDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, ", .ageSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 463
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->valid:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 464
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->latitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 465
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->longitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 466
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->altitudeMeters:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 467
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 468
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingDegrees:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 469
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 470
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 471
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 472
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 473
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->ageSeconds:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 474
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 439
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 440
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 442
    return-void
.end method

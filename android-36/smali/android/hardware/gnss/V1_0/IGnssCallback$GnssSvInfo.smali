.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSvInfo"
.end annotation


# instance fields
.field public blacklist azimuthDegrees:F

.field public blacklist cN0Dbhz:F

.field public blacklist carrierFrequencyHz:F

.field public blacklist constellation:B

.field public blacklist elevationDegrees:F

.field public blacklist svFlag:B

.field public blacklist svid:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    .line 354
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 365
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 369
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 385
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 471
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 472
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 473
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 472
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 476
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 478
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;-><init>()V

    .line 479
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;
    mul-int/lit8 v6, v3, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 480
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 484
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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 508
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 509
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 510
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 511
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 512
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 513
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 515
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 518
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 519
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 394
    return v0

    .line 396
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 397
    return v1

    .line 399
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    if-eq v2, v3, :cond_11

    .line 400
    return v1

    .line 402
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    .line 403
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    if-eq v3, v4, :cond_1b

    .line 404
    return v1

    .line 406
    :cond_1b
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    if-eq v3, v4, :cond_22

    .line 407
    return v1

    .line 409
    :cond_22
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2b

    .line 410
    return v1

    .line 412
    :cond_2b
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_34

    .line 413
    return v1

    .line 415
    :cond_34
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3d

    .line 416
    return v1

    .line 418
    :cond_3d
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_46

    .line 419
    return v1

    .line 421
    :cond_46
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 422
    return v1

    .line 424
    :cond_59
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 429
    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    .line 430
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    .line 431
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 432
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 433
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 434
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    .line 435
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    .line 436
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 429
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 489
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    .line 490
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    .line 491
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 492
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 493
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 494
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    .line 495
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    .line 496
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 462
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 463
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 464
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ".svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, ", .cN0Dbhz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, ", .elevationDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, ", .azimuthDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 453
    const-string v1, ", .carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, ", .svFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvFlags;->dumpBitfield(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 523
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 524
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 525
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 526
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 527
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 528
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 529
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->svFlag:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 530
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 499
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 500
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 502
    return-void
.end method

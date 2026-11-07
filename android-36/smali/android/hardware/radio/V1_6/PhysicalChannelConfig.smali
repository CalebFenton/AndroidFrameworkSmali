.class public final Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    }
.end annotation


# instance fields
.field public blacklist band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

.field public blacklist cellBandwidthDownlinkKhz:I

.field public blacklist cellBandwidthUplinkKhz:I

.field public blacklist contextIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist downlinkChannelNumber:I

.field public blacklist physicalCellId:I

.field public blacklist rat:I

.field public blacklist status:I

.field public blacklist uplinkChannelNumber:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    .line 300
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    .line 304
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 308
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 312
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 316
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 335
    iput v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    .line 339
    new-instance v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 433
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 434
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 435
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 434
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 438
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 439
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 440
    new-instance v5, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;-><init>()V

    .line 441
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 442
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 446
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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 484
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 485
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 486
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 487
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 488
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 489
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 491
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 494
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 495
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 343
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 344
    return v0

    .line 346
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 347
    return v1

    .line 349
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    if-eq v2, v3, :cond_11

    .line 350
    return v1

    .line 352
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    .line 353
    .local v2, "other":Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    if-eq v3, v4, :cond_1b

    .line 354
    return v1

    .line 356
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    if-eq v3, v4, :cond_22

    .line 357
    return v1

    .line 359
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    if-eq v3, v4, :cond_29

    .line 360
    return v1

    .line 362
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    if-eq v3, v4, :cond_30

    .line 363
    return v1

    .line 365
    :cond_30
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    if-eq v3, v4, :cond_37

    .line 366
    return v1

    .line 368
    :cond_37
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    if-eq v3, v4, :cond_3e

    .line 369
    return v1

    .line 371
    :cond_3e
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 372
    return v1

    .line 374
    :cond_49
    iget v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    if-eq v3, v4, :cond_50

    .line 375
    return v1

    .line 377
    :cond_50
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 378
    return v1

    .line 380
    :cond_5b
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 11

    .line 385
    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 392
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    .line 394
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 385
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    .line 452
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    .line 453
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 454
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 455
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 456
    const-wide/16 v6, 0x14

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 458
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 459
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 460
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 459
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 463
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 464
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_61
    if-ge v3, v4, :cond_77

    .line 465
    const/4 v5, 0x0

    .line 466
    .local v5, "_hidl_vec_element":I
    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 467
    iget-object v6, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 470
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_77
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    .line 471
    iget-object v2, v0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    const-wide/16 v3, 0x2c

    add-long v3, p3, v3

    move-object/from16 v8, p1

    invoke-virtual {v2, v8, v1, v3, v4}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 472
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 424
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 425
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 426
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    invoke-static {v1}, Landroid/hardware/radio/V1_2/CellConnectionStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ", .rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioTechnology;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, ", .downlinkChannelNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ", .uplinkChannelNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ", .cellBandwidthDownlinkKhz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, ", .cellBandwidthUplinkKhz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, ", .contextIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", .physicalCellId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v1, ", .band = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 499
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 500
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 501
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 502
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget v8, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 503
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 504
    const-wide/16 v6, 0x14

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 506
    iget-object v6, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 507
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v2

    invoke-virtual {p1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 508
    add-long v2, p2, v7

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 509
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v6, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 510
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_50
    if-ge v3, v6, :cond_67

    .line 511
    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    iget-object v9, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v4, v5, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 513
    .end local v3    # "_hidl_index_0":I
    :cond_67
    add-long/2addr v7, p2

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 515
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 516
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 517
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 475
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 476
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 477
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 478
    return-void
.end method

.class public final Landroid/hardware/radio/V1_4/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_4/CellInfo$Info;
    }
.end annotation


# instance fields
.field public blacklist connectionStatus:I

.field public blacklist info:Landroid/hardware/radio/V1_4/CellInfo$Info;

.field public blacklist isRegistered:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 361
    iput v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 365
    new-instance v0, Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

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
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 423
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 424
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 425
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 424
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 428
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 430
    new-instance v5, Landroid/hardware/radio/V1_4/CellInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/CellInfo;-><init>()V

    .line 431
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/CellInfo;
    mul-int/lit16 v6, v3, 0x88

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 432
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/CellInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 436
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
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 456
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 457
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 458
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 459
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 460
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 461
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/CellInfo;

    mul-int/lit16 v5, v3, 0x88

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 463
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 466
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 467
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 369
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 370
    return v0

    .line 372
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 373
    return v1

    .line 375
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/CellInfo;

    if-eq v2, v3, :cond_11

    .line 376
    return v1

    .line 378
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/CellInfo;

    .line 379
    .local v2, "other":Landroid/hardware/radio/V1_4/CellInfo;
    iget-boolean v3, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    if-eq v3, v4, :cond_1b

    .line 380
    return v1

    .line 382
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    iget v4, v2, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    if-eq v3, v4, :cond_22

    .line 383
    return v1

    .line 385
    :cond_22
    iget-object v3, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 386
    return v1

    .line 388
    :cond_2d
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 393
    iget-boolean v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    .line 396
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 393
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 441
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 442
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 443
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo$Info;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 444
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 414
    const-wide/16 v0, 0x88

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 415
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 416
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ".isRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, ", .connectionStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v1, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    invoke-static {v1}, Landroid/hardware/radio/V1_2/CellConnectionStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ", .info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 471
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 472
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 473
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo$Info;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 474
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 447
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 448
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 450
    return-void
.end method

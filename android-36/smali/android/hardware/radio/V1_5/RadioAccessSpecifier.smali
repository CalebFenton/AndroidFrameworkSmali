.class public final Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;
    }
.end annotation


# instance fields
.field public blacklist bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

.field public blacklist channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist radioAccessNetwork:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 385
    new-instance v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 448
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 449
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 450
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 449
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 453
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 455
    new-instance v5, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 456
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    mul-int/lit8 v6, v3, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 457
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 461
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
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 493
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 494
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 495
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 496
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 497
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 498
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 500
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 503
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 504
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 394
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 395
    return v0

    .line 397
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 398
    return v1

    .line 400
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    if-eq v2, v3, :cond_11

    .line 401
    return v1

    .line 403
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    .line 404
    .local v2, "other":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    iget v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    if-eq v3, v4, :cond_1b

    .line 405
    return v1

    .line 407
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 408
    return v1

    .line 410
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 411
    return v1

    .line 413
    :cond_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 418
    iget v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 420
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    .line 421
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 418
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 467
    iget-object v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    const-wide/16 v5, 0x8

    add-long v7, p3, v5

    move-object/from16 v9, p1

    invoke-virtual {v4, v9, v1, v7, v8}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 469
    const-wide/16 v7, 0x20

    add-long v10, p3, v7

    add-long/2addr v10, v5

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 470
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v10, v5

    .line 471
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v7, p3, v7

    add-long v14, v7, v2

    .line 470
    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 474
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 475
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_39
    if-ge v3, v4, :cond_4f

    .line 476
    const/4 v5, 0x0

    .line 477
    .local v5, "_hidl_vec_element":I
    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 478
    iget-object v6, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 481
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_4f
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 439
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 440
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 441
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, ".radioAccessNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/RadioAccessNetworks;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, ", .bands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, ", .channels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 508
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 509
    iget-object v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    invoke-virtual {v2, p1, v5, v6}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 511
    iget-object v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 512
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v7, p2, v5

    add-long/2addr v7, v3

    invoke-virtual {p1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 513
    add-long v3, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v3, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 514
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 515
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_31
    if-ge v4, v2, :cond_48

    .line 516
    mul-int/lit8 v7, v4, 0x4

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 518
    .end local v4    # "_hidl_index_0":I
    :cond_48
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 520
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 484
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 485
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 486
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 487
    return-void
.end method

.class public final Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conditional"
.end annotation


# instance fields
.field public blacklist factor:I

.field public blacklist isBarred:Z

.field public blacklist timeSeconds:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    .line 451
    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    .line 465
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

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
            "Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 523
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 524
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 525
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 524
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 528
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 529
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 530
    new-instance v5, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;-><init>()V

    .line 531
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
    mul-int/lit8 v6, v3, 0xc

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 532
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 536
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
            "Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 556
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 557
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 558
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 559
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 560
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 561
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 563
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 566
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 567
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 469
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 470
    return v0

    .line 472
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 473
    return v1

    .line 475
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    if-eq v2, v3, :cond_11

    .line 476
    return v1

    .line 478
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    .line 479
    .local v2, "other":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
    iget v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    iget v4, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    if-eq v3, v4, :cond_1b

    .line 480
    return v1

    .line 482
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    iget v4, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    if-eq v3, v4, :cond_22

    .line 483
    return v1

    .line 485
    :cond_22
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    if-eq v3, v4, :cond_29

    .line 486
    return v1

    .line 488
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 493
    iget v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    .line 496
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 493
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 541
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    .line 542
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    .line 543
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    .line 544
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 514
    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 515
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 516
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, ".factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, ", .timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ", .isBarred = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 571
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 572
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 573
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 574
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 547
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 548
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 549
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 550
    return-void
.end method

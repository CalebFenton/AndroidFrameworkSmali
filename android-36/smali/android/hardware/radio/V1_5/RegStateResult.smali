.class public final Landroid/hardware/radio/V1_5/RegStateResult;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
    }
.end annotation


# instance fields
.field public blacklist accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

.field public blacklist cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

.field public blacklist rat:I

.field public blacklist reasonForDenial:I

.field public blacklist regState:I

.field public blacklist registeredPlmn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    .line 515
    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    .line 520
    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 524
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 530
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 534
    new-instance v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

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
            "Landroid/hardware/radio/V1_5/RegStateResult;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 610
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 611
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xe0

    int-to-long v5, v3

    .line 612
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 611
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 615
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 617
    new-instance v5, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 618
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult;
    mul-int/lit16 v6, v3, 0xe0

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/RegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 619
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 623
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
            "Landroid/hardware/radio/V1_5/RegStateResult;",
            ">;)V"
        }
    .end annotation

    .line 650
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 652
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 653
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 654
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 655
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xe0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 656
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 657
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/RegStateResult;

    mul-int/lit16 v5, v3, 0xe0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/RegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 659
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 662
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 663
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 538
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 539
    return v0

    .line 541
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 542
    return v1

    .line 544
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eq v2, v3, :cond_11

    .line 545
    return v1

    .line 547
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/RegStateResult;

    .line 548
    .local v2, "other":Landroid/hardware/radio/V1_5/RegStateResult;
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    if-eq v3, v4, :cond_1b

    .line 549
    return v1

    .line 551
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    if-eq v3, v4, :cond_22

    .line 552
    return v1

    .line 554
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    if-eq v3, v4, :cond_29

    .line 555
    return v1

    .line 557
    :cond_29
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 558
    return v1

    .line 560
    :cond_34
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 561
    return v1

    .line 563
    :cond_3f
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 564
    return v1

    .line 566
    :cond_4a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 571
    iget v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 575
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 576
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 577
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 571
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 628
    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    .line 629
    const-wide/16 v3, 0x4

    add-long/2addr v3, p3

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    .line 630
    const-wide/16 v3, 0x8

    add-long/2addr v3, p3

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 631
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    const-wide/16 v4, 0x10

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/radio/V1_5/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 632
    const-wide/16 v3, 0xb8

    add-long v5, p3, v3

    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 634
    iget-object v5, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 635
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 636
    move-wide v8, v3

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v8, p3

    add-long/2addr v8, v1

    .line 634
    const/4 v7, 0x0

    move-object v0, p1

    move-wide v1, v5

    move-wide v5, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 639
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    const-wide/16 v2, 0xc8

    add-long/2addr v2, p3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 640
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 601
    const-wide/16 v0, 0xe0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 602
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 603
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, ".regState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, ", .rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioTechnology;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, ", .reasonForDenial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/RegistrationFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, ", .cellIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, ", .registeredPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, ", .accessTechnologySpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 667
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 668
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 669
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 670
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 671
    const-wide/16 v0, 0xb8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    const-wide/16 v1, 0xc8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 673
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 643
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 644
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 645
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 646
    return-void
.end method

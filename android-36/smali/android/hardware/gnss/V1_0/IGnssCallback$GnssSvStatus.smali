.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSvStatus"
.end annotation


# instance fields
.field public blacklist gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

.field public blacklist numSvs:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    .line 545
    const/16 v0, 0x40

    new-array v0, v0, [Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 597
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 598
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x604

    int-to-long v5, v3

    .line 599
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 598
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 602
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 604
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 605
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    mul-int/lit16 v6, v3, 0x604

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 606
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 610
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
            "Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;",
            ">;)V"
        }
    .end annotation

    .line 634
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 636
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 637
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 638
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 639
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x604

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 640
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 641
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    mul-int/lit16 v5, v3, 0x604

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 643
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 646
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 647
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 549
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 550
    return v0

    .line 552
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 553
    return v1

    .line 555
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    if-eq v2, v3, :cond_11

    .line 556
    return v1

    .line 558
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    .line 559
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    if-eq v3, v4, :cond_1b

    .line 560
    return v1

    .line 562
    :cond_1b
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 563
    return v1

    .line 565
    :cond_26
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 570
    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    .line 571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    .line 572
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 570
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 615
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    .line 617
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 618
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_d
    const/16 v3, 0x40

    if-ge v2, v3, :cond_27

    .line 619
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    new-instance v4, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-direct {v4}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;-><init>()V

    aput-object v4, v3, v2

    .line 620
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 621
    const-wide/16 v3, 0x18

    add-long/2addr v0, v3

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 624
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_27
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 588
    const-wide/16 v0, 0x604

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 589
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 590
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, ".numSvs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, ", .gnssSvList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 651
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->numSvs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 653
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 654
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_c
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1d

    .line 655
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->gnssSvList:[Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 656
    const-wide/16 v3, 0x18

    add-long/2addr v0, v3

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 659
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_1d
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 627
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x604

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 628
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 629
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 630
    return-void
.end method

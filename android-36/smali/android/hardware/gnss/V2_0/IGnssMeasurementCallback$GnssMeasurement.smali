.class public final Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist codeType:Ljava/lang/String;

.field public blacklist constellation:B

.field public blacklist state:I

.field public blacklist v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    .line 639
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    .line 652
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

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
            "Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 716
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 717
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xb0

    int-to-long v5, v3

    .line 718
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 717
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 721
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 722
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 723
    new-instance v5, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 724
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;
    mul-int/lit16 v6, v3, 0xb0

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 725
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 729
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
            "Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 754
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 756
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 757
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 758
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 759
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xb0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 760
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 761
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v3, 0xb0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 763
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 766
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 767
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 656
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 657
    return v0

    .line 659
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 660
    return v1

    .line 662
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_11

    .line 663
    return v1

    .line 665
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 666
    .local v2, "other":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;
    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v4, v2, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 667
    return v1

    .line 669
    :cond_1f
    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 670
    return v1

    .line 672
    :cond_2a
    iget v3, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 673
    return v1

    .line 675
    :cond_3d
    iget-byte v3, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    if-eq v3, v4, :cond_44

    .line 676
    return v1

    .line 678
    :cond_44
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 683
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    .line 684
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    .line 685
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    .line 686
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    .line 687
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 683
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 734
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 735
    const-wide/16 v4, 0x98

    add-long v6, p3, v4

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    .line 737
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    .line 738
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    .line 739
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v4, p3, v4

    add-long v11, v4, v2

    .line 737
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 742
    const-wide/16 v1, 0xa8

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    .line 743
    const-wide/16 v1, 0xac

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    .line 744
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 707
    const-wide/16 v0, 0xb0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 708
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 709
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v1, ".v1_1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 696
    const-string v1, ", .codeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string v1, ", .state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurementState;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 771
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->v1_1:Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 772
    const-wide/16 v0, 0x98

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->codeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 773
    const-wide/16 v0, 0xa8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 774
    const-wide/16 v0, 0xac

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 775
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 747
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xb0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 748
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 749
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 750
    return-void
.end method

.class public final Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteData"
.end annotation


# instance fields
.field public blacklist constellation:B

.field public blacklist ephemerisAgeSeconds:F

.field public blacklist ephemerisHealth:B

.field public blacklist ephemerisSource:B

.field public blacklist ephemerisType:B

.field public blacklist serverPredictionAgeSeconds:F

.field public blacklist serverPredictionIsAvailable:Z

.field public blacklist svid:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    .line 620
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    .line 626
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    .line 630
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    .line 635
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    .line 641
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 646
    iput-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 652
    iput v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 740
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 741
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 742
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 741
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 745
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 746
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 747
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;-><init>()V

    .line 748
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
    mul-int/lit8 v6, v3, 0x14

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 749
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 753
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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;",
            ">;)V"
        }
    .end annotation

    .line 776
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 778
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 779
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 780
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 781
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 782
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 783
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 782
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 785
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 788
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 789
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

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    if-eq v2, v3, :cond_11

    .line 663
    return v1

    .line 665
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    .line 666
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    if-eq v3, v4, :cond_1b

    .line 667
    return v1

    .line 669
    :cond_1b
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    if-eq v3, v4, :cond_22

    .line 670
    return v1

    .line 672
    :cond_22
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    if-eq v3, v4, :cond_29

    .line 673
    return v1

    .line 675
    :cond_29
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    if-eq v3, v4, :cond_30

    .line 676
    return v1

    .line 678
    :cond_30
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    if-eq v3, v4, :cond_37

    .line 679
    return v1

    .line 681
    :cond_37
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_40

    .line 682
    return v1

    .line 684
    :cond_40
    iget-boolean v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    if-eq v3, v4, :cond_47

    .line 685
    return v1

    .line 687
    :cond_47
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_50

    .line 688
    return v1

    .line 690
    :cond_50
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 695
    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    .line 696
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    .line 697
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    .line 698
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    .line 699
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    .line 700
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 701
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 702
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    .line 703
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 695
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 758
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    .line 759
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    .line 760
    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    .line 761
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    .line 762
    const-wide/16 v0, 0x5

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    .line 763
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 764
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 765
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    .line 766
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 731
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 732
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 733
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v1, ".svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v1, ", .ephemerisType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteEphemerisType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v1, ", .ephemerisSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteEphemerisSource;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v1, ", .ephemerisHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteEphemerisHealth;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v1, ", .ephemerisAgeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 722
    const-string v1, ", .serverPredictionIsAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-boolean v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 724
    const-string v1, ", .serverPredictionAgeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 726
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 793
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->svid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 794
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 795
    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisType:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 796
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisSource:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 797
    const-wide/16 v0, 0x5

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisHealth:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 798
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 799
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 800
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 801
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 769
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 770
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 771
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 772
    return-void
.end method

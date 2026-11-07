.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssClock"
.end annotation


# instance fields
.field public blacklist biasNs:D

.field public blacklist biasUncertaintyNs:D

.field public blacklist driftNsps:D

.field public blacklist driftUncertaintyNsps:D

.field public blacklist fullBiasNs:J

.field public blacklist gnssClockFlags:S

.field public blacklist hwClockDiscontinuityCount:I

.field public blacklist leapSecond:S

.field public blacklist timeNs:J

.field public blacklist timeUncertaintyNs:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    .line 630
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    .line 640
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    .line 657
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    .line 668
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    .line 681
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    .line 693
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    .line 703
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    .line 735
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

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
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;",
            ">;"
        }
    .end annotation

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 835
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 836
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 837
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 836
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 840
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 841
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 842
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;-><init>()V

    .line 843
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;
    mul-int/lit8 v6, v3, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 844
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 848
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
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;",
            ">;)V"
        }
    .end annotation

    .line 873
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 875
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 876
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 877
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 878
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 879
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 880
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 882
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 885
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 886
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 739
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 740
    return v0

    .line 742
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 743
    return v1

    .line 745
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    if-eq v2, v3, :cond_11

    .line 746
    return v1

    .line 748
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 749
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 750
    return v1

    .line 752
    :cond_27
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    if-eq v3, v4, :cond_2e

    .line 753
    return v1

    .line 755
    :cond_2e
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_37

    .line 756
    return v1

    .line 758
    :cond_37
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_40

    .line 759
    return v1

    .line 761
    :cond_40
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_49

    .line 762
    return v1

    .line 764
    :cond_49
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_52

    .line 765
    return v1

    .line 767
    :cond_52
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5b

    .line 768
    return v1

    .line 770
    :cond_5b
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_64

    .line 771
    return v1

    .line 773
    :cond_64
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6d

    .line 774
    return v1

    .line 776
    :cond_6d
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    if-eq v3, v4, :cond_74

    .line 777
    return v1

    .line 779
    :cond_74
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 12

    .line 784
    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    .line 785
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    .line 786
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    .line 787
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    .line 788
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    .line 789
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    .line 790
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    .line 791
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    .line 792
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    .line 793
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 784
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 853
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    .line 854
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    .line 855
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    .line 856
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    .line 857
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    .line 858
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    .line 859
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    .line 860
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    .line 861
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    .line 862
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    .line 863
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 826
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 827
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 828
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v1, ".gnssClockFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClockFlags;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v1, ", .leapSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    const-string v1, ", .timeNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 807
    const-string v1, ", .timeUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 809
    const-string v1, ", .fullBiasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 811
    const-string v1, ", .biasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 813
    const-string v1, ", .biasUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 815
    const-string v1, ", .driftNsps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 817
    const-string v1, ", .driftUncertaintyNsps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 819
    const-string v1, ", .hwClockDiscontinuityCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 890
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->gnssClockFlags:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 891
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->leapSecond:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 892
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 893
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->timeUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 894
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->fullBiasNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 895
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 896
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->biasUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 897
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftNsps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 898
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->driftUncertaintyNsps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 899
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->hwClockDiscontinuityCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 900
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 866
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 867
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 868
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 869
    return-void
.end method

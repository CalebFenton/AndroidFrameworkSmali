.class public final Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeDebug"
.end annotation


# instance fields
.field public blacklist frequencyUncertaintyNsPerSec:F

.field public blacklist timeEstimate:J

.field public blacklist timeUncertaintyNs:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 497
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 555
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 556
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 557
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 556
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 560
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 561
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 562
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;-><init>()V

    .line 563
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 564
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 568
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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;",
            ">;)V"
        }
    .end annotation

    .line 586
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 588
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 589
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 590
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 591
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 592
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 593
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 592
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 595
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 598
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 599
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 501
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 502
    return v0

    .line 504
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 505
    return v1

    .line 507
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    if-eq v2, v3, :cond_11

    .line 508
    return v1

    .line 510
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 511
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    .line 512
    return v1

    .line 514
    :cond_1d
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_26

    .line 515
    return v1

    .line 517
    :cond_26
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2f

    .line 518
    return v1

    .line 520
    :cond_2f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 525
    iget-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 526
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 527
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    .line 528
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 525
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 573
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 574
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 575
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    .line 576
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 546
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 547
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v1, ".timeEstimate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, ", .timeUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, ", .frequencyUncertaintyNsPerSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 603
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 604
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 605
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 606
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 579
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 580
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 582
    return-void
.end method

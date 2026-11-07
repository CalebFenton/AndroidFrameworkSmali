.class public final Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssClock"
.end annotation


# instance fields
.field public blacklist referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 477
    new-instance v0, Landroid/hardware/gnss/V2_1/GnssSignalType;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_1/GnssSignalType;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 529
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 530
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 531
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 530
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 534
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 536
    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;-><init>()V

    .line 537
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;
    mul-int/lit8 v6, v3, 0x68

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 538
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 542
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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;",
            ">;)V"
        }
    .end annotation

    .line 559
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 561
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 562
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 563
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 564
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 565
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 566
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;

    mul-int/lit8 v5, v3, 0x68

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 565
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 568
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 571
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 572
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 481
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 482
    return v0

    .line 484
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 485
    return v1

    .line 487
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;

    if-eq v2, v3, :cond_11

    .line 488
    return v1

    .line 490
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;

    .line 491
    .local v2, "other":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 492
    return v1

    .line 494
    :cond_1f
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 495
    return v1

    .line 497
    :cond_2a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 502
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 503
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    .line 504
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 502
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 547
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V2_1/GnssSignalType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 549
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 520
    const-wide/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 521
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 522
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, ", .referenceSignalTypeForIsb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 576
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 577
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/V2_1/GnssSignalType;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V2_1/GnssSignalType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 578
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 552
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 553
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 554
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 555
    return-void
.end method

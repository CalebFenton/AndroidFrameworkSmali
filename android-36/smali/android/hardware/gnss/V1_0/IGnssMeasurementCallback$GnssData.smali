.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssData"
.end annotation


# instance fields
.field public blacklist clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

.field public blacklist measurementCount:I

.field public blacklist measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    .line 1470
    const/16 v0, 0x40

    new-array v0, v0, [Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 1474
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

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
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;",
            ">;"
        }
    .end annotation

    .line 1528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1532
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 1533
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x2450

    int-to-long v5, v3

    .line 1534
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 1533
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 1537
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1538
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 1539
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1540
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    mul-int/lit16 v6, v3, 0x2450

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1541
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1545
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
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;",
            ">;)V"
        }
    .end annotation

    .line 1570
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1572
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1573
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1574
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1575
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x2450

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1576
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 1577
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    mul-int/lit16 v5, v3, 0x2450

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1576
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1579
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1582
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1583
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 1478
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1479
    return v0

    .line 1481
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1482
    return v1

    .line 1484
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    if-eq v2, v3, :cond_11

    .line 1485
    return v1

    .line 1487
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    .line 1488
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    if-eq v3, v4, :cond_1b

    .line 1489
    return v1

    .line 1491
    :cond_1b
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1492
    return v1

    .line 1494
    :cond_26
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1495
    return v1

    .line 1497
    :cond_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 1502
    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    .line 1503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 1504
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 1505
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1502
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 1550
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    .line 1552
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 1553
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_d
    const/16 v3, 0x40

    if-ge v2, v3, :cond_27

    .line 1554
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    new-instance v4, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v4}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    aput-object v4, v3, v2

    .line 1555
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1556
    const-wide/16 v3, 0x90

    add-long/2addr v0, v3

    .line 1553
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1559
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_27
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x2408

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1560
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 1523
    const-wide/16 v0, 0x2450

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1524
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1525
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    const-string v1, ".measurementCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1514
    const-string v1, ", .measurements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    const-string v1, ", .clock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 1587
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurementCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1589
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 1590
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_c
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1d

    .line 1591
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->measurements:[Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1592
    const-wide/16 v3, 0x90

    add-long/2addr v0, v3

    .line 1590
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1595
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_1d
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x2408

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1596
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 1563
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x2450

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1564
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1565
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1566
    return-void
.end method

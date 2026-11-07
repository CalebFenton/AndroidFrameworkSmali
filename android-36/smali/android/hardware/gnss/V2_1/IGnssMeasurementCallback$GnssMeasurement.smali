.class public final Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist basebandCN0DbHz:D

.field public blacklist flags:I

.field public blacklist fullInterSignalBiasNs:D

.field public blacklist fullInterSignalBiasUncertaintyNs:D

.field public blacklist satelliteInterSignalBiasNs:D

.field public blacklist satelliteInterSignalBiasUncertaintyNs:D

.field public blacklist v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    .line 282
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 304
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 308
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    .line 322
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 404
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 405
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xe0

    int-to-long v5, v3

    .line 406
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 405
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 409
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 410
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 411
    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 412
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;
    mul-int/lit16 v6, v3, 0xe0

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 413
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 417
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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 441
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 442
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 443
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 444
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xe0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 445
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 446
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v3, 0xe0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 448
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 451
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 452
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 326
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 327
    return v0

    .line 329
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 330
    return v1

    .line 332
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_11

    .line 333
    return v1

    .line 335
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    .line 336
    .local v2, "other":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 337
    return v1

    .line 339
    :cond_1f
    iget v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 340
    return v1

    .line 342
    :cond_32
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3b

    .line 343
    return v1

    .line 345
    :cond_3b
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_44

    .line 346
    return v1

    .line 348
    :cond_44
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4d

    .line 349
    return v1

    .line 351
    :cond_4d
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_56

    .line 352
    return v1

    .line 354
    :cond_56
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5f

    .line 355
    return v1

    .line 357
    :cond_5f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 362
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 363
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    .line 365
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 366
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 367
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    .line 368
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    .line 369
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 362
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 422
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 423
    const-wide/16 v0, 0xb0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    .line 424
    const-wide/16 v0, 0xb8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    .line 425
    const-wide/16 v0, 0xc0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 426
    const-wide/16 v0, 0xc8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 427
    const-wide/16 v0, 0xd0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    .line 428
    const-wide/16 v0, 0xd8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    .line 429
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 395
    const-wide/16 v0, 0xe0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 396
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 397
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, ".v2_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, ", .flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v1}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurementFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ", .fullInterSignalBiasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, ", .fullInterSignalBiasUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, ", .satelliteInterSignalBiasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, ", .satelliteInterSignalBiasUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, ", .basebandCN0DbHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 456
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 457
    const-wide/16 v0, 0xb0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 458
    const-wide/16 v0, 0xb8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 459
    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 460
    const-wide/16 v0, 0xc8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 461
    const-wide/16 v0, 0xd0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 462
    const-wide/16 v0, 0xd8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 463
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 432
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 433
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 434
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 435
    return-void
.end method

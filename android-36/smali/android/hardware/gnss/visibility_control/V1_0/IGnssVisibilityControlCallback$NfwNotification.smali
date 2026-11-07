.class public final Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NfwNotification"
.end annotation


# instance fields
.field public blacklist inEmergencyMode:Z

.field public blacklist isCachedLocation:Z

.field public blacklist otherProtocolStackName:Ljava/lang/String;

.field public blacklist protocolStack:B

.field public blacklist proxyAppPackageName:Ljava/lang/String;

.field public blacklist requestor:B

.field public blacklist requestorId:Ljava/lang/String;

.field public blacklist responseType:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    .line 325
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 329
    iput-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    .line 336
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 340
    iput-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    .line 344
    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 348
    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

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
            "Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 436
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 437
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 438
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 437
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 441
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 443
    new-instance v5, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;

    invoke-direct {v5}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;-><init>()V

    .line 444
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;
    mul-int/lit8 v6, v3, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 445
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 449
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
            "Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;",
            ">;)V"
        }
    .end annotation

    .line 490
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 492
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 493
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 494
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 495
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 496
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 497
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 499
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 502
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 503
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 352
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 353
    return v0

    .line 355
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 356
    return v1

    .line 358
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;

    if-eq v2, v3, :cond_11

    .line 359
    return v1

    .line 361
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;

    .line 362
    .local v2, "other":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;
    iget-object v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 363
    return v1

    .line 365
    :cond_1f
    iget-byte v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    iget-byte v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    if-eq v3, v4, :cond_26

    .line 366
    return v1

    .line 368
    :cond_26
    iget-object v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 369
    return v1

    .line 371
    :cond_31
    iget-byte v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    iget-byte v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    if-eq v3, v4, :cond_38

    .line 372
    return v1

    .line 374
    :cond_38
    iget-object v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 375
    return v1

    .line 377
    :cond_43
    iget-byte v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    iget-byte v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    if-eq v3, v4, :cond_4a

    .line 378
    return v1

    .line 380
    :cond_4a
    iget-boolean v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    if-eq v3, v4, :cond_51

    .line 381
    return v1

    .line 383
    :cond_51
    iget-boolean v3, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    if-eq v3, v4, :cond_58

    .line 384
    return v1

    .line 386
    :cond_58
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 391
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 392
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    .line 393
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 394
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    .line 395
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 396
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-byte v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    .line 397
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 398
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v0, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    .line 399
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 391
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 456
    iget-object v4, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 457
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 458
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 456
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 461
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    .line 462
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 464
    iget-object v6, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 466
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 464
    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 469
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    .line 470
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 472
    iget-object v6, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 473
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 474
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 472
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 477
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    .line 478
    const-wide/16 v2, 0x41

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 479
    const-wide/16 v2, 0x42

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    .line 480
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 427
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 428
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 429
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, ".proxyAppPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ", .protocolStack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-byte v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    invoke-static {v1}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwProtocolStack;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", .otherProtocolStackName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, ", .requestor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-byte v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    invoke-static {v1}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwRequestor;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, ", .requestorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, ", .responseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-byte v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    invoke-static {v1}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwResponseType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, ", .inEmergencyMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-boolean v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 420
    const-string v1, ", .isCachedLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-boolean v1, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 507
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 508
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 509
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 510
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestor:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 511
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 512
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->responseType:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 513
    const-wide/16 v0, 0x41

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 514
    const-wide/16 v0, 0x42

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 515
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 483
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 484
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 486
    return-void
.end method

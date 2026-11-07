.class public final Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNavigationMessage"
.end annotation


# instance fields
.field public blacklist data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist messageId:S

.field public blacklist status:S

.field public blacklist submessageId:S

.field public blacklist svid:S

.field public blacklist type:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    .line 273
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    .line 300
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    .line 317
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 424
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 425
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 426
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 425
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 429
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 431
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;-><init>()V

    .line 432
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 433
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 437
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
            "Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 472
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 473
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 474
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 475
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 476
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 477
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 479
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 482
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 483
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

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;

    if-eq v2, v3, :cond_11

    .line 359
    return v1

    .line 361
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;

    .line 362
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    if-eq v3, v4, :cond_1b

    .line 363
    return v1

    .line 365
    :cond_1b
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    if-eq v3, v4, :cond_22

    .line 366
    return v1

    .line 368
    :cond_22
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 369
    return v1

    .line 371
    :cond_35
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    if-eq v3, v4, :cond_3c

    .line 372
    return v1

    .line 374
    :cond_3c
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    if-eq v3, v4, :cond_43

    .line 375
    return v1

    .line 377
    :cond_43
    iget-object v3, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 378
    return v1

    .line 380
    :cond_4e
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 385
    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    .line 386
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    .line 387
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    .line 388
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    .line 389
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    .line 390
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    .line 391
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 385
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    .line 443
    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    .line 444
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    .line 445
    const-wide/16 v4, 0x6

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    .line 446
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v6

    iput-short v6, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    .line 448
    const-wide/16 v6, 0x10

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 449
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 450
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 449
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 453
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_57
    if-ge v3, v4, :cond_6d

    .line 455
    const/4 v5, 0x0

    .line 456
    .local v5, "_hidl_vec_element":B
    mul-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 457
    iget-object v6, v0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 460
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_6d
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 415
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 416
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 417
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, ".svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessageType;->toString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$NavigationMessageStatus;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, ", .messageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, ", .submessageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ", .data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 487
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-short v4, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 488
    const-wide/16 v2, 0x2

    add-long/2addr v2, p2

    iget-short v4, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 489
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget-short v4, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 490
    const-wide/16 v2, 0x6

    add-long/2addr v2, p2

    iget-short v4, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 491
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget-short v6, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:S

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 493
    iget-object v4, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 494
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v7, p2, v5

    add-long/2addr v7, v2

    invoke-virtual {p1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 495
    add-long v2, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 496
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 497
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_49
    if-ge v3, v4, :cond_60

    .line 498
    mul-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 500
    .end local v3    # "_hidl_index_0":I
    :cond_60
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 502
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 463
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 464
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 466
    return-void
.end method

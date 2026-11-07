.class public final Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;
.super Ljava/lang/Object;
.source "IAGnssRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AGnssRefLocationCellID"
.end annotation


# instance fields
.field public blacklist cid:I

.field public blacklist lac:S

.field public blacklist mcc:S

.field public blacklist mnc:S

.field public blacklist pcid:S

.field public blacklist tac:S

.field public blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    .line 247
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    .line 251
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    .line 257
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    .line 261
    iput v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    .line 265
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    .line 269
    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

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
            "Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 351
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 352
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 353
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 352
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 356
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 358
    new-instance v5, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;-><init>()V

    .line 359
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 360
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 364
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
            "Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 388
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 389
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 390
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 391
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 392
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 393
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 395
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 398
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 399
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 273
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 274
    return v0

    .line 276
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 277
    return v1

    .line 279
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    if-eq v2, v3, :cond_11

    .line 280
    return v1

    .line 282
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    .line 283
    .local v2, "other":Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    if-eq v3, v4, :cond_1b

    .line 284
    return v1

    .line 286
    :cond_1b
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    if-eq v3, v4, :cond_22

    .line 287
    return v1

    .line 289
    :cond_22
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    if-eq v3, v4, :cond_29

    .line 290
    return v1

    .line 292
    :cond_29
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    if-eq v3, v4, :cond_30

    .line 293
    return v1

    .line 295
    :cond_30
    iget v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    iget v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    if-eq v3, v4, :cond_37

    .line 296
    return v1

    .line 298
    :cond_37
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    if-eq v3, v4, :cond_3e

    .line 299
    return v1

    .line 301
    :cond_3e
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    if-eq v3, v4, :cond_45

    .line 302
    return v1

    .line 304
    :cond_45
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 309
    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    .line 310
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    .line 311
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    .line 312
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    .line 313
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    .line 315
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    .line 316
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 309
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 369
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    .line 370
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    .line 371
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    .line 372
    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    .line 373
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    .line 374
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    .line 375
    const-wide/16 v0, 0xe

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    .line 376
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 342
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 343
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 344
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", .mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", .mnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, ", .lac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", .tac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ", .pcid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 403
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->type:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 404
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mcc:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 405
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->mnc:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 406
    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->lac:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 407
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 408
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->tac:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 409
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->pcid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 410
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 379
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 380
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 381
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 382
    return-void
.end method

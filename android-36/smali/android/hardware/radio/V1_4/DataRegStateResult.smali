.class public final Landroid/hardware/radio/V1_4/DataRegStateResult;
.super Ljava/lang/Object;
.source "DataRegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;
    }
.end annotation


# instance fields
.field public blacklist base:Landroid/hardware/radio/V1_2/DataRegStateResult;

.field public blacklist nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

.field public blacklist vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 215
    new-instance v0, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 220
    new-instance v0, Landroid/hardware/radio/V1_4/NrIndicators;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/NrIndicators;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

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
            "Landroid/hardware/radio/V1_4/DataRegStateResult;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataRegStateResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 278
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 279
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 280
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 279
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 283
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 285
    new-instance v5, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 286
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/DataRegStateResult;
    mul-int/lit8 v6, v3, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 287
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/DataRegStateResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 291
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
            "Landroid/hardware/radio/V1_4/DataRegStateResult;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataRegStateResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 311
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 312
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 313
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 314
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 315
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 316
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/DataRegStateResult;

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/DataRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 318
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 321
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 322
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 225
    return v0

    .line 227
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 228
    return v1

    .line 230
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/DataRegStateResult;

    if-eq v2, v3, :cond_11

    .line 231
    return v1

    .line 233
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/DataRegStateResult;

    .line 234
    .local v2, "other":Landroid/hardware/radio/V1_4/DataRegStateResult;
    iget-object v3, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 235
    return v1

    .line 237
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 238
    return v1

    .line 240
    :cond_2a
    iget-object v3, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 241
    return v1

    .line 243
    :cond_35
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 248
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 249
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 250
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    .line 251
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 296
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 297
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    const-wide/16 v1, 0x68

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 298
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    const-wide/16 v1, 0x6b

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_4/NrIndicators;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 299
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 269
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 270
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 271
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", .vopsInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", .nrIndicators = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v1, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 326
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 327
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    const-wide/16 v1, 0x68

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 328
    iget-object v0, p0, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    const-wide/16 v1, 0x6b

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_4/NrIndicators;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 329
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 302
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/DataRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 305
    return-void
.end method

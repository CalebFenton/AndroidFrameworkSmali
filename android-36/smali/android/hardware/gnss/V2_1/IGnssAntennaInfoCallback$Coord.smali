.class public final Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coord"
.end annotation


# instance fields
.field public blacklist x:D

.field public blacklist xUncertainty:D

.field public blacklist y:D

.field public blacklist yUncertainty:D

.field public blacklist z:D

.field public blacklist zUncertainty:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 217
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 218
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 219
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 220
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 221
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 297
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 298
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 299
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 298
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 302
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 304
    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;-><init>()V

    .line 305
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;
    mul-int/lit8 v6, v3, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 306
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 310
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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 333
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 335
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 338
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 340
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 343
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 344
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 225
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 226
    return v0

    .line 228
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 229
    return v1

    .line 231
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    if-eq v2, v3, :cond_11

    .line 232
    return v1

    .line 234
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 235
    .local v2, "other":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1d

    .line 236
    return v1

    .line 238
    :cond_1d
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_26

    .line 239
    return v1

    .line 241
    :cond_26
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2f

    .line 242
    return v1

    .line 244
    :cond_2f
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_38

    .line 245
    return v1

    .line 247
    :cond_38
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_41

    .line 248
    return v1

    .line 250
    :cond_41
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4a

    .line 251
    return v1

    .line 253
    :cond_4a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 258
    iget-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 261
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    .line 264
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 315
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 316
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 317
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 318
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 319
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 320
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    .line 321
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 288
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 289
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 290
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ".x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", .xUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", .y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", .yUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ", .z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", .zUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 348
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 349
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 350
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 351
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 352
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 353
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 354
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 324
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 325
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 327
    return-void
.end method

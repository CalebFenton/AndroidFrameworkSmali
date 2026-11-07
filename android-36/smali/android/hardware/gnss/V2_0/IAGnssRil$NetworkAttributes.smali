.class public final Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
.super Ljava/lang/Object;
.source "IAGnssRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkAttributes"
.end annotation


# instance fields
.field public blacklist apn:Ljava/lang/String;

.field public blacklist capabilities:S

.field public blacklist isConnected:Z

.field public blacklist networkHandle:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

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
            "Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 220
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 221
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 222
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 221
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 225
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 227
    new-instance v5, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;-><init>()V

    .line 228
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 229
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 233
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
            "Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 260
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 262
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 263
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 264
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 265
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 267
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 270
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 271
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 161
    return v0

    .line 163
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 164
    return v1

    .line 166
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    if-eq v2, v3, :cond_11

    .line 167
    return v1

    .line 169
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    .line 170
    .local v2, "other":Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
    iget-wide v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    iget-wide v5, v2, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    .line 171
    return v1

    .line 173
    :cond_1d
    iget-boolean v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    iget-boolean v4, v2, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    if-eq v3, v4, :cond_24

    .line 174
    return v1

    .line 176
    :cond_24
    iget-short v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 177
    return v1

    .line 179
    :cond_37
    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 180
    return v1

    .line 182
    :cond_42
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 187
    iget-wide v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    .line 190
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 191
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 238
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 239
    const-wide/16 v3, 0x8

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 240
    const-wide/16 v3, 0xa

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    iput-short v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    .line 241
    const-wide/16 v3, 0x10

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 243
    iget-object v5, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 244
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 245
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 243
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 248
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 211
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 212
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 213
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ".networkHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-wide v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", .isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-boolean v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", .capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-short v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkCapability;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", .apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 275
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 276
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 277
    const-wide/16 v0, 0xa

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 278
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 279
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 251
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 252
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 254
    return-void
.end method

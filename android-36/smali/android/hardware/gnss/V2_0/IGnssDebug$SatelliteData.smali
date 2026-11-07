.class public final Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteData"
.end annotation


# instance fields
.field public blacklist constellation:B

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 157
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 158
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 159
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 158
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 162
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 164
    new-instance v5, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;-><init>()V

    .line 165
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;
    mul-int/lit8 v6, v3, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 166
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 170
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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 189
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 191
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 192
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 193
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 194
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 196
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 199
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 200
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 110
    return v0

    .line 112
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 113
    return v1

    .line 115
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    if-eq v2, v3, :cond_11

    .line 116
    return v1

    .line 118
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    .line 119
    .local v2, "other":Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;
    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    iget-object v4, v2, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 120
    return v1

    .line 122
    :cond_1f
    iget-byte v3, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    if-eq v3, v4, :cond_26

    .line 123
    return v1

    .line 125
    :cond_26
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    .line 131
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    .line 132
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 175
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 176
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    .line 177
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 148
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 149
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 204
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 205
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 206
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 180
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 183
    return-void
.end method

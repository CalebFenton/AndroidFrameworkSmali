.class public final Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfoRatSpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 8
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
            "Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 245
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 246
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xc0

    int-to-long v5, v3

    .line 247
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 246
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 250
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 252
    new-instance v5, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;-><init>()V

    .line 253
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
    mul-int/lit16 v6, v3, 0xc0

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 254
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 258
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
            "Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;>;"
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

    mul-int/lit16 v3, v1, 0xc0

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

    check-cast v4, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    mul-int/lit16 v5, v3, 0xc0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
.method public blacklist cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;
    .registers 5

    .line 147
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_51

    .line 148
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 149
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 152
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 156
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    return-object v0
.end method

.method public blacklist cdma(Landroid/hardware/radio/V1_2/CellInfoCdma;)V
    .registers 3
    .param p1, "cdma"    # Landroid/hardware/radio/V1_2/CellInfoCdma;

    .line 142
    const/4 v0, 0x5

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 143
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 167
    return v0

    .line 169
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 170
    return v1

    .line 172
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    if-eq v2, v3, :cond_11

    .line 173
    return v1

    .line 175
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 176
    .local v2, "other":Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 177
    return v1

    .line 179
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 180
    return v1

    .line 182
    :cond_26
    return v0
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 162
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    return v0
.end method

.method public blacklist gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;
    .registers 5

    .line 47
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eqz v0, :cond_50

    .line 48
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 49
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 52
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "className":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 56
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    return-object v0
.end method

.method public blacklist gsm(Landroid/hardware/radio/V1_5/CellInfoGsm;)V
    .registers 3
    .param p1, "gsm"    # Landroid/hardware/radio/V1_5/CellInfoGsm;

    .line 42
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 43
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 188
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 189
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist lte()Landroid/hardware/radio/V1_5/CellInfoLte;
    .registers 5

    .line 107
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    .line 108
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 109
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 112
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 116
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoLte;

    return-object v0
.end method

.method public blacklist lte(Landroid/hardware/radio/V1_5/CellInfoLte;)V
    .registers 3
    .param p1, "lte"    # Landroid/hardware/radio/V1_5/CellInfoLte;

    .line 102
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 103
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public blacklist nr()Landroid/hardware/radio/V1_5/CellInfoNr;
    .registers 5

    .line 127
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    .line 128
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 129
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 132
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 136
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoNr;

    return-object v0
.end method

.method public blacklist nr(Landroid/hardware/radio/V1_5/CellInfoNr;)V
    .registers 3
    .param p1, "nr"    # Landroid/hardware/radio/V1_5/CellInfoNr;

    .line 122
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 123
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 263
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 264
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_92

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_31
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 293
    goto :goto_91

    .line 286
    :pswitch_41
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoNr;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 288
    goto :goto_91

    .line 281
    :pswitch_51
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoLte;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 283
    goto :goto_91

    .line 276
    :pswitch_61
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 278
    goto :goto_91

    .line 271
    :pswitch_71
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 273
    goto :goto_91

    .line 266
    :pswitch_81
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 268
    nop

    .line 299
    :goto_91
    return-void

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_81
        :pswitch_71
        :pswitch_61
        :pswitch_51
        :pswitch_41
        :pswitch_31
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 236
    const-wide/16 v0, 0xc0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 237
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 238
    return-void
.end method

.method public blacklist tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;
    .registers 5

    .line 87
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 88
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 89
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 92
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 96
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    return-object v0
.end method

.method public blacklist tdscdma(Landroid/hardware/radio/V1_5/CellInfoTdscdma;)V
    .registers 3
    .param p1, "tdscdma"    # Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    .line 82
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 83
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-byte v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_88

    .line 228
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :pswitch_30
    const-string v1, ".cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    goto :goto_7e

    .line 218
    :pswitch_3d
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    goto :goto_7e

    .line 213
    :pswitch_4a
    const-string v1, ".lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    goto :goto_7e

    .line 208
    :pswitch_57
    const-string v1, ".tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_7e

    .line 203
    :pswitch_64
    const-string v1, ".wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    goto :goto_7e

    .line 198
    :pswitch_71
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    nop

    .line 231
    :goto_7e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_71
        :pswitch_64
        :pswitch_57
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .registers 5

    .line 67
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 69
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 72
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 76
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    return-object v0
.end method

.method public blacklist wcdma(Landroid/hardware/radio/V1_5/CellInfoWcdma;)V
    .registers 3
    .param p1, "wcdma"    # Landroid/hardware/radio/V1_5/CellInfoWcdma;

    .line 62
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    .line 63
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 326
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 327
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_68

    .line 353
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 350
    goto :goto_66

    .line 345
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 346
    goto :goto_66

    .line 341
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 342
    goto :goto_66

    .line 337
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 338
    goto :goto_66

    .line 333
    :pswitch_54
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 334
    goto :goto_66

    .line 329
    :pswitch_5d
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 330
    nop

    .line 356
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 302
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 305
    return-void
.end method

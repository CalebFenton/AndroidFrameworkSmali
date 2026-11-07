.class public final Landroid/hardware/radio/V1_4/CellInfo$Info;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;
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

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

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
            "Landroid/hardware/radio/V1_4/CellInfo$Info;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo$Info;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 239
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 240
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x80

    int-to-long v5, v3

    .line 241
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 240
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 244
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 246
    new-instance v5, Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/CellInfo$Info;-><init>()V

    .line 247
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/CellInfo$Info;
    mul-int/lit16 v6, v3, 0x80

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/CellInfo$Info;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 248
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/CellInfo$Info;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 252
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
            "Landroid/hardware/radio/V1_4/CellInfo$Info;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo$Info;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 305
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 306
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 307
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 308
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x80

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 309
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 310
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/CellInfo$Info;

    mul-int/lit16 v5, v3, 0x80

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/CellInfo$Info;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 312
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 315
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 316
    return-void
.end method


# virtual methods
.method public blacklist cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;
    .registers 5

    .line 61
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 62
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 63
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 66
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 69
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 70
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    return-object v0
.end method

.method public blacklist cdma(Landroid/hardware/radio/V1_2/CellInfoCdma;)V
    .registers 3
    .param p1, "cdma"    # Landroid/hardware/radio/V1_2/CellInfoCdma;

    .line 56
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 57
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
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

    const-class v3, Landroid/hardware/radio/V1_4/CellInfo$Info;

    if-eq v2, v3, :cond_11

    .line 167
    return v1

    .line 169
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/CellInfo$Info;

    .line 170
    .local v2, "other":Landroid/hardware/radio/V1_4/CellInfo$Info;
    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 171
    return v1

    .line 173
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 174
    return v1

    .line 176
    :cond_26
    return v0
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 156
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    return v0
.end method

.method public blacklist gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;
    .registers 5

    .line 41
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    if-eqz v0, :cond_50

    .line 42
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 43
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 46
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 49
    .end local v0    # "className":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 50
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    return-object v0
.end method

.method public blacklist gsm(Landroid/hardware/radio/V1_2/CellInfoGsm;)V
    .registers 3
    .param p1, "gsm"    # Landroid/hardware/radio/V1_2/CellInfoGsm;

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 37
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 181
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 183
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist lte()Landroid/hardware/radio/V1_4/CellInfoLte;
    .registers 5

    .line 121
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    .line 122
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 123
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 126
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 129
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_4/CellInfoLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 130
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_4/CellInfoLte;

    return-object v0
.end method

.method public blacklist lte(Landroid/hardware/radio/V1_4/CellInfoLte;)V
    .registers 3
    .param p1, "lte"    # Landroid/hardware/radio/V1_4/CellInfoLte;

    .line 116
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 117
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public blacklist nr()Landroid/hardware/radio/V1_4/CellInfoNr;
    .registers 5

    .line 141
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_51

    .line 142
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 143
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 146
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 149
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_4/CellInfoNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 150
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_4/CellInfoNr;

    return-object v0
.end method

.method public blacklist nr(Landroid/hardware/radio/V1_4/CellInfoNr;)V
    .registers 3
    .param p1, "nr"    # Landroid/hardware/radio/V1_4/CellInfoNr;

    .line 136
    const/4 v0, 0x5

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 137
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 257
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 258
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_92

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_31
    new-instance v0, Landroid/hardware/radio/V1_4/CellInfoNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CellInfoNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_4/CellInfoNr;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_4/CellInfoNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 287
    goto :goto_91

    .line 280
    :pswitch_41
    new-instance v0, Landroid/hardware/radio/V1_4/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CellInfoLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_4/CellInfoLte;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_4/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 282
    goto :goto_91

    .line 275
    :pswitch_51
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 277
    goto :goto_91

    .line 270
    :pswitch_61
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 272
    goto :goto_91

    .line 265
    :pswitch_71
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 267
    goto :goto_91

    .line 260
    :pswitch_81
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 262
    nop

    .line 293
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

    .line 230
    const-wide/16 v0, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 231
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo$Info;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 232
    return-void
.end method

.method public blacklist tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;
    .registers 5

    .line 101
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    .line 102
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 103
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 106
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 109
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 110
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    return-object v0
.end method

.method public blacklist tdscdma(Landroid/hardware/radio/V1_2/CellInfoTdscdma;)V
    .registers 3
    .param p1, "tdscdma"    # Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    .line 96
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 97
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-byte v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    packed-switch v1, :pswitch_data_88

    .line 222
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :pswitch_30
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    goto :goto_7e

    .line 212
    :pswitch_3d
    const-string v1, ".lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_7e

    .line 207
    :pswitch_4a
    const-string v1, ".tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    goto :goto_7e

    .line 202
    :pswitch_57
    const-string v1, ".wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    goto :goto_7e

    .line 197
    :pswitch_64
    const-string v1, ".cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    goto :goto_7e

    .line 192
    :pswitch_71
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    nop

    .line 225
    :goto_7e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
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

.method public blacklist wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .registers 5

    .line 81
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 82
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 83
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 86
    invoke-static {v3}, Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 89
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 90
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    return-object v0
.end method

.method public blacklist wcdma(Landroid/hardware/radio/V1_2/CellInfoWcdma;)V
    .registers 3
    .param p1, "wcdma"    # Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 76
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    .line 77
    iput-object p1, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_o:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 320
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 321
    iget-byte v0, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_68

    .line 347
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_4/CellInfo$Info;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_4/CellInfoNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 344
    goto :goto_66

    .line 339
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_4/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 340
    goto :goto_66

    .line 335
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 336
    goto :goto_66

    .line 331
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 332
    goto :goto_66

    .line 327
    :pswitch_54
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 328
    goto :goto_66

    .line 323
    :pswitch_5d
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 324
    nop

    .line 350
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

    .line 296
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 297
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/CellInfo$Info;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 299
    return-void
.end method

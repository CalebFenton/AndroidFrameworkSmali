.class public final Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Band"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 197
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 198
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 199
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 198
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 202
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 204
    new-instance v5, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;-><init>()V

    .line 205
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    mul-int/lit8 v6, v3, 0x8

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 206
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 210
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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 255
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 256
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 257
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 258
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 260
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 263
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 264
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 129
    return v0

    .line 131
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 132
    return v1

    .line 134
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    if-eq v2, v3, :cond_11

    .line 135
    return v1

    .line 137
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    .line 138
    .local v2, "other":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 139
    return v1

    .line 141
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 142
    return v1

    .line 144
    :cond_26
    return v0
.end method

.method public blacklist eutranBand()I
    .registers 5

    .line 89
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 90
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 91
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 94
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 97
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 98
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist eutranBand(I)V
    .registers 3
    .param p1, "eutranBand"    # I

    .line 84
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public blacklist geranBand()I
    .registers 5

    .line 49
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    if-eqz v0, :cond_50

    .line 50
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 51
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 54
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 57
    .end local v0    # "className":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 58
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist geranBand(I)V
    .registers 3
    .param p1, "geranBand"    # I

    .line 44
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 124
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 151
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist ngranBand()I
    .registers 5

    .line 109
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    .line 110
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 111
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 114
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 117
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 118
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist ngranBand(I)V
    .registers 3
    .param p1, "ngranBand"    # I

    .line 104
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 215
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 216
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 216
    packed-switch v0, :pswitch_data_70

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_36
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 234
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 235
    goto :goto_6e

    .line 228
    :pswitch_44
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 229
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 230
    goto :goto_6e

    .line 223
    :pswitch_52
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 224
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 225
    goto :goto_6e

    .line 218
    :pswitch_60
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 219
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 220
    nop

    .line 241
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_60
        :pswitch_52
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 188
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 189
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 190
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    packed-switch v1, :pswitch_data_7e

    .line 180
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_30
    const-string v1, ".ngranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_6/NgranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_74

    .line 170
    :pswitch_41
    const-string v1, ".eutranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/EutranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_74

    .line 165
    :pswitch_52
    const-string v1, ".utranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/UtranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_74

    .line 160
    :pswitch_63
    const-string v1, ".geranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/GeranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    nop

    .line 183
    :goto_74
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_63
        :pswitch_52
        :pswitch_41
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist utranBand()I
    .registers 5

    .line 69
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 70
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 71
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 74
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 77
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 78
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist utranBand(I)V
    .registers 3
    .param p1, "utranBand"    # I

    .line 64
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 268
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 269
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_56

    .line 287
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_30
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 284
    goto :goto_54

    .line 279
    :pswitch_39
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 280
    goto :goto_54

    .line 275
    :pswitch_42
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 276
    goto :goto_54

    .line 271
    :pswitch_4b
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 272
    nop

    .line 290
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 244
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 245
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 247
    return-void
.end method

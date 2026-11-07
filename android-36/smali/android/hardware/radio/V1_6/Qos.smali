.class public final Landroid/hardware/radio/V1_6/Qos;
.super Ljava/lang/Object;
.source "Qos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/Qos$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 7
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
            "Landroid/hardware/radio/V1_6/Qos;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Qos;>;"
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
    mul-int/lit8 v3, v2, 0x1c

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
    new-instance v5, Landroid/hardware/radio/V1_6/Qos;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/Qos;-><init>()V

    .line 165
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/Qos;
    mul-int/lit8 v6, v3, 0x1c

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 166
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/Qos;
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
            "Landroid/hardware/radio/V1_6/Qos;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Qos;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 208
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 212
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 213
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/Qos;

    mul-int/lit8 v5, v3, 0x1c

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 215
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 218
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 219
    return-void
.end method


# virtual methods
.method public blacklist eps()Landroid/hardware/radio/V1_6/EpsQos;
    .registers 5

    .line 54
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 55
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 56
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 59
    invoke-static {v3}, Landroid/hardware/radio/V1_6/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 62
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_6/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 63
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/EpsQos;

    return-object v0
.end method

.method public blacklist eps(Landroid/hardware/radio/V1_6/EpsQos;)V
    .registers 3
    .param p1, "eps"    # Landroid/hardware/radio/V1_6/EpsQos;

    .line 49
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 50
    iput-object p1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 97
    return v1

    .line 99
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/Qos;

    if-eq v2, v3, :cond_11

    .line 100
    return v1

    .line 102
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/Qos;

    .line 103
    .local v2, "other":Landroid/hardware/radio/V1_6/Qos;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 104
    return v1

    .line 106
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 107
    return v1

    .line 109
    :cond_26
    return v0
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 89
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 116
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;
    .registers 5

    .line 34
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    if-eqz v0, :cond_50

    .line 35
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 36
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 39
    invoke-static {v3}, Landroid/hardware/radio/V1_6/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 42
    .end local v0    # "className":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 43
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public blacklist noinit(Landroid/internal/hidl/safe_union/V1_0/Monostate;)V
    .registers 3
    .param p1, "noinit"    # Landroid/internal/hidl/safe_union/V1_0/Monostate;

    .line 29
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 30
    iput-object p1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public blacklist nr()Landroid/hardware/radio/V1_6/NrQos;
    .registers 5

    .line 74
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 75
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 76
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 79
    invoke-static {v3}, Landroid/hardware/radio/V1_6/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 82
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_6/NrQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 83
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/NrQos;

    return-object v0
.end method

.method public blacklist nr(Landroid/hardware/radio/V1_6/NrQos;)V
    .registers 3
    .param p1, "nr"    # Landroid/hardware/radio/V1_6/NrQos;

    .line 69
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 70
    iput-object p1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 175
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    .line 176
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_62

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_31
    new-instance v0, Landroid/hardware/radio/V1_6/NrQos;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/NrQos;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/NrQos;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/NrQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 190
    goto :goto_61

    .line 183
    :pswitch_41
    new-instance v0, Landroid/hardware/radio/V1_6/EpsQos;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/EpsQos;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/EpsQos;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/EpsQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 185
    goto :goto_61

    .line 178
    :pswitch_51
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 180
    nop

    .line 196
    :goto_61
    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_51
        :pswitch_41
        :pswitch_31
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 148
    const-wide/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 149
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    packed-switch v1, :pswitch_data_62

    .line 140
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :pswitch_30
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->nr()Landroid/hardware/radio/V1_6/NrQos;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    goto :goto_57

    .line 130
    :pswitch_3d
    const-string v1, ".eps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->eps()Landroid/hardware/radio/V1_6/EpsQos;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    goto :goto_57

    .line 125
    :pswitch_4a
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    nop

    .line 143
    :goto_57
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 223
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 224
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_4c

    .line 238
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/Qos;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->nr()Landroid/hardware/radio/V1_6/NrQos;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/NrQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 235
    goto :goto_4b

    .line 230
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->eps()Landroid/hardware/radio/V1_6/EpsQos;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/EpsQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 231
    goto :goto_4b

    .line 226
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 227
    nop

    .line 241
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 199
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 200
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 202
    return-void
.end method

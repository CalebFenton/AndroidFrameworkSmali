.class public final Landroid/hardware/radio/V1_6/NrVopsInfo;
.super Ljava/lang/Object;
.source "NrVopsInfo.java"


# instance fields
.field public blacklist emcSupported:B

.field public blacklist emfSupported:B

.field public blacklist vopsSupported:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    .line 22
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    .line 29
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

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
            "Landroid/hardware/radio/V1_6/NrVopsInfo;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrVopsInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 87
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 88
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x3

    int-to-long v5, v3

    .line 89
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 88
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 92
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 94
    new-instance v5, Landroid/hardware/radio/V1_6/NrVopsInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/NrVopsInfo;-><init>()V

    .line 95
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrVopsInfo;
    mul-int/lit8 v6, v3, 0x3

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/NrVopsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrVopsInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 100
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
            "Landroid/hardware/radio/V1_6/NrVopsInfo;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrVopsInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 120
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 121
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 122
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 123
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x3

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 125
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/NrVopsInfo;

    mul-int/lit8 v5, v3, 0x3

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/NrVopsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 127
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 130
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 34
    return v0

    .line 36
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 37
    return v1

    .line 39
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/NrVopsInfo;

    if-eq v2, v3, :cond_11

    .line 40
    return v1

    .line 42
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/NrVopsInfo;

    .line 43
    .local v2, "other":Landroid/hardware/radio/V1_6/NrVopsInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    if-eq v3, v4, :cond_1b

    .line 44
    return v1

    .line 46
    :cond_1b
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    if-eq v3, v4, :cond_22

    .line 47
    return v1

    .line 49
    :cond_22
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    if-eq v3, v4, :cond_29

    .line 50
    return v1

    .line 52
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 57
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    .line 58
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    .line 59
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    .line 60
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 105
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    .line 106
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    .line 107
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    .line 108
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 78
    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 79
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrVopsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 80
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ".vopsSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/VopsIndicator;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .emcSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/EmcIndicator;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .emfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/EmfIndicator;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 135
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 136
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 137
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 138
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 111
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrVopsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 114
    return-void
.end method

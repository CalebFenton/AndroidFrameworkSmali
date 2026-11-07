.class public final Landroid/hardware/radio/V1_4/RadioCapability;
.super Ljava/lang/Object;
.source "RadioCapability.java"


# instance fields
.field public blacklist logicalModemUuid:Ljava/lang/String;

.field public blacklist phase:I

.field public blacklist raf:I

.field public blacklist session:I

.field public blacklist status:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 19
    iput v0, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

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
            "Landroid/hardware/radio/V1_4/RadioCapability;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/RadioCapability;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 89
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 90
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 91
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 90
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 94
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 96
    new-instance v5, Landroid/hardware/radio/V1_4/RadioCapability;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/RadioCapability;-><init>()V

    .line 97
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/RadioCapability;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/RadioCapability;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 98
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/RadioCapability;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 102
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
            "Landroid/hardware/radio/V1_4/RadioCapability;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/RadioCapability;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 131
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 132
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 133
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 135
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/RadioCapability;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/RadioCapability;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 137
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 141
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 24
    return v0

    .line 26
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 27
    return v1

    .line 29
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/RadioCapability;

    if-eq v2, v3, :cond_11

    .line 30
    return v1

    .line 32
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/RadioCapability;

    .line 33
    .local v2, "other":Landroid/hardware/radio/V1_4/RadioCapability;
    iget v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    iget v4, v2, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    if-eq v3, v4, :cond_1b

    .line 34
    return v1

    .line 36
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    iget v4, v2, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    if-eq v3, v4, :cond_22

    .line 37
    return v1

    .line 39
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 40
    return v1

    .line 42
    :cond_35
    iget-object v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 43
    return v1

    .line 45
    :cond_40
    iget v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    iget v4, v2, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    if-eq v3, v4, :cond_47

    .line 46
    return v1

    .line 48
    :cond_47
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 53
    iget v0, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 57
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 107
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    .line 108
    const-wide/16 v3, 0x4

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    .line 109
    const-wide/16 v3, 0x8

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    .line 110
    const-wide/16 v3, 0x10

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 113
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 114
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 112
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 117
    const-wide/16 v1, 0x20

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    .line 118
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 80
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 81
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/RadioCapability;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 82
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RadioCapabilityPhase;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .raf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioAccessFamily;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .logicalModemUuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RadioCapabilityStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 145
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->session:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->phase:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 147
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->raf:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 149
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/RadioCapability;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/RadioCapability;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 124
    return-void
.end method

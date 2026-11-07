.class public final Landroid/hardware/radio/V1_4/EmergencyNumber;
.super Ljava/lang/Object;
.source "EmergencyNumber.java"


# instance fields
.field public blacklist categories:I

.field public blacklist mcc:Ljava/lang/String;

.field public blacklist mnc:Ljava/lang/String;

.field public blacklist number:Ljava/lang/String;

.field public blacklist sources:I

.field public blacklist urns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 107
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 108
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 109
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 108
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 112
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 114
    new-instance v5, Landroid/hardware/radio/V1_4/EmergencyNumber;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/EmergencyNumber;-><init>()V

    .line 115
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/EmergencyNumber;
    mul-int/lit8 v6, v3, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/EmergencyNumber;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 120
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
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 179
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 180
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 181
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 182
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 183
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 184
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/EmergencyNumber;

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/EmergencyNumber;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 186
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 189
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 190
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 36
    return v0

    .line 38
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 39
    return v1

    .line 41
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/EmergencyNumber;

    if-eq v2, v3, :cond_11

    .line 42
    return v1

    .line 44
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/EmergencyNumber;

    .line 45
    .local v2, "other":Landroid/hardware/radio/V1_4/EmergencyNumber;
    iget-object v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 46
    return v1

    .line 48
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 49
    return v1

    .line 51
    :cond_2a
    iget-object v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 52
    return v1

    .line 54
    :cond_35
    iget v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 55
    return v1

    .line 57
    :cond_48
    iget-object v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 58
    return v1

    .line 60
    :cond_53
    iget v3, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 61
    return v1

    .line 63
    :cond_66
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 68
    iget-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    .line 73
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    .line 127
    iget-object v4, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 129
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 127
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 132
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 134
    iget-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 136
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 134
    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 139
    const-wide/16 v4, 0x20

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    .line 141
    iget-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    .line 142
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 143
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 141
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 146
    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    .line 148
    const-wide/16 v4, 0x38

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 149
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x10

    int-to-long v14, v7

    .line 150
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 149
    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 153
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_94
    if-ge v3, v6, :cond_c5

    .line 155
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 156
    .local v4, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 158
    nop

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v14, v5

    .line 160
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    mul-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x0

    int-to-long v7, v5

    .line 158
    const/16 v20, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v18, v7

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 163
    iget-object v5, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 166
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    :cond_c5
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    .line 167
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 98
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 99
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 100
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ".number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .mnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .categories = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/EmergencyServiceCategory;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .urns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .sources = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/EmergencyNumberSource;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 194
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 195
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 196
    const-wide/16 v2, 0x20

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 197
    const-wide/16 v2, 0x30

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 199
    iget-object v2, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 200
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x38

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 201
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 202
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 203
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_42
    if-ge v6, v2, :cond_55

    .line 204
    mul-int/lit8 v7, v6, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 206
    .end local v6    # "_hidl_index_0":I
    :cond_55
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 208
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 209
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 170
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 171
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 173
    return-void
.end method

.class public final Landroid/hardware/radio/V1_1/KeepaliveRequest;
.super Ljava/lang/Object;
.source "KeepaliveRequest.java"


# instance fields
.field public blacklist cid:I

.field public blacklist destinationAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist destinationPort:I

.field public blacklist maxKeepaliveIntervalMillis:I

.field public blacklist sourceAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sourcePort:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 11
    iput v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

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
            "Landroid/hardware/radio/V1_1/KeepaliveRequest;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/KeepaliveRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 94
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 94
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 98
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 100
    new-instance v5, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v5}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    mul-int/lit8 v6, v3, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 106
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
            "Landroid/hardware/radio/V1_1/KeepaliveRequest;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/KeepaliveRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 157
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 159
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 161
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 16
    return v0

    .line 18
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 19
    return v1

    .line 21
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    if-eq v2, v3, :cond_11

    .line 22
    return v1

    .line 24
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    .line 25
    .local v2, "other":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    iget v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    if-eq v3, v4, :cond_1b

    .line 26
    return v1

    .line 28
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 29
    return v1

    .line 31
    :cond_26
    iget v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    iget v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    if-eq v3, v4, :cond_2d

    .line 32
    return v1

    .line 34
    :cond_2d
    iget-object v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 35
    return v1

    .line 37
    :cond_38
    iget v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    iget v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    if-eq v3, v4, :cond_3f

    .line 38
    return v1

    .line 40
    :cond_3f
    iget v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    iget v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    if-eq v3, v4, :cond_46

    .line 41
    return v1

    .line 43
    :cond_46
    iget v3, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    iget v4, v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    if-eq v3, v4, :cond_4d

    .line 44
    return v1

    .line 46
    :cond_4d
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 51
    iget v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 53
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 55
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 113
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 114
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 115
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 114
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 118
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2f
    if-ge v8, v6, :cond_45

    .line 120
    const/4 v9, 0x0

    .line 121
    .local v9, "_hidl_vec_element":B
    mul-int/lit8 v10, v8, 0x1

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v9

    .line 122
    iget-object v10, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v9    # "_hidl_vec_element":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 125
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_45
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 127
    const-wide/16 v6, 0x20

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 128
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 129
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 128
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 132
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 133
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_70
    if-ge v3, v4, :cond_86

    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, "_hidl_vec_element":B
    mul-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 136
    iget-object v6, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 139
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_86
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 140
    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 141
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 142
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
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
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/KeepaliveType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .sourceAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .sourcePort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .destinationAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .destinationPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .maxKeepaliveIntervalMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 17
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 169
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 171
    iget-object v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 172
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 173
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 174
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 175
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_28
    if-ge v6, v2, :cond_3f

    .line 176
    mul-int/lit8 v10, v6, 0x1

    int-to-long v10, v10

    iget-object v12, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    invoke-virtual {v5, v10, v11, v12}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 178
    .end local v6    # "_hidl_index_0":I
    :cond_3f
    add-long v10, p2, v3

    add-long/2addr v10, v0

    invoke-virtual {p1, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 180
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x18

    add-long/2addr v5, p2

    iget v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 182
    iget-object v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v10, p2, v5

    add-long/2addr v10, v3

    invoke-virtual {p1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 184
    add-long v3, p2, v5

    add-long/2addr v3, v7

    invoke-virtual {p1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 185
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v2, :cond_80

    .line 187
    mul-int/lit8 v7, v4, 0x1

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 189
    .end local v4    # "_hidl_index_0":I
    :cond_80
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 191
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 192
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 193
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 194
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 145
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 148
    return-void
.end method

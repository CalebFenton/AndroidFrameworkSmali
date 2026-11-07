.class public final Landroid/hardware/radio/V1_2/CardStatus;
.super Ljava/lang/Object;
.source "CardStatus.java"


# instance fields
.field public blacklist atr:Ljava/lang/String;

.field public blacklist base:Landroid/hardware/radio/V1_0/CardStatus;

.field public blacklist iccid:Ljava/lang/String;

.field public blacklist physicalSlotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

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
            "Landroid/hardware/radio/V1_2/CardStatus;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CardStatus;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 91
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 93
    new-instance v5, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CardStatus;
    mul-int/lit8 v6, v3, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_2/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CardStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 99
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
            "Landroid/hardware/radio/V1_2/CardStatus;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CardStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 133
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 134
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 136
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 137
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CardStatus;

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 139
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 142
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 27
    return v0

    .line 29
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 30
    return v1

    .line 32
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/CardStatus;

    if-eq v2, v3, :cond_11

    .line 33
    return v1

    .line 35
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/CardStatus;

    .line 36
    .local v2, "other":Landroid/hardware/radio/V1_2/CardStatus;
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 37
    return v1

    .line 39
    :cond_1f
    iget v3, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iget v4, v2, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    if-eq v3, v4, :cond_26

    .line 40
    return v1

    .line 42
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 43
    return v1

    .line 45
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 46
    return v1

    .line 48
    :cond_3c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 53
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    .line 54
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    .line 56
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    .line 57
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

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

    .line 104
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    move-object v6, p1

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/hardware/radio/V1_0/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 105
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    .line 106
    const-wide/16 v4, 0x30

    add-long v7, p3, v4

    invoke-virtual {v0, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    .line 110
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v4, p3, v4

    add-long v11, v4, v2

    .line 108
    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 113
    const-wide/16 v4, 0x40

    add-long v6, p3, v4

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v7, v1

    .line 117
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v4, p3, v4

    add-long v11, v4, v2

    .line 115
    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 120
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .physicalSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .atr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .iccid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 147
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 148
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 149
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 150
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 151
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 123
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 126
    return-void
.end method

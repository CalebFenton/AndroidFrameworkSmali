.class public final Landroid/hardware/radio/V1_6/NrQos;
.super Ljava/lang/Object;
.source "NrQos.java"


# instance fields
.field public blacklist averagingWindowMs:S

.field public blacklist downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

.field public blacklist fiveQi:S

.field public blacklist qfi:B

.field public blacklist uplink:Landroid/hardware/radio/V1_6/QosBandwidth;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    .line 11
    new-instance v1, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 12
    new-instance v1, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 17
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    .line 18
    iput-short v0, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

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
            "Landroid/hardware/radio/V1_6/NrQos;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrQos;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 88
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 89
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 90
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 89
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 93
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 95
    new-instance v5, Landroid/hardware/radio/V1_6/NrQos;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/NrQos;-><init>()V

    .line 96
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrQos;
    mul-int/lit8 v6, v3, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/NrQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/NrQos;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 101
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
            "Landroid/hardware/radio/V1_6/NrQos;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/NrQos;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 124
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 125
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 126
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 128
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/NrQos;

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/NrQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 130
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 133
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 23
    return v0

    .line 25
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 26
    return v1

    .line 28
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/NrQos;

    if-eq v2, v3, :cond_11

    .line 29
    return v1

    .line 31
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/NrQos;

    .line 32
    .local v2, "other":Landroid/hardware/radio/V1_6/NrQos;
    iget-short v3, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    iget-short v4, v2, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    if-eq v3, v4, :cond_1b

    .line 33
    return v1

    .line 35
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 36
    return v1

    .line 38
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 39
    return v1

    .line 41
    :cond_31
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    if-eq v3, v4, :cond_38

    .line 42
    return v1

    .line 44
    :cond_38
    iget-short v3, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    iget-short v4, v2, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    if-eq v3, v4, :cond_3f

    .line 45
    return v1

    .line 47
    :cond_3f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 52
    iget-short v0, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    .line 53
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 55
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    .line 56
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-short v4, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    .line 57
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 106
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    .line 107
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    .line 110
    const-wide/16 v0, 0x16

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    .line 111
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 79
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 80
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
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
    const-string v1, ".fiveQi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-short v1, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .downlink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .uplink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .qfi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .averagingWindowMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-short v1, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 138
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 139
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 142
    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 143
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 114
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/NrQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
    return-void
.end method

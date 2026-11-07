.class public final Landroid/hardware/contexthub/V1_0/PhysicalSensor;
.super Ljava/lang/Object;
.source "PhysicalSensor.java"


# instance fields
.field public blacklist fifoMaxCount:I

.field public blacklist fifoReservedCount:I

.field public blacklist maxDelayMs:J

.field public blacklist minDelayMs:J

.field public blacklist name:Ljava/lang/String;

.field public blacklist peakPowerMw:F

.field public blacklist sensorType:I

.field public blacklist type:Ljava/lang/String;

.field public blacklist vendor:Ljava/lang/String;

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    .line 6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    .line 9
    iput v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    .line 10
    iput v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    .line 11
    iput v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    .line 13
    iput-wide v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

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
            "Landroid/hardware/contexthub/V1_0/PhysicalSensor;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/PhysicalSensor;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 114
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 115
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 116
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 115
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 119
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 121
    new-instance v5, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    invoke-direct {v5}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;-><init>()V

    .line 122
    .local v5, "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/PhysicalSensor;
    mul-int/lit8 v6, v3, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/PhysicalSensor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 127
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
            "Landroid/hardware/contexthub/V1_0/PhysicalSensor;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/PhysicalSensor;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 172
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 173
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 174
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 175
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 176
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 177
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 179
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 182
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 183
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 18
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 19
    return v0

    .line 21
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 22
    return v1

    .line 24
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    if-eq v2, v3, :cond_11

    .line 25
    return v1

    .line 27
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    .line 28
    .local v2, "other":Landroid/hardware/contexthub/V1_0/PhysicalSensor;
    iget v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    if-eq v3, v4, :cond_1b

    .line 29
    return v1

    .line 31
    :cond_1b
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 32
    return v1

    .line 34
    :cond_26
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 35
    return v1

    .line 37
    :cond_31
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 38
    return v1

    .line 40
    :cond_3c
    iget v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    if-eq v3, v4, :cond_43

    .line 41
    return v1

    .line 43
    :cond_43
    iget v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    if-eq v3, v4, :cond_4a

    .line 44
    return v1

    .line 46
    :cond_4a
    iget v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    if-eq v3, v4, :cond_51

    .line 47
    return v1

    .line 49
    :cond_51
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    iget-wide v5, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5a

    .line 50
    return v1

    .line 52
    :cond_5a
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    iget-wide v5, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_63

    .line 53
    return v1

    .line 55
    :cond_63
    iget v3, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    iget v4, v2, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6c

    .line 56
    return v1

    .line 58
    :cond_6c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 12

    .line 63
    iget v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    .line 72
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    .line 73
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    .line 133
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    .line 135
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 137
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 135
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 140
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    .line 142
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 144
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v4, p3, v4

    add-long v20, v4, v2

    .line 142
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 147
    const-wide/16 v4, 0x28

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    .line 149
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    .line 150
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 151
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v4, p3, v4

    add-long v20, v4, v2

    .line 149
    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 154
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    .line 155
    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    .line 156
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    .line 157
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    .line 158
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    .line 159
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v2

    iput v2, v0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    .line 160
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 106
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ".sensorType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/SensorType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .fifoReservedCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .fifoMaxCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .minDelayMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .maxDelayMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .peakPowerMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 187
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->sensorType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 188
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 189
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 190
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 191
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->version:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 192
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoReservedCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 193
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->fifoMaxCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 194
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->minDelayMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 195
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->maxDelayMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 196
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->peakPowerMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 197
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 163
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 164
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 166
    return-void
.end method

.class public final Landroid/hardware/thermal/V2_0/TemperatureThreshold;
.super Ljava/lang/Object;
.source "TemperatureThreshold.java"


# instance fields
.field public blacklist coldThrottlingThresholds:[F

.field public blacklist hotThrottlingThresholds:[F

.field public blacklist name:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist vrThrottlingThreshold:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    .line 21
    const/4 v0, 0x7

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 28
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

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
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 105
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 105
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 109
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 111
    new-instance v5, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    invoke-direct {v5}, Landroid/hardware/thermal/V2_0/TemperatureThreshold;-><init>()V

    .line 112
    .local v5, "_hidl_vec_element":Landroid/hardware/thermal/V2_0/TemperatureThreshold;
    mul-int/lit8 v6, v3, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v5    # "_hidl_vec_element":Landroid/hardware/thermal/V2_0/TemperatureThreshold;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 117
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
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 153
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 154
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 156
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 157
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 158
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 160
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 163
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 164
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 39
    return v0

    .line 41
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 42
    return v1

    .line 44
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    if-eq v2, v3, :cond_11

    .line 45
    return v1

    .line 47
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    .line 48
    .local v2, "other":Landroid/hardware/thermal/V2_0/TemperatureThreshold;
    iget v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    iget v4, v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    if-eq v3, v4, :cond_1b

    .line 49
    return v1

    .line 51
    :cond_1b
    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 52
    return v1

    .line 54
    :cond_26
    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    iget-object v4, v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 55
    return v1

    .line 57
    :cond_31
    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    iget-object v4, v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 58
    return v1

    .line 60
    :cond_3c
    iget v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    iget v4, v2, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_45

    .line 61
    return v1

    .line 63
    :cond_45
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 68
    iget v0, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 71
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 72
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    .line 73
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 122
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    .line 123
    const-wide/16 v3, 0x8

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    .line 126
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 127
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 125
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 131
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    .line 132
    .local v1, "_hidl_array_offset_0":J
    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 133
    nop

    .line 136
    .end local v1    # "_hidl_array_offset_0":J
    const-wide/16 v1, 0x34

    add-long v1, p3, v1

    .line 137
    .restart local v1    # "_hidl_array_offset_0":J
    iget-object v3, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/HwBlob;->copyToFloatArray(J[FI)V

    .line 138
    nop

    .line 140
    .end local v1    # "_hidl_array_offset_0":J
    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    .line 141
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 95
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 96
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    invoke-static {v1}, Landroid/hardware/thermal/V2_0/TemperatureType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .hotThrottlingThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .coldThrottlingThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .vrThrottlingThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 168
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 169
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 171
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 172
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 174
    .local v2, "_hidl_array_item_0":[F
    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_3e

    array-length v4, v2

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3e

    .line 178
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 179
    nop

    .line 182
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    .line 183
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 185
    .restart local v2    # "_hidl_array_item_0":[F
    if-eqz v2, :cond_38

    array-length v4, v2

    if-ne v4, v5, :cond_38

    .line 189
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloatArray(J[F)V

    .line 190
    nop

    .line 192
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[F
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->vrThrottlingThreshold:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 193
    return-void

    .line 186
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[F
    :cond_38
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_3e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 144
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 145
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 147
    return-void
.end method

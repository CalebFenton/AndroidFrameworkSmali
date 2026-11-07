.class public final Landroid/hardware/thermal/V1_0/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"


# instance fields
.field public blacklist currentValue:F

.field public blacklist name:Ljava/lang/String;

.field public blacklist shutdownThreshold:F

.field public blacklist throttlingThreshold:F

.field public blacklist type:I

.field public blacklist vrThrottlingThreshold:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 24
    iput v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    .line 29
    iput v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    .line 35
    iput v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

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
            "Landroid/hardware/thermal/V1_0/Temperature;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V1_0/Temperature;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 111
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 112
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 113
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 112
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 116
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 118
    new-instance v5, Landroid/hardware/thermal/V1_0/Temperature;

    invoke-direct {v5}, Landroid/hardware/thermal/V1_0/Temperature;-><init>()V

    .line 119
    .local v5, "_hidl_vec_element":Landroid/hardware/thermal/V1_0/Temperature;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/thermal/V1_0/Temperature;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 120
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v5    # "_hidl_vec_element":Landroid/hardware/thermal/V1_0/Temperature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 124
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
            "Landroid/hardware/thermal/V1_0/Temperature;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V1_0/Temperature;>;"
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

    mul-int/lit8 v3, v1, 0x28

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

    check-cast v4, Landroid/hardware/thermal/V1_0/Temperature;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/thermal/V1_0/Temperature;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    .line 39
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 40
    return v0

    .line 42
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 43
    return v1

    .line 45
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/thermal/V1_0/Temperature;

    if-eq v2, v3, :cond_11

    .line 46
    return v1

    .line 48
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/thermal/V1_0/Temperature;

    .line 49
    .local v2, "other":Landroid/hardware/thermal/V1_0/Temperature;
    iget v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq v3, v4, :cond_1b

    .line 50
    return v1

    .line 52
    :cond_1b
    iget-object v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 53
    return v1

    .line 55
    :cond_26
    iget v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2f

    .line 56
    return v1

    .line 58
    :cond_2f
    iget v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_38

    .line 59
    return v1

    .line 61
    :cond_38
    iget v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_41

    .line 62
    return v1

    .line 64
    :cond_41
    iget v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4a

    .line 65
    return v1

    .line 67
    :cond_4a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 72
    iget v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 74
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 75
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    .line 78
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 129
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 130
    const-wide/16 v3, 0x8

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 132
    iget-object v5, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 134
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 132
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 137
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 138
    const-wide/16 v1, 0x1c

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    .line 139
    const-wide/16 v1, 0x20

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    .line 140
    const-wide/16 v1, 0x24

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    .line 141
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 102
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 103
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/thermal/V1_0/Temperature;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    invoke-static {v1}, Landroid/hardware/thermal/V1_0/TemperatureType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .currentValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .throttlingThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", .shutdownThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .vrThrottlingThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 168
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 169
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 170
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 171
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->throttlingThreshold:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 172
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->shutdownThreshold:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 173
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/thermal/V1_0/Temperature;->vrThrottlingThreshold:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 174
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 144
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 145
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V1_0/Temperature;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 147
    return-void
.end method

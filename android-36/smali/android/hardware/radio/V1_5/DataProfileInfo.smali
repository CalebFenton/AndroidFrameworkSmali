.class public final Landroid/hardware/radio/V1_5/DataProfileInfo;
.super Ljava/lang/Object;
.source "DataProfileInfo.java"


# instance fields
.field public blacklist apn:Ljava/lang/String;

.field public blacklist authType:I

.field public blacklist bearerBitmap:I

.field public blacklist enabled:Z

.field public blacklist maxConns:I

.field public blacklist maxConnsTime:I

.field public blacklist mtuV4:I

.field public blacklist mtuV6:I

.field public blacklist password:Ljava/lang/String;

.field public blacklist persistent:Z

.field public blacklist preferred:Z

.field public blacklist profileId:I

.field public blacklist protocol:I

.field public blacklist roamingProtocol:I

.field public blacklist supportedApnTypesBitmap:I

.field public blacklist type:I

.field public blacklist user:Ljava/lang/String;

.field public blacklist waitTime:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    .line 12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 28
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 36
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 40
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 44
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 49
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 53
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 65
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 69
    iput v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 74
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 80
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

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
            "Landroid/hardware/radio/V1_5/DataProfileInfo;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 228
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 229
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 230
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 229
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 233
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 235
    new-instance v5, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 236
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/DataProfileInfo;
    mul-int/lit8 v6, v3, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 237
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/DataProfileInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 241
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
            "Landroid/hardware/radio/V1_5/DataProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 294
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 295
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 296
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 297
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 298
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 299
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/DataProfileInfo;

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/DataProfileInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 301
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 304
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 305
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 88
    return v1

    .line 90
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/DataProfileInfo;

    if-eq v2, v3, :cond_11

    .line 91
    return v1

    .line 93
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/DataProfileInfo;

    .line 94
    .local v2, "other":Landroid/hardware/radio/V1_5/DataProfileInfo;
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    if-eq v3, v4, :cond_1b

    .line 95
    return v1

    .line 97
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 98
    return v1

    .line 100
    :cond_26
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    if-eq v3, v4, :cond_2d

    .line 101
    return v1

    .line 103
    :cond_2d
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    if-eq v3, v4, :cond_34

    .line 104
    return v1

    .line 106
    :cond_34
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    if-eq v3, v4, :cond_3b

    .line 107
    return v1

    .line 109
    :cond_3b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 110
    return v1

    .line 112
    :cond_46
    iget-object v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 113
    return v1

    .line 115
    :cond_51
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    if-eq v3, v4, :cond_58

    .line 116
    return v1

    .line 118
    :cond_58
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    if-eq v3, v4, :cond_5f

    .line 119
    return v1

    .line 121
    :cond_5f
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    if-eq v3, v4, :cond_66

    .line 122
    return v1

    .line 124
    :cond_66
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    if-eq v3, v4, :cond_6d

    .line 125
    return v1

    .line 127
    :cond_6d
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    if-eq v3, v4, :cond_74

    .line 128
    return v1

    .line 130
    :cond_74
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 131
    return v1

    .line 133
    :cond_87
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 134
    return v1

    .line 136
    :cond_9a
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    if-eq v3, v4, :cond_a1

    .line 137
    return v1

    .line 139
    :cond_a1
    iget v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    iget v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    if-eq v3, v4, :cond_a8

    .line 140
    return v1

    .line 142
    :cond_a8
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    if-eq v3, v4, :cond_af

    .line 143
    return v1

    .line 145
    :cond_af
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    if-eq v3, v4, :cond_b6

    .line 146
    return v1

    .line 148
    :cond_b6
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 21

    .line 153
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 159
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 170
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    .line 247
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 249
    iget-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 250
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 251
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 249
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 254
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 255
    const-wide/16 v4, 0x1c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 256
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 257
    const-wide/16 v4, 0x28

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 259
    iget-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 260
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 261
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v4, p3, v4

    add-long v20, v4, v2

    .line 259
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 264
    const-wide/16 v4, 0x38

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 266
    iget-object v6, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 267
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 268
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v4, p3, v4

    add-long v20, v4, v2

    .line 266
    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 271
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 272
    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 273
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 274
    const-wide/16 v2, 0x54

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 275
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 276
    const-wide/16 v2, 0x5c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 277
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 278
    const-wide/16 v2, 0x64

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 279
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 280
    const-wide/16 v2, 0x6c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 281
    const-wide/16 v2, 0x6d

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 282
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 219
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 220
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 221
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ".profileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/DataProfileId;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", .apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", .protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", .roamingProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", .authType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/ApnAuthType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ", .user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", .password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/DataProfileInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", .maxConnsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", .maxConns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ", .waitTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", .enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", .supportedApnTypesBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/ApnTypes;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", .bearerBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioAccessFamily;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", .mtuV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ", .mtuV6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", .preferred = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", .persistent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 309
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 310
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 311
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 312
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 313
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 315
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 316
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 317
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 318
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 319
    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 320
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 321
    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 323
    const-wide/16 v0, 0x64

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 324
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 325
    const-wide/16 v0, 0x6c

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 326
    const-wide/16 v0, 0x6d

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 327
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 285
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 286
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 288
    return-void
.end method

.class final Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 184
    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    #@2
    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    #@5
    .line 186
    .local v1, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    const-class v14, Landroid/os/ParcelUuid;

    #@7
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v14

    #@b
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@10
    move-result-object v13

    #@11
    .line 187
    .local v13, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v13, :cond_0

    #@13
    .line 188
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v12

    #@17
    .local v12, "uuid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v14

    #@1b
    if-eqz v14, :cond_0

    #@1d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v11

    #@21
    check-cast v11, Landroid/os/ParcelUuid;

    #@23
    .line 189
    .local v11, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v11}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    #@26
    goto :goto_0

    #@27
    .line 192
    .end local v11    # "uuid":Landroid/os/ParcelUuid;
    .end local v12    # "uuid$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v6

    #@2b
    .line 193
    .local v6, "manufacturerSize":I
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    #@2e
    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v5

    #@32
    .line 195
    .local v5, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v14

    #@36
    const/4 v15, 0x1

    #@37
    if-ne v14, v15, :cond_1

    #@39
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v4

    #@3d
    .line 197
    .local v4, "manufacturerDataLength":I
    new-array v3, v4, [B

    #@3f
    .line 198
    .local v3, "manufacturerData":[B
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    #@44
    .line 199
    invoke-virtual {v1, v5, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    #@47
    .line 193
    .end local v3    # "manufacturerData":[B
    .end local v4    # "manufacturerDataLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 202
    .end local v5    # "manufacturerId":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v9

    #@4e
    .line 203
    .local v9, "serviceDataSize":I
    const/4 v2, 0x0

    #@4f
    :goto_2
    if-ge v2, v9, :cond_4

    #@51
    .line 205
    const-class v14, Landroid/os/ParcelUuid;

    #@53
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@56
    move-result-object v14

    #@57
    .line 204
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5c
    move-result-object v10

    #@5d
    check-cast v10, Landroid/os/ParcelUuid;

    #@5f
    .line 206
    .local v10, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v14

    #@63
    const/4 v15, 0x1

    #@64
    if-ne v14, v15, :cond_3

    #@66
    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v8

    #@6a
    .line 208
    .local v8, "serviceDataLength":I
    new-array v7, v8, [B

    #@6c
    .line 209
    .local v7, "serviceData":[B
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    #@71
    .line 210
    invoke-virtual {v1, v10, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    #@74
    .line 203
    .end local v7    # "serviceData":[B
    .end local v8    # "serviceDataLength":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@76
    goto :goto_2

    #@77
    .line 213
    .end local v10    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@7a
    move-result v14

    #@7b
    const/4 v15, 0x1

    #@7c
    if-ne v14, v15, :cond_5

    #@7e
    const/4 v14, 0x1

    #@7f
    :goto_3
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    #@82
    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    #@85
    move-result v14

    #@86
    const/4 v15, 0x1

    #@87
    if-ne v14, v15, :cond_6

    #@89
    const/4 v14, 0x1

    #@8a
    :goto_4
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    #@8d
    .line 215
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    #@90
    move-result-object v14

    #@91
    return-object v14

    #@92
    .line 213
    :cond_5
    const/4 v14, 0x0

    #@93
    goto :goto_3

    #@94
    .line 214
    :cond_6
    const/4 v14, 0x0

    #@95
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 179
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

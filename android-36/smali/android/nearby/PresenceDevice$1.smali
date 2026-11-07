.class Landroid/nearby/PresenceDevice$1;
.super Ljava/lang/Object;
.source "PresenceDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/PresenceDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/PresenceDevice;
    .registers 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 242
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 243
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_e
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .local v2, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v4, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v2, :cond_28

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 251
    .end local v5    # "i":I
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 252
    .local v5, "rssi":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-array v6, v6, [B

    .line 253
    .local v6, "salt":[B
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-array v7, v7, [B

    .line 255
    .local v7, "secretId":[B
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v8, v8, [B

    .line 257
    .local v8, "encryptedIdentity":[B
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "deviceId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 260
    .local v10, "deviceType":I
    const/4 v11, 0x0

    .line 261
    .local v11, "deviceImageUrl":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v3, :cond_5a

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 264
    :cond_5a
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 265
    .local v12, "discoveryTimeMillis":J
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "dataElementSize":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v14, "dataElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/DataElement;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_68
    if-ge v15, v3, :cond_86

    .line 268
    const-class v16, Landroid/nearby/DataElement;

    .line 269
    move/from16 v17, v2

    .end local v2    # "size":I
    .local v17, "size":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move/from16 v16, v3

    .end local v3    # "dataElementSize":I
    .local v16, "dataElementSize":I
    const-class v3, Landroid/nearby/DataElement;

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/DataElement;

    .line 268
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_68

    .end local v16    # "dataElementSize":I
    .end local v17    # "size":I
    .restart local v2    # "size":I
    .restart local v3    # "dataElementSize":I
    :cond_86
    move/from16 v17, v2

    move/from16 v16, v3

    .line 271
    .end local v2    # "size":I
    .end local v3    # "dataElementSize":I
    .end local v15    # "i":I
    .restart local v16    # "dataElementSize":I
    .restart local v17    # "size":I
    new-instance v2, Landroid/nearby/PresenceDevice$Builder;

    invoke-direct {v2, v9, v6, v7, v8}, Landroid/nearby/PresenceDevice$Builder;-><init>(Ljava/lang/String;[B[B[B)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/nearby/PresenceDevice$Builder;->setName(Ljava/lang/String;)Landroid/nearby/PresenceDevice$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v5}, Landroid/nearby/PresenceDevice$Builder;->setRssi(I)Landroid/nearby/PresenceDevice$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v10}, Landroid/nearby/PresenceDevice$Builder;->setDeviceType(I)Landroid/nearby/PresenceDevice$Builder;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v11}, Landroid/nearby/PresenceDevice$Builder;->setDeviceImageUrl(Ljava/lang/String;)Landroid/nearby/PresenceDevice$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {v2, v12, v13}, Landroid/nearby/PresenceDevice$Builder;->setDiscoveryTimestampMillis(J)Landroid/nearby/PresenceDevice$Builder;

    move-result-object v2

    .line 277
    .local v2, "builder":Landroid/nearby/PresenceDevice$Builder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_ba

    .line 278
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/nearby/PresenceDevice$Builder;->addMedium(I)Landroid/nearby/PresenceDevice$Builder;

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 280
    .end local v3    # "i":I
    :cond_ba
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_bb
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_cd

    .line 281
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nearby/DataElement;

    invoke-virtual {v2, v15}, Landroid/nearby/PresenceDevice$Builder;->addExtendedProperty(Landroid/nearby/DataElement;)Landroid/nearby/PresenceDevice$Builder;

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 283
    .end local v3    # "i":I
    :cond_cd
    invoke-virtual {v2}, Landroid/nearby/PresenceDevice$Builder;->build()Landroid/nearby/PresenceDevice;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Landroid/nearby/PresenceDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/PresenceDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/PresenceDevice;
    .registers 3
    .param p1, "size"    # I

    .line 288
    new-array v0, p1, [Landroid/nearby/PresenceDevice;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Landroid/nearby/PresenceDevice$1;->newArray(I)[Landroid/nearby/PresenceDevice;

    move-result-object p1

    return-object p1
.end method

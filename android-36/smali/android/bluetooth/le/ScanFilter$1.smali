.class Landroid/bluetooth/le/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 230
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 231
    .local v0, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 234
    :cond_13
    const/4 v1, 0x0

    .line 236
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1e

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_40

    .line 240
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 241
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_40

    .line 243
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 244
    .local v4, "uuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 247
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    .end local v4    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_62

    .line 248
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 249
    .local v3, "solicitationUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_62

    .line 251
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 253
    .local v4, "solicitationUuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 257
    .end local v3    # "solicitationUuid":Landroid/os/ParcelUuid;
    .end local v4    # "solicitationUuidMask":Landroid/os/ParcelUuid;
    :cond_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_95

    .line 258
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 259
    .local v3, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_95

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 261
    .local v4, "serviceDataLength":I
    new-array v5, v4, [B

    .line 262
    .local v5, "serviceData":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_89

    .line 264
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_95

    .line 266
    :cond_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 267
    .local v6, "serviceDataMaskLength":I
    new-array v7, v6, [B

    .line 268
    .local v7, "serviceDataMask":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 269
    invoke-virtual {v0, v3, v5, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 275
    .end local v3    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v4    # "serviceDataLength":I
    .end local v5    # "serviceData":[B
    .end local v6    # "serviceDataMaskLength":I
    .end local v7    # "serviceDataMask":[B
    :cond_95
    :goto_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, "manufacturerId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_be

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    .local v4, "manufacturerDataLength":I
    new-array v5, v4, [B

    .line 279
    .local v5, "manufacturerData":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_b2

    .line 281
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_be

    .line 283
    :cond_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    .local v6, "manufacturerDataMaskLength":I
    new-array v7, v6, [B

    .line 285
    .local v7, "manufacturerDataMask":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 286
    invoke-virtual {v0, v3, v5, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 292
    .end local v4    # "manufacturerDataLength":I
    .end local v5    # "manufacturerData":[B
    .end local v6    # "manufacturerDataMaskLength":I
    .end local v7    # "manufacturerDataMask":[B
    :cond_be
    :goto_be
    if-eqz v1, :cond_d8

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 294
    .local v4, "addressType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_d5

    .line 295
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 296
    .local v5, "irk":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 297
    invoke-virtual {v0, v1, v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 298
    .end local v5    # "irk":[B
    goto :goto_d8

    .line 299
    :cond_d5
    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 304
    .end local v4    # "addressType":I
    :cond_d8
    :goto_d8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .local v4, "advertisingDataType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_fe

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .local v5, "advertisingDataLength":I
    new-array v6, v5, [B

    .line 308
    .local v6, "advertisingData":[B
    const/4 v7, 0x0

    .line 309
    .local v7, "advertisingDataMask":[B
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v2, :cond_fb

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 312
    .local v8, "advertisingDataMaskLength":I
    new-array v7, v8, [B

    .line 313
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 315
    .end local v8    # "advertisingDataMaskLength":I
    :cond_fb
    invoke-virtual {v0, v4, v6, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setAdvertisingDataTypeWithData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 319
    .end local v5    # "advertisingDataLength":I
    .end local v6    # "advertisingData":[B
    .end local v7    # "advertisingDataMask":[B
    :cond_fe
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_10f

    .line 320
    sget-object v2, Landroid/bluetooth/le/TransportBlockFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 321
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportBlockFilter;

    .line 320
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setTransportBlockFilter(Landroid/bluetooth/le/TransportBlockFilter;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 324
    :cond_10f
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    return-object v2
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

    .line 220
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/ScanFilter;
    .registers 3
    .param p1, "size"    # I

    .line 224
    new-array v0, p1, [Landroid/bluetooth/le/ScanFilter;

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

    .line 220
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->newArray(I)[Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method

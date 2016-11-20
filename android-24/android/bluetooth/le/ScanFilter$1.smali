.class final Landroid/bluetooth/le/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
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
        "Landroid/bluetooth/le/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 154
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    #@2
    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    #@5
    .line 155
    .local v1, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v14

    #@9
    const/4 v15, 0x1

    #@a
    if-ne v14, v15, :cond_0

    #@c
    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v14

    #@10
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    #@13
    .line 158
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v14

    #@17
    const/4 v15, 0x1

    #@18
    if-ne v14, v15, :cond_1

    #@1a
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v14

    #@1e
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    #@21
    .line 161
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v14

    #@25
    const/4 v15, 0x1

    #@26
    if-ne v14, v15, :cond_2

    #@28
    .line 162
    const-class v14, Landroid/os/ParcelUuid;

    #@2a
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2d
    move-result-object v14

    #@2e
    move-object/from16 v0, p1

    #@30
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@33
    move-result-object v12

    #@34
    check-cast v12, Landroid/os/ParcelUuid;

    #@36
    .line 163
    .local v12, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    #@39
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v14

    #@3d
    const/4 v15, 0x1

    #@3e
    if-ne v14, v15, :cond_2

    #@40
    .line 166
    const-class v14, Landroid/os/ParcelUuid;

    #@42
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@45
    move-result-object v14

    #@46
    .line 165
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4b
    move-result-object v13

    #@4c
    check-cast v13, Landroid/os/ParcelUuid;

    #@4e
    .line 167
    .local v13, "uuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12, v13}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    #@51
    .line 170
    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    .end local v13    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v14

    #@55
    const/4 v15, 0x1

    #@56
    if-ne v14, v15, :cond_3

    #@58
    .line 172
    const-class v14, Landroid/os/ParcelUuid;

    #@5a
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5d
    move-result-object v14

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@63
    move-result-object v7

    #@64
    check-cast v7, Landroid/os/ParcelUuid;

    #@66
    .line 173
    .local v7, "servcieDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v14

    #@6a
    const/4 v15, 0x1

    #@6b
    if-ne v14, v15, :cond_3

    #@6d
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v9

    #@71
    .line 175
    .local v9, "serviceDataLength":I
    new-array v8, v9, [B

    #@73
    .line 176
    .local v8, "serviceData":[B
    move-object/from16 v0, p1

    #@75
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    #@78
    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v14

    #@7c
    if-nez v14, :cond_5

    #@7e
    .line 178
    invoke-virtual {v1, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    #@81
    .line 189
    .end local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceData":[B
    .end local v9    # "serviceDataLength":I
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v6

    #@85
    .line 190
    .local v6, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v14

    #@89
    const/4 v15, 0x1

    #@8a
    if-ne v14, v15, :cond_4

    #@8c
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v3

    #@90
    .line 192
    .local v3, "manufacturerDataLength":I
    new-array v2, v3, [B

    #@92
    .line 193
    .local v2, "manufacturerData":[B
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    #@97
    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v14

    #@9b
    if-nez v14, :cond_6

    #@9d
    .line 195
    invoke-virtual {v1, v6, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    #@a0
    .line 205
    .end local v2    # "manufacturerData":[B
    .end local v3    # "manufacturerDataLength":I
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    #@a3
    move-result-object v14

    #@a4
    return-object v14

    #@a5
    .line 180
    .end local v6    # "manufacturerId":I
    .restart local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .restart local v8    # "serviceData":[B
    .restart local v9    # "serviceDataLength":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v11

    #@a9
    .line 181
    .local v11, "serviceDataMaskLength":I
    new-array v10, v11, [B

    #@ab
    .line 182
    .local v10, "serviceDataMask":[B
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readByteArray([B)V

    #@b0
    .line 183
    invoke-virtual {v1, v7, v8, v10}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    #@b3
    goto :goto_0

    #@b4
    .line 197
    .end local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceData":[B
    .end local v9    # "serviceDataLength":I
    .end local v10    # "serviceDataMask":[B
    .end local v11    # "serviceDataMaskLength":I
    .restart local v2    # "manufacturerData":[B
    .restart local v3    # "manufacturerDataLength":I
    .restart local v6    # "manufacturerId":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v5

    #@b8
    .line 198
    .local v5, "manufacturerDataMaskLength":I
    new-array v4, v5, [B

    #@ba
    .line 199
    .local v4, "manufacturerDataMask":[B
    move-object/from16 v0, p1

    #@bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    #@bf
    .line 200
    invoke-virtual {v1, v6, v2, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    #@c2
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/ScanFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 149
    new-array v0, p1, [Landroid/bluetooth/le/ScanFilter;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->newArray(I)[Landroid/bluetooth/le/ScanFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

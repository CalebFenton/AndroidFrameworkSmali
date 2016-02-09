.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;,
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static MAX_BUF_SIZE:I


# instance fields
.field protected mData:[B

.field protected mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mServiceType:I

.field protected mStatus:I

.field protected mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/16 v0, 0x400

    #@2
    sput v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    #@4
    .line 362
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    #@6
    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    #@9
    .line 361
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    .line 35
    return-void
.end method

.method protected constructor <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "status"    # I
    .param p3, "transId"    # I
    .param p4, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p5, "data"    # [B

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@5
    .line 121
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@7
    .line 122
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    #@9
    .line 123
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    .line 124
    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@d
    .line 119
    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 321
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 322
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 323
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 326
    :cond_1
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private static hexStr2Bin(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    div-int/lit8 v3, v4, 0x2

    #@6
    .line 280
    .local v3, "sz":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    div-int/lit8 v4, v4, 0x2

    #@c
    new-array v0, v4, [B

    #@e
    .line 282
    .local v0, "b":[B
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@11
    .line 284
    mul-int/lit8 v4, v2, 0x2

    #@13
    mul-int/lit8 v5, v2, 0x2

    #@15
    add-int/lit8 v5, v5, 0x2

    #@17
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/16 v5, 0x10

    #@1d
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@20
    move-result v4

    #@21
    int-to-byte v4, v4

    #@22
    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 282
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 285
    :catch_0
    move-exception v1

    #@28
    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@2b
    .line 287
    const/4 v4, 0x0

    #@2c
    return-object v4

    #@2d
    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    new-instance v13, Ljava/util/ArrayList;

    #@2
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 200
    .local v13, "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    const-string/jumbo v15, " "

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    .line 201
    .local v8, "args":[Ljava/lang/String;
    array-length v15, v8

    #@f
    const/16 v16, 0x4

    #@11
    move/from16 v0, v16

    #@13
    if-eq v15, v0, :cond_0

    #@15
    .line 202
    const/4 v15, 0x0

    #@16
    return-object v15

    #@17
    .line 204
    :cond_0
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@19
    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@1c
    .line 205
    .local v6, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x1

    #@1d
    aget-object v14, v8, v15

    #@1f
    .line 206
    .local v14, "srcAddr":Ljava/lang/String;
    iput-object v14, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@21
    .line 208
    const/4 v15, 0x3

    #@22
    aget-object v15, v8, v15

    #@24
    invoke-static {v15}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->hexStr2Bin(Ljava/lang/String;)[B

    #@27
    move-result-object v9

    #@28
    .line 209
    .local v9, "bin":[B
    if-nez v9, :cond_1

    #@2a
    .line 210
    const/4 v15, 0x0

    #@2b
    return-object v15

    #@2c
    .line 213
    :cond_1
    new-instance v10, Ljava/io/DataInputStream;

    #@2e
    new-instance v15, Ljava/io/ByteArrayInputStream;

    #@30
    invoke-direct {v15, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@33
    invoke-direct {v10, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 215
    .local v10, "dis":Ljava/io/DataInputStream;
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    #@39
    move-result v15

    #@3a
    if-lez v15, :cond_8

    #@3c
    .line 225
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@3f
    move-result v15

    #@40
    .line 226
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@43
    move-result v16

    #@44
    shl-int/lit8 v16, v16, 0x8

    #@46
    .line 225
    add-int v15, v15, v16

    #@48
    add-int/lit8 v12, v15, -0x3

    #@4a
    .line 227
    .local v12, "length":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@4d
    move-result v3

    #@4e
    .line 228
    .local v3, "type":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@51
    move-result v5

    #@52
    .line 229
    .local v5, "transId":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@55
    move-result v4

    #@56
    .line 230
    .local v4, "status":I
    if-gez v12, :cond_3

    #@58
    .line 231
    const/4 v15, 0x0

    #@59
    return-object v15

    #@5a
    .line 233
    :cond_3
    if-nez v12, :cond_4

    #@5c
    .line 234
    if-nez v4, :cond_2

    #@5e
    .line 235
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@60
    .line 236
    const/4 v7, 0x0

    #@61
    .line 235
    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    #@64
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    goto :goto_0

    #@68
    .line 262
    .end local v3    # "type":I
    .end local v4    # "status":I
    .end local v5    # "transId":I
    .end local v12    # "length":I
    :catch_0
    move-exception v11

    #@69
    .line 263
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    #@6c
    .line 266
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@6f
    move-result v15

    #@70
    if-lez v15, :cond_9

    #@72
    .line 267
    return-object v13

    #@73
    .line 240
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v3    # "type":I
    .restart local v4    # "status":I
    .restart local v5    # "transId":I
    .restart local v12    # "length":I
    :cond_4
    :try_start_1
    sget v15, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    #@75
    if-le v12, v15, :cond_5

    #@77
    .line 241
    int-to-long v0, v12

    #@78
    move-wide/from16 v16, v0

    #@7a
    move-wide/from16 v0, v16

    #@7c
    invoke-virtual {v10, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    #@7f
    goto :goto_0

    #@80
    .line 244
    :cond_5
    new-array v7, v12, [B

    #@82
    .line 245
    .local v7, "data":[B
    invoke-virtual {v10, v7}, Ljava/io/DataInputStream;->readFully([B)V

    #@85
    .line 248
    const/4 v15, 0x1

    #@86
    if-ne v3, v15, :cond_6

    #@88
    .line 249
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@8b
    move-result-object v2

    #@8c
    .line 257
    .local v2, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :goto_1
    if-eqz v2, :cond_2

    #@8e
    invoke-virtual {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getStatus()I

    #@91
    move-result v15

    #@92
    if-nez v15, :cond_2

    #@94
    .line 258
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@97
    goto :goto_0

    #@98
    .line 251
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_6
    const/4 v15, 0x2

    #@99
    if-ne v3, v15, :cond_7

    #@9b
    .line 252
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@9e
    move-result-object v2

    #@9f
    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_1

    #@a0
    .line 255
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_7
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@a2
    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a5
    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_1

    #@a6
    .line 261
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v3    # "type":I
    .end local v4    # "status":I
    .end local v5    # "transId":I
    .end local v7    # "data":[B
    .end local v12    # "length":I
    :cond_8
    return-object v13

    #@a7
    .line 269
    .restart local v11    # "e":Ljava/io/IOException;
    :cond_9
    const/4 v15, 0x0

    #@a8
    return-object v15
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 305
    if-ne p1, p0, :cond_0

    #@3
    .line 306
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 308
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 309
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 312
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@d
    .line 314
    .local v0, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@f
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 315
    iget v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@15
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 316
    iget-object v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1b
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@1d
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1f
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@21
    invoke-direct {p0, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    .line 314
    if-eqz v2, :cond_2

    #@27
    .line 317
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@29
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@2b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@2e
    move-result v1

    #@2f
    .line 314
    :cond_2
    return v1
.end method

.method public getRawData()[B
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@2
    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@2
    return v0
.end method

.method public getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@2
    return v0
.end method

.method public getTransactionId()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@3
    add-int/lit16 v0, v1, 0x20f

    #@5
    .line 333
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@7
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@9
    add-int v0, v1, v3

    #@b
    .line 334
    mul-int/lit8 v1, v0, 0x1f

    #@d
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    #@f
    add-int v0, v1, v3

    #@11
    .line 335
    mul-int/lit8 v3, v0, 0x1f

    #@13
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@15
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@17
    if-nez v1, :cond_0

    #@19
    move v1, v2

    #@1a
    :goto_0
    add-int v0, v3, v1

    #@1c
    .line 337
    mul-int/lit8 v1, v0, 0x1f

    #@1e
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@20
    if-nez v3, :cond_1

    #@22
    :goto_1
    add-int v0, v1, v2

    #@24
    .line 338
    return v0

    #@25
    .line 336
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@27
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2c
    move-result v1

    #@2d
    goto :goto_0

    #@2e
    .line 337
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@30
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@33
    move-result v2

    #@34
    goto :goto_1
.end method

.method public setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 181
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 182
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 296
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "serviceType:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@11
    .line 297
    const-string/jumbo v1, " status:"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@1a
    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 298
    const-string/jumbo v1, " srcAddr:"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2a
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 299
    const-string/jumbo v1, " data:"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3b
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 348
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 349
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 350
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 351
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 352
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@17
    if-eqz v0, :cond_0

    #@19
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@1b
    array-length v0, v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 353
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 347
    :goto_0
    return-void

    #@22
    .line 355
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@24
    array-length v0, v0

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 356
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2d
    goto :goto_0
.end method

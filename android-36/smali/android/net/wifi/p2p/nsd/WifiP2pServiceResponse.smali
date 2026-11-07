.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o MAX_BUF_SIZE:I


# instance fields
.field protected greylist-max-o mData:[B

.field protected greylist-max-o mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected greylist-max-o mServiceType:I

.field protected greylist-max-o mStatus:I

.field protected greylist-max-o mTransId:I

.field private blacklist mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

.field private blacklist mUsdSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/16 v0, 0x400

    sput v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    .line 440
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "status"    # I
    .param p3, "transId"    # I
    .param p4, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p5, "data"    # [B

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    .line 143
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    .line 144
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    .line 145
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 146
    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;I)V
    .registers 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "usdResponseData"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .param p3, "usdSessionId"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    .line 160
    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    .line 161
    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    .line 162
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 164
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    .line 165
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdSessionId:I

    .line 166
    return-void
.end method

.method private greylist-max-o equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 394
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 395
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_6
    if-eqz p1, :cond_d

    .line 397
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 399
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o hexStr2Bin(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hex"    # Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 347
    .local v0, "sz":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 349
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2e

    .line 351
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    :try_start_17
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_28

    .line 355
    nop

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 352
    :catch_28
    move-exception v3

    .line 353
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    const/4 v4, 0x0

    return-object v4

    .line 357
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2e
    return-object v1
.end method

.method public static greylist-max-o newInstance(Ljava/lang/String;[B)Ljava/util/List;
    .registers 14
    .param p0, "srcAddr"    # Ljava/lang/String;
    .param p1, "tlvsBin"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 273
    .local v1, "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    move-object v6, v0

    .line 274
    .local v6, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 275
    const/4 v8, 0x0

    if-nez p1, :cond_12

    .line 276
    return-object v8

    .line 280
    :cond_12
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    .line 282
    .local v9, "dis":Ljava/io/DataInputStream;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_7c

    .line 292
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 293
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x3

    .line 294
    .local v0, "length":I
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 295
    .local v3, "type":I
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 296
    .local v5, "transId":I
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 297
    .local v4, "status":I
    if-gez v0, :cond_3f

    .line 298
    return-object v8

    .line 300
    :cond_3f
    if-nez v0, :cond_4d

    .line 301
    if-nez v4, :cond_1d

    .line 302
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 307
    :cond_4d
    sget v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    if-le v0, v2, :cond_56

    .line 308
    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    .line 309
    goto :goto_1d

    .line 311
    :cond_56
    new-array v7, v0, [B

    .line 312
    .local v7, "data":[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 315
    const/4 v2, 0x1

    if-ne v3, v2, :cond_63

    .line 316
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v2

    .local v2, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_70

    .line 318
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_63
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6b

    .line 319
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v2

    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_70

    .line 322
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_6b
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 324
    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :goto_70
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getStatus()I

    move-result v10

    if-nez v10, :cond_7b

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_7b} :catch_7d

    .line 327
    .end local v0    # "length":I
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v3    # "type":I
    .end local v4    # "status":I
    .end local v5    # "transId":I
    .end local v7    # "data":[B
    :cond_7b
    goto :goto_1d

    .line 328
    :cond_7c
    return-object v1

    .line 329
    :catch_7d
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_88

    .line 334
    return-object v1

    .line 336
    :cond_88
    return-object v8
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 377
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 378
    return v0

    .line 380
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 381
    return v2

    .line 384
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 386
    .local v1, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iget v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iget v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 388
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 389
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    .line 390
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 386
    :goto_3d
    return v0
.end method

.method public greylist-max-o getRawData()[B
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-object v0
.end method

.method public greylist-max-o getServiceType()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    return v0
.end method

.method public greylist-max-o getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public greylist-max-o getStatus()I
    .registers 2

    .line 205
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    return v0
.end method

.method public greylist-max-o getTransactionId()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    return v0
.end method

.method public blacklist getUsdSessionId()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdSessionId:I

    return v0
.end method

.method public blacklist getWifiP2pUsdBasedServiceResponse()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 404
    const/16 v0, 0x11

    .line 405
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    add-int/2addr v1, v2

    .line 406
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    add-int/2addr v0, v2

    .line 407
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    add-int/2addr v1, v2

    .line 408
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    .line 409
    move v2, v3

    goto :goto_24

    :cond_1c
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    .line 410
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-nez v2, :cond_2d

    move v2, v3

    goto :goto_33

    :cond_2d
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_33
    add-int/2addr v1, v2

    .line 411
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    if-nez v2, :cond_3b

    .line 412
    goto :goto_41

    :cond_3b
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_41
    add-int/2addr v0, v3

    .line 413
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 242
    if-nez p1, :cond_3

    return-void

    .line 243
    :cond_3
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 244
    return-void
.end method

.method public blacklist setUsdSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 185
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdSessionId:I

    .line 186
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 362
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "serviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 364
    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 368
    const-string v1, " USD based service response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 369
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    if-nez v2, :cond_54

    .line 370
    const-string v2, "<null>"

    goto :goto_5a

    :cond_54
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :goto_5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 423
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 427
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    if-nez v0, :cond_1e

    goto :goto_2a

    .line 430
    :cond_1e
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2e

    .line 428
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    :goto_2e
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 434
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdBasedServiceResponse:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 435
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mUsdSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    :cond_44
    return-void
.end method

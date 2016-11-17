.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 80
    new-array v0, v1, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 79
    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    #@8
    .line 86
    new-array v0, v1, [B

    #@a
    fill-array-data v0, :array_1

    #@d
    .line 85
    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    #@f
    .line 92
    new-array v0, v1, [B

    #@11
    fill-array-data v0, :array_2

    #@14
    .line 91
    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    #@16
    .line 73
    return-void

    #@17
    .line 80
    nop

    #@18
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    #@1f
    .line 86
    nop

    #@20
    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    #@27
    .line 92
    nop

    #@28
    :array_2
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x400

    #@2
    const/16 v4, 0x1000

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 146
    const/16 v1, 0x8

    #@8
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@b
    .line 148
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    #@e
    move-result-object v0

    #@f
    .line 150
    .local v0, "a":Landroid/nfc/tech/NfcA;
    iput-boolean v2, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    #@11
    .line 152
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    #@14
    move-result v1

    #@15
    sparse-switch v1, :sswitch_data_0

    #@18
    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    #@29
    move-result v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 155
    :sswitch_0
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@38
    .line 156
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@3a
    .line 145
    :goto_0
    return-void

    #@3b
    .line 159
    :sswitch_1
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@3d
    .line 160
    const/16 v1, 0x140

    #@3f
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@41
    goto :goto_0

    #@42
    .line 163
    :sswitch_2
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@44
    .line 164
    const/16 v1, 0x800

    #@46
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@48
    goto :goto_0

    #@49
    .line 168
    :sswitch_3
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@4b
    .line 169
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@4d
    goto :goto_0

    #@4e
    .line 173
    :sswitch_4
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@50
    .line 174
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@52
    goto :goto_0

    #@53
    .line 177
    :sswitch_5
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@55
    .line 178
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@57
    .line 179
    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    #@59
    goto :goto_0

    #@5a
    .line 182
    :sswitch_6
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@5c
    .line 183
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@5e
    .line 184
    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    #@60
    goto :goto_0

    #@61
    .line 187
    :sswitch_7
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@63
    .line 188
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@65
    goto :goto_0

    #@66
    .line 193
    :sswitch_8
    const/4 v1, 0x2

    #@67
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@69
    .line 194
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@6b
    goto :goto_0

    #@6c
    .line 152
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x18 -> :sswitch_4
        0x28 -> :sswitch_5
        0x38 -> :sswitch_6
        0x88 -> :sswitch_7
        0x98 -> :sswitch_8
        0xb8 -> :sswitch_8
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .locals 10
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .param p3, "keyA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x6

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 370
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    #@6
    .line 371
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@9
    .line 373
    const/16 v4, 0xc

    #@b
    new-array v0, v4, [B

    #@d
    .line 376
    .local v0, "cmd":[B
    if-eqz p3, :cond_0

    #@f
    .line 377
    const/16 v4, 0x60

    #@11
    aput-byte v4, v0, v7

    #@13
    .line 385
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    #@16
    move-result v4

    #@17
    int-to-byte v4, v4

    #@18
    aput-byte v4, v0, v8

    #@1a
    .line 388
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/nfc/Tag;->getId()[B

    #@21
    move-result-object v3

    #@22
    .line 389
    .local v3, "uid":[B
    array-length v4, v3

    #@23
    add-int/lit8 v4, v4, -0x4

    #@25
    const/4 v5, 0x2

    #@26
    const/4 v6, 0x4

    #@27
    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2a
    .line 392
    invoke-static {p2, v7, v0, v9, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2d
    .line 395
    const/4 v4, 0x0

    #@2e
    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v4

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 396
    return v8

    #@35
    .line 379
    .end local v3    # "uid":[B
    :cond_0
    const/16 v4, 0x61

    #@37
    aput-byte v4, v0, v7

    #@39
    goto :goto_0

    #@3a
    .line 400
    .restart local v3    # "uid":[B
    :catch_0
    move-exception v2

    #@3b
    .line 403
    :cond_1
    return v7

    #@3c
    .line 398
    :catch_1
    move-exception v1

    #@3d
    .line 399
    .local v1, "e":Landroid/nfc/TagLostException;
    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    const/16 v1, 0x8

    #@3
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    return-object v2

    #@a
    .line 138
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/MifareClassic;

    #@c
    invoke-direct {v1, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 139
    :catch_0
    move-exception v0

    #@11
    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method private static validateBlock(I)V
    .locals 3
    .param p0, "block"    # I

    #@0
    .prologue
    .line 643
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x100

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "block out of bounds: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 641
    :cond_1
    return-void
.end method

.method private static validateSector(I)V
    .locals 3
    .param p0, "sector"    # I

    #@0
    .prologue
    .line 636
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x28

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "sector out of bounds: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 628
    :cond_1
    return-void
.end method

.method private static validateValueOperand(I)V
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 649
    if-gez p0, :cond_0

    #@2
    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "value operand negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 648
    :cond_0
    return-void
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public blockToSector(I)I
    .locals 1
    .param p1, "blockIndex"    # I

    #@0
    .prologue
    .line 291
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@3
    .line 293
    const/16 v0, 0x80

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 294
    div-int/lit8 v0, p1, 0x4

    #@9
    return v0

    #@a
    .line 296
    :cond_0
    add-int/lit8 v0, p1, -0x80

    #@c
    div-int/lit8 v0, v0, 0x10

    #@e
    add-int/lit8 v0, v0, 0x20

    #@10
    return v0
.end method

.method public bridge synthetic close()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    #@3
    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    #@3
    return-void
.end method

.method public decrement(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@3
    .line 501
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    #@6
    .line 502
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@9
    .line 504
    const/4 v1, 0x6

    #@a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    .line 505
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 506
    const/16 v1, -0x40

    #@15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@18
    .line 507
    int-to-byte v1, p1

    #@19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1c
    .line 508
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1f
    .line 510
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x0

    #@24
    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@27
    .line 499
    return-void
.end method

.method public getBlockCount()I
    .locals 1

    #@0
    .prologue
    .line 263
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@2
    div-int/lit8 v0, v0, 0x10

    #@4
    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1
    .param p1, "sectorIndex"    # I

    #@0
    .prologue
    .line 274
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    #@3
    .line 276
    const/16 v0, 0x20

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 277
    const/4 v0, 0x4

    #@8
    return v0

    #@9
    .line 279
    :cond_0
    const/16 v0, 0x10

    #@b
    return v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    #@0
    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSectorCount()I
    .locals 1

    #@0
    .prologue
    .line 243
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 253
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 245
    :sswitch_0
    const/16 v0, 0x10

    #@9
    return v0

    #@a
    .line 247
    :sswitch_1
    const/16 v0, 0x20

    #@c
    return v0

    #@d
    .line 249
    :sswitch_2
    const/16 v0, 0x28

    #@f
    return v0

    #@10
    .line 251
    :sswitch_3
    const/4 v0, 0x5

    #@11
    return v0

    #@12
    .line 243
    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_3
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    #@2
    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    #@0
    .prologue
    .line 621
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x8

    #@8
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 622
    :catch_0
    move-exception v0

    #@e
    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@11
    const-string/jumbo v2, "NFC service dead"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 624
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    #@2
    return v0
.end method

.method public increment(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@3
    .line 473
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    #@6
    .line 474
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@9
    .line 476
    const/4 v1, 0x6

    #@a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    .line 477
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 478
    const/16 v1, -0x3f

    #@15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@18
    .line 479
    int-to-byte v1, p1

    #@19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1c
    .line 480
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1f
    .line 482
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x0

    #@24
    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@27
    .line 471
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isEmulated()Z
    .locals 1

    #@0
    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    #@2
    return v0
.end method

.method public readBlock(I)[B
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 421
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@4
    .line 422
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@7
    .line 424
    const/4 v1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    const/16 v1, 0x30

    #@c
    aput-byte v1, v0, v3

    #@e
    int-to-byte v1, p1

    #@f
    const/4 v2, 0x1

    #@10
    aput-byte v1, v0, v2

    #@12
    .line 425
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    #@3
    return-void
.end method

.method public restore(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 549
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@4
    .line 550
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@7
    .line 552
    const/4 v1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    const/16 v1, -0x3e

    #@c
    aput-byte v1, v0, v3

    #@e
    int-to-byte v1, p1

    #@f
    const/4 v2, 0x1

    #@10
    aput-byte v1, v0, v2

    #@12
    .line 554
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@15
    .line 548
    return-void
.end method

.method public sectorToBlock(I)I
    .locals 1
    .param p1, "sectorIndex"    # I

    #@0
    .prologue
    .line 308
    const/16 v0, 0x20

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 309
    mul-int/lit8 v0, p1, 0x4

    #@6
    return v0

    #@7
    .line 311
    :cond_0
    add-int/lit8 v0, p1, -0x20

    #@9
    mul-int/lit8 v0, v0, 0x10

    #@b
    add-int/lit16 v0, v0, 0x80

    #@d
    return v0
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 603
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v2

    #@6
    const/16 v3, 0x8

    #@8
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    #@b
    move-result v1

    #@c
    .line 604
    .local v1, "err":I
    if-eqz v1, :cond_0

    #@e
    .line 605
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v3, "The supplied timeout is not valid"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 607
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    #@18
    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@1b
    const-string/jumbo v3, "NFC service dead"

    #@1e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public transfer(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 527
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@4
    .line 528
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@7
    .line 530
    const/4 v1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    const/16 v1, -0x50

    #@c
    aput-byte v1, v0, v3

    #@e
    int-to-byte v1, p1

    #@f
    const/4 v2, 0x1

    #@10
    aput-byte v1, v0, v2

    #@12
    .line 532
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@15
    .line 526
    return-void
.end method

.method public writeBlock(I[B)V
    .locals 4
    .param p1, "blockIndex"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 443
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    #@4
    .line 444
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    #@7
    .line 445
    array-length v1, p2

    #@8
    const/16 v2, 0x10

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "must write 16-bytes"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 449
    :cond_0
    array-length v1, p2

    #@16
    add-int/lit8 v1, v1, 0x2

    #@18
    new-array v0, v1, [B

    #@1a
    .line 450
    .local v0, "cmd":[B
    const/16 v1, -0x60

    #@1c
    aput-byte v1, v0, v3

    #@1e
    .line 451
    int-to-byte v1, p1

    #@1f
    const/4 v2, 0x1

    #@20
    aput-byte v1, v0, v2

    #@22
    .line 452
    array-length v1, p2

    #@23
    const/4 v2, 0x2

    #@24
    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 454
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    #@2a
    .line 442
    return-void
.end method

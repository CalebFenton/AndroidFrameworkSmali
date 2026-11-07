.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final whitelist BLOCK_SIZE:I = 0x10

.field public static final whitelist KEY_DEFAULT:[B

.field public static final whitelist KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final whitelist KEY_NFC_FORUM:[B

.field private static final greylist-max-o MAX_BLOCK_COUNT:I = 0x100

.field private static final greylist-max-o MAX_SECTOR_COUNT:I = 0x28

.field public static final whitelist SIZE_1K:I = 0x400

.field public static final whitelist SIZE_2K:I = 0x800

.field public static final whitelist SIZE_4K:I = 0x1000

.field public static final whitelist SIZE_MINI:I = 0x140

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NFC"

.field public static final whitelist TYPE_CLASSIC:I = 0x0

.field public static final whitelist TYPE_PLUS:I = 0x1

.field public static final whitelist TYPE_PRO:I = 0x2

.field public static final whitelist TYPE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mIsEmulated:Z

.field private greylist-max-o mSize:I

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    .line 85
    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    .line 91
    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_18
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor greylist-max-o <init>(Landroid/nfc/Tag;)V
    .registers 8
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 148
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .line 150
    .local v0, "a":Landroid/nfc/tech/NfcA;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 152
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v2

    const/16 v3, 0x400

    const/16 v4, 0x1000

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_6c

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :sswitch_35
    const/4 v1, 0x2

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 194
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 195
    goto :goto_6b

    .line 187
    :sswitch_3b
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 188
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 190
    goto :goto_6b

    .line 182
    :sswitch_40
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 183
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 184
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 185
    goto :goto_6b

    .line 177
    :sswitch_47
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 178
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 179
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 180
    goto :goto_6b

    .line 173
    :sswitch_4e
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 174
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 175
    goto :goto_6b

    .line 168
    :sswitch_53
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 169
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 171
    goto :goto_6b

    .line 163
    :sswitch_58
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 164
    const/16 v1, 0x800

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 166
    goto :goto_6b

    .line 159
    :sswitch_5f
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 160
    const/16 v1, 0x140

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 161
    goto :goto_6b

    .line 155
    :sswitch_66
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 156
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 157
    nop

    .line 202
    :goto_6b
    return-void

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_66
        0x8 -> :sswitch_66
        0x9 -> :sswitch_5f
        0x10 -> :sswitch_58
        0x11 -> :sswitch_53
        0x18 -> :sswitch_4e
        0x28 -> :sswitch_47
        0x38 -> :sswitch_40
        0x88 -> :sswitch_3b
        0x98 -> :sswitch_35
        0xb8 -> :sswitch_35
    .end sparse-switch
.end method

.method private greylist-max-o authenticate(I[BZ)Z
    .registers 11
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .param p3, "keyA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 371
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 373
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 376
    .local v0, "cmd":[B
    const/4 v1, 0x0

    if-eqz p3, :cond_12

    .line 377
    const/16 v2, 0x60

    aput-byte v2, v0, v1

    goto :goto_16

    .line 379
    :cond_12
    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 385
    :goto_16
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 388
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    .line 389
    .local v2, "uid":[B
    array-length v4, v2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    invoke-static {v2, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    const/4 v4, 0x6

    invoke-static {p2, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    :try_start_31
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v4
    :try_end_35
    .catch Landroid/nfc/TagLostException; {:try_start_31 .. :try_end_35} :catch_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_39

    if-eqz v4, :cond_38

    .line 396
    return v3

    .line 402
    :cond_38
    goto :goto_3a

    .line 400
    :catch_39
    move-exception v3

    .line 403
    :goto_3a
    return v1

    .line 398
    :catch_3b
    move-exception v1

    .line 399
    .local v1, "e":Landroid/nfc/TagLostException;
    throw v1
.end method

.method public static whitelist get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 136
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 138
    :cond_a
    :try_start_a
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    .line 139
    :catch_10
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static greylist-max-o validateBlock(I)V
    .registers 4
    .param p0, "block"    # I

    .line 645
    if-ltz p0, :cond_7

    const/16 v0, 0x100

    if-ge p0, v0, :cond_7

    .line 648
    return-void

    .line 646
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o validateSector(I)V
    .registers 4
    .param p0, "sector"    # I

    .line 638
    if-ltz p0, :cond_7

    const/16 v0, 0x28

    if-ge p0, v0, :cond_7

    .line 641
    return-void

    .line 639
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o validateValueOperand(I)V
    .registers 3
    .param p0, "value"    # I

    .line 651
    if-ltz p0, :cond_3

    .line 654
    return-void

    .line 652
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist authenticateSectorWithKeyA(I[B)Z
    .registers 4
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public whitelist authenticateSectorWithKeyB(I[B)Z
    .registers 4
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public whitelist blockToSector(I)I
    .registers 3
    .param p1, "blockIndex"    # I

    .line 291
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 293
    const/16 v0, 0x80

    if-ge p1, v0, :cond_a

    .line 294
    div-int/lit8 v0, p1, 0x4

    return v0

    .line 296
    :cond_a
    add-int/lit8 v0, p1, -0x80

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public bridge synthetic whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic whitelist connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public whitelist decrement(II)V
    .registers 6
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 501
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 502
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 504
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 505
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 506
    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 508
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 511
    return-void
.end method

.method public whitelist getBlockCount()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist getBlockCountInSector(I)I
    .registers 3
    .param p1, "sectorIndex"    # I

    .line 274
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 276
    const/16 v0, 0x20

    if-ge p1, v0, :cond_9

    .line 277
    const/4 v0, 0x4

    return v0

    .line 279
    :cond_9
    const/16 v0, 0x10

    return v0
.end method

.method public whitelist getMaxTransceiveLength()I
    .registers 2

    .line 584
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public whitelist getSectorCount()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    sparse-switch v0, :sswitch_data_12

    .line 253
    const/4 v0, 0x0

    return v0

    .line 249
    :sswitch_7
    const/16 v0, 0x28

    return v0

    .line 247
    :sswitch_a
    const/16 v0, 0x20

    return v0

    .line 245
    :sswitch_d
    const/16 v0, 0x10

    return v0

    .line 251
    :sswitch_10
    const/4 v0, 0x5

    return v0

    :sswitch_data_12
    .sparse-switch
        0x140 -> :sswitch_10
        0x400 -> :sswitch_d
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist getSize()I
    .registers 2

    .line 224
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimeout()I
    .registers 4

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 624
    :catch_d
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getType()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public whitelist increment(II)V
    .registers 6
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 473
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 474
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 476
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 477
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 478
    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 483
    return-void
.end method

.method public bridge synthetic whitelist isConnected()Z
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmulated()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public whitelist readBlock(I)[B
    .registers 6
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 422
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 424
    int-to-byte v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    .line 425
    .local v1, "cmd":[B
    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public whitelist restore(I)V
    .registers 6
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 550
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 552
    int-to-byte v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3e

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    .line 554
    .local v1, "cmd":[B
    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 555
    return-void
.end method

.method public whitelist sectorToBlock(I)I
    .registers 3
    .param p1, "sectorIndex"    # I

    .line 308
    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    .line 309
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 311
    :cond_7
    add-int/lit8 v0, p1, -0x20

    mul-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public whitelist setTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 605
    .local v0, "err":I
    if-nez v0, :cond_f

    .line 610
    .end local v0    # "err":I
    goto :goto_1f

    .line 606
    .restart local v0    # "err":I
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/tech/MifareClassic;
    .end local p1    # "timeout":I
    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 608
    .end local v0    # "err":I
    .restart local p0    # "this":Landroid/nfc/tech/MifareClassic;
    .restart local p1    # "timeout":I
    :catch_17
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist transceive([B)[B
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist transfer(I)V
    .registers 6
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 528
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 530
    int-to-byte v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x50

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    .line 532
    .local v1, "cmd":[B
    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 533
    return-void
.end method

.method public whitelist writeBlock(I[B)V
    .registers 8
    .param p1, "blockIndex"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 444
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 445
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_21

    .line 449
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 450
    .local v0, "cmd":[B
    const/16 v2, -0x60

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 451
    const/4 v2, 0x1

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 452
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 455
    return-void

    .line 446
    .end local v0    # "cmd":[B
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must write 16-bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

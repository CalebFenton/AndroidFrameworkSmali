.class final Lsun/security/ssl/EngineInputRecord;
.super Lsun/security/ssl/InputRecord;
.source "EngineInputRecord.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static tmpBB:Ljava/nio/ByteBuffer;


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field private internalData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Lsun/security/ssl/EngineInputRecord;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineInputRecord;->-assertionsDisabled:Z

    #@c
    .line 53
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    #@12
    .line 45
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;)V
    .locals 0
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Lsun/security/ssl/InputRecord;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lsun/security/ssl/EngineInputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@5
    .line 62
    return-void
.end method

.method private static checkMacTags(BLjava/nio/ByteBuffer;Lsun/security/ssl/MAC;Z)Z
    .locals 7
    .param p0, "contentType"    # B
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "signer"    # Lsun/security/ssl/MAC;
    .param p3, "isSimulated"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 299
    invoke-virtual {p2}, Lsun/security/ssl/MAC;->MAClen()I

    #@4
    move-result v4

    #@5
    .line 300
    .local v4, "tagLen":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@8
    move-result v1

    #@9
    .line 301
    .local v1, "lim":I
    sub-int v2, v1, v4

    #@b
    .line 303
    .local v2, "macData":I
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@e
    .line 304
    invoke-virtual {p2, p0, p1, p3}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;Z)[B

    #@11
    move-result-object v0

    #@12
    .line 305
    .local v0, "hash":[B
    if-eqz v0, :cond_0

    #@14
    array-length v6, v0

    #@15
    if-eq v4, v6, :cond_1

    #@17
    .line 307
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v6, "Internal MAC error"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 310
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@23
    .line 311
    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@26
    .line 313
    :try_start_0
    invoke-static {p1, v0}, Lsun/security/ssl/EngineInputRecord;->compareMacTags(Ljava/nio/ByteBuffer;[B)[I

    #@29
    move-result-object v3

    #@2a
    .line 314
    .local v3, "results":[I
    const/4 v6, 0x0

    #@2b
    aget v6, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    if-eqz v6, :cond_2

    #@2f
    const/4 v5, 0x1

    #@30
    .line 316
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    #@33
    .line 317
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@36
    .line 314
    return v5

    #@37
    .line 315
    .end local v3    # "results":[I
    :catchall_0
    move-exception v5

    #@38
    .line 316
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    #@3b
    .line 317
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@3e
    .line 315
    throw v5
.end method

.method private static compareMacTags(Ljava/nio/ByteBuffer;[B)[I
    .locals 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tag"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 330
    filled-new-array {v4, v4}, [I

    #@4
    move-result-object v1

    #@5
    .line 334
    .local v1, "results":[I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 335
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@c
    move-result v2

    #@d
    aget-byte v3, p1, v0

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 336
    aget v2, v1, v4

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    aput v2, v1, v4

    #@17
    .line 334
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 338
    :cond_0
    const/4 v2, 0x1

    #@1b
    aget v3, v1, v2

    #@1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    aput v3, v1, v2

    #@21
    goto :goto_1

    #@22
    .line 342
    :cond_1
    return-object v1
.end method


# virtual methods
.method bytesInCompletePacket(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 87
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@5
    move-result v7

    #@6
    const/4 v8, 0x5

    #@7
    if-ge v7, v8, :cond_0

    #@9
    .line 88
    const/4 v6, -0x1

    #@a
    return v6

    #@b
    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@e
    move-result v4

    #@f
    .line 92
    .local v4, "pos":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@12
    move-result v0

    #@13
    .line 94
    .local v0, "byteZero":B
    const/4 v2, 0x0

    #@14
    .line 102
    .local v2, "len":I
    iget-boolean v7, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@16
    if-nez v7, :cond_1

    #@18
    .line 103
    const/16 v7, 0x16

    #@1a
    if-ne v0, v7, :cond_3

    #@1c
    .line 109
    :cond_1
    add-int/lit8 v7, v4, 0x1

    #@1e
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@21
    move-result v7

    #@22
    add-int/lit8 v8, v4, 0x2

    #@24
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    #@27
    move-result v8

    #@28
    invoke-static {v7, v8}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@2b
    move-result-object v5

    #@2c
    .line 114
    .local v5, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v7, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2e
    sget-object v8, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    #@30
    iget v8, v8, Lsun/security/ssl/ProtocolVersion;->v:I

    #@32
    if-lt v7, v8, :cond_2

    #@34
    .line 115
    iget-byte v7, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    #@36
    sget-object v8, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    #@38
    iget-byte v8, v8, Lsun/security/ssl/ProtocolVersion;->major:B

    #@3a
    if-le v7, v8, :cond_7

    #@3c
    .line 116
    :cond_2
    new-instance v6, Ljavax/net/ssl/SSLException;

    #@3e
    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, "Unsupported record version "

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 116
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 104
    .end local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_3
    const/16 v7, 0x15

    #@58
    if-eq v0, v7, :cond_1

    #@5a
    .line 141
    and-int/lit16 v7, v0, 0x80

    #@5c
    if-eqz v7, :cond_4

    #@5e
    move v1, v6

    #@5f
    .line 143
    .local v1, "isShort":Z
    :cond_4
    if-eqz v1, :cond_b

    #@61
    .line 144
    add-int/lit8 v7, v4, 0x2

    #@63
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@66
    move-result v7

    #@67
    if-eq v7, v6, :cond_5

    #@69
    add-int/lit8 v6, v4, 0x2

    #@6b
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@6e
    move-result v6

    #@6f
    const/4 v7, 0x4

    #@70
    if-ne v6, v7, :cond_b

    #@72
    .line 147
    :cond_5
    add-int/lit8 v6, v4, 0x3

    #@74
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@77
    move-result v6

    #@78
    add-int/lit8 v7, v4, 0x4

    #@7a
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@7d
    move-result v7

    #@7e
    invoke-static {v6, v7}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@81
    move-result-object v5

    #@82
    .line 152
    .restart local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v6, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@84
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    #@86
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@88
    if-lt v6, v7, :cond_6

    #@8a
    .line 153
    iget-byte v6, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    #@8c
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    #@8e
    iget-byte v7, v7, Lsun/security/ssl/ProtocolVersion;->major:B

    #@90
    if-le v6, v7, :cond_8

    #@92
    .line 156
    :cond_6
    iget v6, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@94
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@96
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@98
    if-eq v6, v7, :cond_8

    #@9a
    .line 157
    new-instance v6, Ljavax/net/ssl/SSLException;

    #@9c
    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v8, "Unsupported record version "

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    .line 157
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v6

    #@b4
    .line 125
    .end local v1    # "isShort":Z
    :cond_7
    iput-boolean v6, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@b6
    .line 130
    add-int/lit8 v6, v4, 0x3

    #@b8
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@bb
    move-result v6

    #@bc
    and-int/lit16 v6, v6, 0xff

    #@be
    shl-int/lit8 v6, v6, 0x8

    #@c0
    .line 131
    add-int/lit8 v7, v4, 0x4

    #@c2
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@c5
    move-result v7

    #@c6
    and-int/lit16 v7, v7, 0xff

    #@c8
    .line 130
    add-int/2addr v6, v7

    #@c9
    add-int/lit8 v2, v6, 0x5

    #@cb
    .line 176
    :goto_0
    return v2

    #@cc
    .line 165
    .restart local v1    # "isShort":Z
    :cond_8
    if-eqz v1, :cond_9

    #@ce
    const/16 v3, 0x7f

    #@d0
    .line 166
    .local v3, "mask":I
    :goto_1
    and-int v6, v0, v3

    #@d2
    shl-int/lit8 v6, v6, 0x8

    #@d4
    add-int/lit8 v7, v4, 0x1

    #@d6
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@d9
    move-result v7

    #@da
    and-int/lit16 v7, v7, 0xff

    #@dc
    add-int/2addr v7, v6

    #@dd
    .line 167
    if-eqz v1, :cond_a

    #@df
    const/4 v6, 0x2

    #@e0
    .line 166
    :goto_2
    add-int v2, v7, v6

    #@e2
    .line 144
    goto :goto_0

    #@e3
    .line 165
    .end local v3    # "mask":I
    :cond_9
    const/16 v3, 0x3f

    #@e5
    goto :goto_1

    #@e6
    .line 167
    .restart local v3    # "mask":I
    :cond_a
    const/4 v6, 0x3

    #@e7
    goto :goto_2

    #@e8
    .line 171
    .end local v3    # "mask":I
    .end local v5    # "recordVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_b
    new-instance v6, Ljavax/net/ssl/SSLException;

    #@ea
    .line 172
    const-string/jumbo v7, "Unrecognized SSL message, plaintext connection?"

    #@ed
    .line 171
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v6
.end method

.method contentType()B
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 69
    invoke-super {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 71
    :cond_0
    const/16 v0, 0x17

    #@b
    return v0
.end method

.method decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .param p2, "box"    # Lsun/security/ssl/CipherBox;
    .param p3, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 191
    iget-boolean v0, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 192
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/InputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    #@8
    .line 193
    sget-object v0, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    #@a
    return-object v0

    #@b
    .line 196
    :cond_0
    const/4 v9, 0x0

    #@c
    .line 197
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    #@f
    move-result v10

    #@10
    .line 198
    .local v10, "tagLen":I
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    #@13
    move-result v7

    #@14
    .line 200
    .local v7, "cipheredLength":I
    invoke-virtual {p2}, Lsun/security/ssl/CipherBox;->isNullCipher()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 202
    invoke-virtual {p2, v10, v7}, Lsun/security/ssl/CipherBox;->sanityCheck(II)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 203
    new-instance v0, Ljavax/crypto/BadPaddingException;

    #@22
    .line 204
    const-string/jumbo v1, "ciphertext sanity check failed"

    #@25
    .line 203
    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 210
    :cond_1
    :try_start_0
    invoke-virtual {p2, p3, v10}, Lsun/security/ssl/CipherBox;->decrypt(Ljava/nio/ByteBuffer;I)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 222
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    #@2f
    .line 226
    .end local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :cond_2
    :goto_0
    if-eqz v10, :cond_8

    #@31
    .line 227
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    #@34
    move-result v0

    #@35
    sub-int v8, v0, v10

    #@37
    .line 232
    .local v8, "macOffset":I
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    #@3a
    move-result v0

    #@3b
    if-ge v0, v10, :cond_4

    #@3d
    .line 234
    if-nez v9, :cond_3

    #@3f
    .line 235
    new-instance v9, Ljavax/crypto/BadPaddingException;

    #@41
    const-string/jumbo v0, "bad record"

    #@44
    invoke-direct {v9, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@47
    .line 239
    :cond_3
    sub-int v8, v7, v10

    #@49
    .line 240
    invoke-virtual {p3, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@4c
    .line 244
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@4f
    move-result v0

    #@50
    invoke-static {v0, p3, p1, v2}, Lsun/security/ssl/EngineInputRecord;->checkMacTags(BLjava/nio/ByteBuffer;Lsun/security/ssl/MAC;Z)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_5

    #@56
    .line 245
    if-nez v9, :cond_5

    #@58
    .line 246
    new-instance v9, Ljavax/crypto/BadPaddingException;

    #@5a
    const-string/jumbo v0, "bad record MAC"

    #@5d
    invoke-direct {v9, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@60
    .line 254
    :cond_5
    invoke-virtual {p2}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_7

    #@66
    .line 255
    invoke-static {p1, v7, v8}, Lsun/security/ssl/EngineInputRecord;->calculateRemainingLen(Lsun/security/ssl/MAC;II)I

    #@69
    move-result v3

    #@6a
    .line 267
    .local v3, "remainingLen":I
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@6c
    array-length v0, v0

    #@6d
    if-le v3, v0, :cond_6

    #@6f
    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    #@71
    .line 270
    const-string/jumbo v1, "Internal buffer capacity error"

    #@74
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@77
    throw v0

    #@78
    .line 211
    .end local v3    # "remainingLen":I
    .end local v8    # "macOffset":I
    .restart local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catch_0
    move-exception v6

    #@79
    .line 220
    .local v6, "bpe":Ljavax/crypto/BadPaddingException;
    move-object v9, v6

    #@7a
    .line 222
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    #@7d
    goto :goto_0

    #@7e
    .line 221
    .end local v6    # "bpe":Ljavax/crypto/BadPaddingException;
    .local v9, "reservedBPE":Ljavax/crypto/BadPaddingException;
    :catchall_0
    move-exception v0

    #@7f
    .line 222
    invoke-virtual {p3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    #@82
    .line 221
    throw v0

    #@83
    .line 277
    .end local v9    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v3    # "remainingLen":I
    .restart local v8    # "macOffset":I
    :cond_6
    invoke-virtual {p0}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@86
    move-result v0

    #@87
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@89
    const/4 v5, 0x1

    #@8a
    move-object v4, p1

    #@8b
    invoke-static/range {v0 .. v5}, Lsun/security/ssl/EngineInputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    #@8e
    .line 280
    .end local v3    # "remainingLen":I
    :cond_7
    invoke-virtual {p3, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@91
    .line 284
    .end local v8    # "macOffset":I
    :cond_8
    if-eqz v9, :cond_9

    #@93
    .line 285
    throw v9

    #@94
    .line 288
    :cond_9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@97
    move-result-object v0

    #@98
    return-object v0
.end method

.method read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "srcBB"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 384
    iget-boolean v10, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    #@5
    if-eqz v10, :cond_0

    #@7
    .line 385
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@a
    move-result v10

    #@b
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@e
    move-result v10

    #@f
    const/16 v11, 0x17

    #@11
    if-eq v10, v11, :cond_1

    #@13
    .line 386
    :cond_0
    iput-boolean v8, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    #@15
    .line 387
    new-instance v8, Lsun/security/ssl/ByteBufferInputStream;

    #@17
    invoke-direct {v8, p1}, Lsun/security/ssl/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    #@1a
    nop

    #@1b
    nop

    #@1c
    invoke-virtual {p0, v8, v7}, Lsun/security/ssl/InputRecord;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@1f
    .line 388
    sget-object v7, Lsun/security/ssl/EngineInputRecord;->tmpBB:Ljava/nio/ByteBuffer;

    #@21
    return-object v7

    #@22
    .line 391
    :cond_1
    iput-boolean v9, p0, Lsun/security/ssl/EngineInputRecord;->internalData:Z

    #@24
    .line 393
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@27
    move-result v6

    #@28
    .line 394
    .local v6, "srcPos":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@2b
    move-result v5

    #@2c
    .line 397
    .local v5, "srcLim":I
    add-int/lit8 v7, v6, 0x1

    #@2e
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@31
    move-result v7

    #@32
    add-int/lit8 v10, v6, 0x2

    #@34
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@37
    move-result v10

    #@38
    .line 396
    invoke-static {v7, v10}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@3b
    move-result-object v4

    #@3c
    .line 401
    .local v4, "recordVersion":Lsun/security/ssl/ProtocolVersion;
    iget v7, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3e
    sget-object v10, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    #@40
    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    #@42
    if-lt v7, v10, :cond_2

    #@44
    .line 402
    iget-byte v7, v4, Lsun/security/ssl/ProtocolVersion;->major:B

    #@46
    sget-object v10, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    #@48
    iget-byte v10, v10, Lsun/security/ssl/ProtocolVersion;->major:B

    #@4a
    if-le v7, v10, :cond_3

    #@4c
    .line 403
    :cond_2
    new-instance v7, Ljavax/net/ssl/SSLException;

    #@4e
    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v9, "Unsupported record version "

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    .line 403
    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@65
    throw v7

    #@66
    .line 411
    :cond_3
    invoke-virtual {p0, p1}, Lsun/security/ssl/EngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    #@69
    move-result v3

    #@6a
    .line 412
    .local v3, "len":I
    sget-boolean v7, Lsun/security/ssl/EngineInputRecord;->-assertionsDisabled:Z

    #@6c
    if-nez v7, :cond_5

    #@6e
    if-lez v3, :cond_4

    #@70
    move v7, v8

    #@71
    :goto_0
    if-nez v7, :cond_5

    #@73
    new-instance v7, Ljava/lang/AssertionError;

    #@75
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@78
    throw v7

    #@79
    :cond_4
    move v7, v9

    #@7a
    goto :goto_0

    #@7b
    .line 414
    :cond_5
    sget-object v7, Lsun/security/ssl/EngineInputRecord;->debug:Lsun/security/ssl/Debug;

    #@7d
    if-eqz v7, :cond_6

    #@7f
    const-string/jumbo v7, "packet"

    #@82
    invoke-static {v7}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@85
    move-result v7

    #@86
    if-eqz v7, :cond_6

    #@88
    .line 416
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@8a
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@8d
    .line 417
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v7, v6, v3

    #@8f
    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@92
    .line 418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@95
    move-result-object v0

    #@96
    .line 420
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@98
    new-instance v8, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v9, "[Raw read (bb)]: length = "

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@af
    .line 421
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b1
    invoke-virtual {v2, v0, v7}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    .line 426
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_6
    :goto_1
    add-int/lit8 v7, v6, 0x5

    #@b6
    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@b9
    .line 427
    add-int v7, v6, v3

    #@bb
    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@be
    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@c1
    move-result-object v0

    #@c2
    .line 433
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@c5
    move-result v7

    #@c6
    invoke-virtual {p1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@c9
    .line 434
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@cc
    .line 436
    return-object v0

    #@cd
    .line 422
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    #@ce
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method writeBuffer(Ljava/io/OutputStream;[BII)V
    .locals 3
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v1, p2, v2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    #@c
    move-result-object v0

    #@d
    .line 357
    check-cast v0, Ljava/nio/ByteBuffer;

    #@f
    .line 359
    .local v0, "netBB":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/security/ssl/EngineInputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@11
    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@13
    invoke-virtual {v1, v0}, Lsun/security/ssl/EngineWriter;->putOutboundDataSync(Ljava/nio/ByteBuffer;)V

    #@16
    .line 353
    return-void
.end method

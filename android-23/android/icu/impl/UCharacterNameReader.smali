.class final Landroid/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source "UCharacterNameReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final ALG_INFO_SIZE_:I = 0xc

.field private static final DATA_FORMAT_ID_:I = 0x756e616d

.field private static final GROUP_INFO_SIZE_:I = 0x3


# instance fields
.field private m_algnamesindex_:I

.field private m_byteBuffer_:Ljava/nio/ByteBuffer;

.field private m_groupindex_:I

.field private m_groupstringindex_:I

.field private m_tokenstringindex_:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const v0, 0x756e616d

    #@6
    invoke-static {p1, v0, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@9
    .line 46
    iput-object p1, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@b
    .line 43
    return-void
.end method

.method private readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    new-instance v6, Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@2
    invoke-direct {v6}, Landroid/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    #@5
    .line 166
    .local v6, "result":Landroid/icu/impl/UCharacterName$AlgorithmName;
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    #@a
    move-result v5

    #@b
    .line 167
    .local v5, "rangestart":I
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v4

    #@11
    .line 168
    .local v4, "rangeend":I
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    #@16
    move-result v9

    #@17
    .line 169
    .local v9, "type":B
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    #@1c
    move-result v10

    #@1d
    .line 170
    .local v10, "variant":B
    invoke-virtual {v6, v5, v4, v9, v10}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    #@20
    move-result v11

    #@21
    if-nez v11, :cond_0

    #@23
    .line 171
    const/4 v11, 0x0

    #@24
    return-object v11

    #@25
    .line 174
    :cond_0
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getChar()C

    #@2a
    move-result v7

    #@2b
    .line 175
    .local v7, "size":I
    const/4 v11, 0x1

    #@2c
    if-ne v9, v11, :cond_2

    #@2e
    .line 177
    new-array v1, v10, [C

    #@30
    .line 178
    .local v1, "factor":[C
    const/4 v2, 0x0

    #@31
    .local v2, "j":I
    :goto_0
    if-ge v2, v10, :cond_1

    #@33
    .line 179
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@35
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getChar()C

    #@38
    move-result v11

    #@39
    aput-char v11, v1, v2

    #@3b
    .line 178
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 182
    :cond_1
    invoke-virtual {v6, v1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    #@41
    .line 183
    shl-int/lit8 v11, v10, 0x1

    #@43
    sub-int/2addr v7, v11

    #@44
    .line 186
    .end local v1    # "factor":[C
    .end local v2    # "j":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    .line 187
    .local v3, "prefix":Ljava/lang/StringBuilder;
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@4b
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    #@4e
    move-result v11

    #@4f
    and-int/lit16 v11, v11, 0xff

    #@51
    int-to-char v0, v11

    #@52
    .line 188
    .local v0, "c":C
    :goto_1
    if-eqz v0, :cond_3

    #@54
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    .line 191
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@59
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    #@5c
    move-result v11

    #@5d
    and-int/lit16 v11, v11, 0xff

    #@5f
    int-to-char v0, v11

    #@60
    goto :goto_1

    #@61
    .line 194
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v6, v11}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    #@68
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@6b
    move-result v11

    #@6c
    add-int/lit8 v11, v11, 0xc

    #@6e
    add-int/lit8 v11, v11, 0x1

    #@70
    sub-int/2addr v7, v11

    #@71
    .line 198
    if-lez v7, :cond_4

    #@73
    .line 200
    new-array v8, v7, [B

    #@75
    .line 201
    .local v8, "string":[B
    iget-object v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@77
    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7a
    .line 202
    invoke-virtual {v6, v8}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    #@7d
    .line 204
    .end local v8    # "string":[B
    :cond_4
    return-object v6
.end method


# virtual methods
.method protected authenticate([B[B)Z
    .locals 1
    .param p1, "dataformatid"    # [B
    .param p2, "dataformatversion"    # [B

    #@0
    .prologue
    .line 118
    const v0, 0x756e616d

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    #@6
    move-result-object v0

    #@7
    .line 117
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 120
    invoke-virtual {p0, p2}, Landroid/icu/impl/UCharacterNameReader;->isDataVersionAcceptable([B)Z

    #@10
    move-result v0

    #@11
    .line 117
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 3
    .param p1, "version"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 33
    aget-byte v2, p1, v1

    #@4
    if-ne v2, v0, :cond_0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    move v0, v1

    #@8
    goto :goto_0
.end method

.method protected read(Landroid/icu/impl/UCharacterName;)V
    .locals 12
    .param p1, "data"    # Landroid/icu/impl/UCharacterName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@5
    move-result v10

    #@6
    iput v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    #@8
    .line 62
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@d
    move-result v10

    #@e
    iput v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    #@10
    .line 63
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@15
    move-result v10

    #@16
    iput v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    #@18
    .line 64
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@1a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@1d
    move-result v10

    #@1e
    iput v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    #@20
    .line 67
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@22
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@25
    move-result v2

    #@26
    .line 68
    .local v2, "count":I
    new-array v8, v2, [C

    #@28
    .line 69
    .local v8, "token":[C
    const/4 v5, 0x0

    #@29
    :goto_0
    if-ge v5, v2, :cond_0

    #@2b
    .line 70
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@2d
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@30
    move-result v10

    #@31
    aput-char v10, v8, v5

    #@33
    .line 69
    add-int/lit8 v10, v5, 0x1

    #@35
    int-to-char v5, v10

    #@36
    .local v5, "i":C
    goto :goto_0

    #@37
    .line 72
    .end local v5    # "i":C
    :cond_0
    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    #@39
    iget v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    #@3b
    sub-int v7, v10, v11

    #@3d
    .line 73
    .local v7, "size":I
    new-array v9, v7, [B

    #@3f
    .line 74
    .local v9, "tokenstr":[B
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@41
    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@44
    .line 75
    invoke-virtual {p1, v8, v9}, Landroid/icu/impl/UCharacterName;->setToken([C[B)Z

    #@47
    .line 78
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@49
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@4c
    move-result v2

    #@4d
    .line 79
    const/4 v10, 0x3

    #@4e
    invoke-virtual {p1, v2, v10}, Landroid/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    #@51
    .line 80
    mul-int/lit8 v2, v2, 0x3

    #@53
    .line 81
    new-array v3, v2, [C

    #@55
    .line 82
    .local v3, "group":[C
    const/4 v6, 0x0

    #@56
    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    #@58
    .line 83
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@5a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@5d
    move-result v10

    #@5e
    aput-char v10, v3, v6

    #@60
    .line 82
    add-int/lit8 v6, v6, 0x1

    #@62
    goto :goto_1

    #@63
    .line 86
    :cond_1
    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    #@65
    iget v11, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    #@67
    sub-int v7, v10, v11

    #@69
    .line 87
    new-array v4, v7, [B

    #@6b
    .line 88
    .local v4, "groupstring":[B
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@6d
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@70
    .line 90
    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/UCharacterName;->setGroup([C[B)Z

    #@73
    .line 92
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@75
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@78
    move-result v2

    #@79
    .line 94
    new-array v0, v2, [Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@7b
    .line 96
    .local v0, "alg":[Landroid/icu/impl/UCharacterName$AlgorithmName;
    const/4 v6, 0x0

    #@7c
    :goto_2
    if-ge v6, v2, :cond_3

    #@7e
    .line 98
    invoke-direct {p0}, Landroid/icu/impl/UCharacterNameReader;->readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@81
    move-result-object v1

    #@82
    .line 99
    .local v1, "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    if-nez v1, :cond_2

    #@84
    .line 100
    new-instance v10, Ljava/io/IOException;

    #@86
    const-string/jumbo v11, "unames.icu read error: Algorithmic names creation error"

    #@89
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v10

    #@8d
    .line 102
    :cond_2
    aput-object v1, v0, v6

    #@8f
    .line 96
    add-int/lit8 v6, v6, 0x1

    #@91
    goto :goto_2

    #@92
    .line 104
    .end local v1    # "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    :cond_3
    invoke-virtual {p1, v0}, Landroid/icu/impl/UCharacterName;->setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z

    #@95
    .line 58
    return-void
.end method

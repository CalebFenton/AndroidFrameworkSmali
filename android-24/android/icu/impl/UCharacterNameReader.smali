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
    const/4 v11, 0x0

    #@1
    .line 159
    new-instance v5, Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@3
    invoke-direct {v5}, Landroid/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    #@6
    .line 160
    .local v5, "result":Landroid/icu/impl/UCharacterName$AlgorithmName;
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v4

    #@c
    .line 161
    .local v4, "rangestart":I
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@11
    move-result v3

    #@12
    .line 162
    .local v3, "rangeend":I
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    #@17
    move-result v8

    #@18
    .line 163
    .local v8, "type":B
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@1a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    #@1d
    move-result v9

    #@1e
    .line 164
    .local v9, "variant":B
    invoke-virtual {v5, v4, v3, v8, v9}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    #@21
    move-result v10

    #@22
    if-nez v10, :cond_0

    #@24
    .line 165
    const/4 v10, 0x0

    #@25
    return-object v10

    #@26
    .line 168
    :cond_0
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@28
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@2b
    move-result v6

    #@2c
    .line 169
    .local v6, "size":I
    const/4 v10, 0x1

    #@2d
    if-ne v8, v10, :cond_1

    #@2f
    .line 171
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@31
    invoke-static {v10, v9, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@34
    move-result-object v1

    #@35
    .line 173
    .local v1, "factor":[C
    invoke-virtual {v5, v1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    #@38
    .line 174
    shl-int/lit8 v10, v9, 0x1

    #@3a
    sub-int/2addr v6, v10

    #@3b
    .line 177
    .end local v1    # "factor":[C
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    .line 178
    .local v2, "prefix":Ljava/lang/StringBuilder;
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@42
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    #@45
    move-result v10

    #@46
    and-int/lit16 v10, v10, 0xff

    #@48
    int-to-char v0, v10

    #@49
    .line 179
    .local v0, "c":C
    :goto_0
    if-eqz v0, :cond_2

    #@4b
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 182
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@50
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    #@53
    move-result v10

    #@54
    and-int/lit16 v10, v10, 0xff

    #@56
    int-to-char v0, v10

    #@57
    goto :goto_0

    #@58
    .line 185
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v5, v10}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    #@5f
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@62
    move-result v10

    #@63
    add-int/lit8 v10, v10, 0xc

    #@65
    add-int/lit8 v10, v10, 0x1

    #@67
    sub-int/2addr v6, v10

    #@68
    .line 189
    if-lez v6, :cond_3

    #@6a
    .line 191
    new-array v7, v6, [B

    #@6c
    .line 192
    .local v7, "string":[B
    iget-object v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@6e
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@71
    .line 193
    invoke-virtual {v5, v7}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    #@74
    .line 195
    .end local v7    # "string":[B
    :cond_3
    return-object v5
.end method


# virtual methods
.method protected authenticate([B[B)Z
    .locals 1
    .param p1, "dataformatid"    # [B
    .param p2, "dataformatversion"    # [B

    #@0
    .prologue
    .line 112
    const v0, 0x756e616d

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    #@6
    move-result-object v0

    #@7
    .line 111
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 114
    invoke-virtual {p0, p2}, Landroid/icu/impl/UCharacterNameReader;->isDataVersionAcceptable([B)Z

    #@10
    move-result v0

    #@11
    .line 111
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
    const/4 v11, 0x0

    #@1
    .line 61
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@6
    move-result v9

    #@7
    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    #@9
    .line 62
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@e
    move-result v9

    #@f
    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    #@11
    .line 63
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@16
    move-result v9

    #@17
    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    #@19
    .line 64
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@1e
    move-result v9

    #@1f
    iput v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    #@21
    .line 67
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@23
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getChar()C

    #@26
    move-result v2

    #@27
    .line 68
    .local v2, "count":I
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@29
    invoke-static {v9, v2, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@2c
    move-result-object v7

    #@2d
    .line 69
    .local v7, "token":[C
    iget v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    #@2f
    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    #@31
    sub-int v6, v9, v10

    #@33
    .line 70
    .local v6, "size":I
    new-array v8, v6, [B

    #@35
    .line 71
    .local v8, "tokenstr":[B
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@3a
    .line 72
    invoke-virtual {p1, v7, v8}, Landroid/icu/impl/UCharacterName;->setToken([C[B)Z

    #@3d
    .line 75
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@3f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getChar()C

    #@42
    move-result v2

    #@43
    .line 76
    const/4 v9, 0x3

    #@44
    invoke-virtual {p1, v2, v9}, Landroid/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    #@47
    .line 77
    mul-int/lit8 v2, v2, 0x3

    #@49
    .line 78
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@4b
    invoke-static {v9, v2, v11}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@4e
    move-result-object v3

    #@4f
    .line 80
    .local v3, "group":[C
    iget v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    #@51
    iget v10, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    #@53
    sub-int v6, v9, v10

    #@55
    .line 81
    new-array v4, v6, [B

    #@57
    .line 82
    .local v4, "groupstring":[B
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@59
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@5c
    .line 84
    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/UCharacterName;->setGroup([C[B)Z

    #@5f
    .line 86
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    #@61
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@64
    move-result v2

    #@65
    .line 88
    new-array v0, v2, [Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@67
    .line 90
    .local v0, "alg":[Landroid/icu/impl/UCharacterName$AlgorithmName;
    const/4 v5, 0x0

    #@68
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    #@6a
    .line 92
    invoke-direct {p0}, Landroid/icu/impl/UCharacterNameReader;->readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;

    #@6d
    move-result-object v1

    #@6e
    .line 93
    .local v1, "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    if-nez v1, :cond_0

    #@70
    .line 94
    new-instance v9, Ljava/io/IOException;

    #@72
    const-string/jumbo v10, "unames.icu read error: Algorithmic names creation error"

    #@75
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v9

    #@79
    .line 96
    :cond_0
    aput-object v1, v0, v5

    #@7b
    .line 90
    add-int/lit8 v5, v5, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 98
    .end local v1    # "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/icu/impl/UCharacterName;->setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z

    #@81
    .line 58
    return-void
.end method

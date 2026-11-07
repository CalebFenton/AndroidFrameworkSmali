.class final Landroid/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source "UCharacterNameReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final blacklist ALG_INFO_SIZE_:I = 0xc

.field private static final blacklist DATA_FORMAT_ID_:I = 0x756e616d

.field private static final blacklist GROUP_INFO_SIZE_:I = 0x3


# instance fields
.field private blacklist m_algnamesindex_:I

.field private blacklist m_byteBuffer_:Ljava/nio/ByteBuffer;

.field private blacklist m_groupindex_:I

.field private blacklist m_groupstringindex_:I

.field private blacklist m_tokenstringindex_:I


# direct methods
.method protected constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x756e616d

    invoke-static {p1, v0, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 49
    iput-object p1, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method private blacklist readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/icu/impl/UCharacterName$AlgorithmName;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    .line 163
    .local v0, "result":Landroid/icu/impl/UCharacterName$AlgorithmName;
    iget-object v1, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 164
    .local v1, "rangestart":I
    iget-object v2, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 165
    .local v2, "rangeend":I
    iget-object v3, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 166
    .local v3, "type":B
    iget-object v4, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 167
    .local v4, "variant":B
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    move-result v5

    if-nez v5, :cond_25

    .line 168
    const/4 v5, 0x0

    return-object v5

    .line 171
    :cond_25
    iget-object v5, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    .line 172
    .local v5, "size":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3b

    .line 174
    iget-object v7, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    .line 176
    .local v7, "factor":[C
    invoke-virtual {v0, v7}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    .line 177
    shl-int/lit8 v8, v4, 0x1

    sub-int/2addr v5, v8

    .line 180
    .end local v7    # "factor":[C
    :cond_3b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v7, "prefix":Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 182
    .local v8, "c":C
    :goto_49
    if-eqz v8, :cond_58

    .line 184
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-char v8, v9

    goto :goto_49

    .line 188
    :cond_58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    .line 190
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v6

    sub-int/2addr v5, v9

    .line 192
    if-lez v5, :cond_73

    .line 194
    new-array v6, v5, [B

    .line 195
    .local v6, "string":[B
    iget-object v9, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v0, v6}, Landroid/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    .line 198
    .end local v6    # "string":[B
    :cond_73
    return-object v0
.end method


# virtual methods
.method protected blacklist authenticate([B[B)Z
    .registers 4
    .param p1, "dataformatid"    # [B
    .param p2, "dataformatversion"    # [B

    .line 114
    nop

    .line 115
    const v0, 0x756e616d

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 117
    invoke-virtual {p0, p2}, Landroid/icu/impl/UCharacterNameReader;->isDataVersionAcceptable([B)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 114
    :goto_17
    return v0
.end method

.method public blacklist isDataVersionAcceptable([B)Z
    .registers 5
    .param p1, "version"    # [B

    .line 36
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method protected blacklist read(Landroid/icu/impl/UCharacterName;)V
    .registers 13
    .param p1, "data"    # Landroid/icu/impl/UCharacterName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    .line 65
    iget-object v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    .line 66
    iget-object v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    .line 67
    iget-object v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    .line 70
    iget-object v0, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    .line 71
    .local v0, "count":I
    iget-object v1, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    .line 72
    .local v1, "token":[C
    iget v3, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupindex_:I

    iget v4, p0, Landroid/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    sub-int/2addr v3, v4

    .line 73
    .local v3, "size":I
    new-array v4, v3, [B

    .line 74
    .local v4, "tokenstr":[B
    iget-object v5, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {p1, v1, v4}, Landroid/icu/impl/UCharacterName;->setToken([C[B)Z

    .line 78
    iget-object v5, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    .line 79
    const/4 v5, 0x3

    invoke-virtual {p1, v0, v5}, Landroid/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    .line 80
    mul-int/2addr v0, v5

    .line 81
    iget-object v5, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v5, v0, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v2

    .line 83
    .local v2, "group":[C
    iget v5, p0, Landroid/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    iget v6, p0, Landroid/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    sub-int/2addr v5, v6

    .line 84
    .end local v3    # "size":I
    .local v5, "size":I
    new-array v3, v5, [B

    .line 85
    .local v3, "groupstring":[B
    iget-object v6, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1, v2, v3}, Landroid/icu/impl/UCharacterName;->setGroup([C[B)Z

    .line 89
    iget-object v6, p0, Landroid/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 90
    new-array v6, v0, [Landroid/icu/impl/UCharacterName$AlgorithmName;

    .line 93
    .local v6, "alg":[Landroid/icu/impl/UCharacterName$AlgorithmName;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_65
    if-ge v7, v0, :cond_7a

    .line 95
    invoke-direct {p0}, Landroid/icu/impl/UCharacterNameReader;->readAlg()Landroid/icu/impl/UCharacterName$AlgorithmName;

    move-result-object v8

    .line 96
    .local v8, "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    if-eqz v8, :cond_72

    .line 99
    aput-object v8, v6, v7

    .line 93
    .end local v8    # "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 97
    .restart local v8    # "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    :cond_72
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unames.icu read error: Algorithmic names creation error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    .end local v7    # "i":I
    .end local v8    # "an":Landroid/icu/impl/UCharacterName$AlgorithmName;
    :cond_7a
    invoke-virtual {p1, v6}, Landroid/icu/impl/UCharacterName;->setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z

    .line 102
    return-void
.end method

.class final Ljava/util/zip/ZipCoder;
.super Ljava/lang/Object;
.source "ZipCoder.java"


# instance fields
.field private cs:Ljava/nio/charset/Charset;

.field private dec:Ljava/nio/charset/CharsetDecoder;

.field private enc:Ljava/nio/charset/CharsetEncoder;

.field private isUTF8:Z

.field private utf8:Ljava/util/zip/ZipCoder;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    iput-object p1, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    #@5
    .line 135
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@b
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@15
    .line 133
    return-void
.end method

.method private decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 144
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v0

    #@a
    .line 145
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 144
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@f
    move-result-object v0

    #@10
    .line 146
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@12
    .line 144
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    #@18
    .line 148
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    #@1a
    return-object v0
.end method

.method private encoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@9
    move-result-object v0

    #@a
    .line 154
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 153
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@f
    move-result-object v0

    #@10
    .line 155
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@12
    .line 153
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 157
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    #@1a
    return-object v0
.end method

.method static get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 139
    new-instance v0, Ljava/util/zip/ZipCoder;

    #@2
    invoke-direct {v0, p0}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    #@5
    return-object v0
.end method


# virtual methods
.method getBytes(Ljava/lang/String;)[B
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->encoder()Ljava/nio/charset/CharsetEncoder;

    #@4
    move-result-object v8

    #@5
    invoke-virtual {v8}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@8
    move-result-object v5

    #@9
    .line 78
    .local v5, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v3

    #@d
    .line 79
    .local v3, "ca":[C
    array-length v8, v3

    #@e
    int-to-float v8, v8

    #@f
    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@12
    move-result v9

    #@13
    mul-float/2addr v8, v9

    #@14
    float-to-int v7, v8

    #@15
    .line 80
    .local v7, "len":I
    new-array v0, v7, [B

    #@17
    .line 81
    .local v0, "ba":[B
    if-nez v7, :cond_0

    #@19
    .line 82
    return-object v0

    #@1a
    .line 85
    :cond_0
    iget-boolean v8, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@1c
    if-eqz v8, :cond_2

    #@1e
    instance-of v8, v5, Lsun/nio/cs/ArrayEncoder;

    #@20
    if-eqz v8, :cond_2

    #@22
    .line 86
    check-cast v5, Lsun/nio/cs/ArrayEncoder;

    #@24
    .end local v5    # "ce":Ljava/nio/charset/CharsetEncoder;
    array-length v8, v3

    #@25
    invoke-interface {v5, v3, v10, v8, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    #@28
    move-result v2

    #@29
    .line 87
    .local v2, "blen":I
    const/4 v8, -0x1

    #@2a
    if-ne v2, v8, :cond_1

    #@2c
    .line 88
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v9, "MALFORMED"

    #@31
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v8

    #@35
    .line 89
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    #@38
    move-result-object v8

    #@39
    return-object v8

    #@3a
    .line 91
    .end local v2    # "blen":I
    .restart local v5    # "ce":Ljava/nio/charset/CharsetEncoder;
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3d
    move-result-object v1

    #@3e
    .line 92
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@41
    move-result-object v4

    #@42
    .line 93
    .local v4, "cb":Ljava/nio/CharBuffer;
    const/4 v8, 0x1

    #@43
    invoke-virtual {v5, v4, v1, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@46
    move-result-object v6

    #@47
    .line 94
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@4a
    move-result v8

    #@4b
    if-nez v8, :cond_3

    #@4d
    .line 95
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@4f
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v8

    #@57
    .line 96
    :cond_3
    invoke-virtual {v5, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@5a
    move-result-object v6

    #@5b
    .line 97
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@5e
    move-result v8

    #@5f
    if-nez v8, :cond_4

    #@61
    .line 98
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@63
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v8

    #@6b
    .line 99
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@6e
    move-result v8

    #@6f
    array-length v9, v0

    #@70
    if-ne v8, v9, :cond_5

    #@72
    .line 100
    return-object v0

    #@73
    .line 102
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@76
    move-result v8

    #@77
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    #@7a
    move-result-object v8

    #@7b
    return-object v8
.end method

.method getBytesUTF8(Ljava/lang/String;)[B
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 108
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 109
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 110
    new-instance v0, Ljava/util/zip/ZipCoder;

    #@f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    #@14
    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@16
    .line 111
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method isUTF8()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@2
    return v0
.end method

.method toString([B)Ljava/lang/String;
    .locals 1
    .param p1, "ba"    # [B

    #@0
    .prologue
    .line 73
    array-length v0, p1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method toString([BI)Ljava/lang/String;
    .locals 10
    .param p1, "ba"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    #@4
    move-result-object v7

    #@5
    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@8
    move-result-object v3

    #@9
    .line 48
    .local v3, "cd":Ljava/nio/charset/CharsetDecoder;
    int-to-float v7, p2

    #@a
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    #@d
    move-result v8

    #@e
    mul-float/2addr v7, v8

    #@f
    float-to-int v6, v7

    #@10
    .line 49
    .local v6, "len":I
    new-array v1, v6, [C

    #@12
    .line 50
    .local v1, "ca":[C
    if-nez v6, :cond_0

    #@14
    .line 51
    new-instance v7, Ljava/lang/String;

    #@16
    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    #@19
    return-object v7

    #@1a
    .line 55
    :cond_0
    iget-boolean v7, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@1c
    if-eqz v7, :cond_2

    #@1e
    instance-of v7, v3, Lsun/nio/cs/ArrayDecoder;

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 56
    check-cast v3, Lsun/nio/cs/ArrayDecoder;

    #@24
    .end local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-interface {v3, p1, v9, p2, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    #@27
    move-result v4

    #@28
    .line 57
    .local v4, "clen":I
    const/4 v7, -0x1

    #@29
    if-ne v4, v7, :cond_1

    #@2b
    .line 58
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v8, "MALFORMED"

    #@30
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v7

    #@34
    .line 59
    :cond_1
    new-instance v7, Ljava/lang/String;

    #@36
    invoke-direct {v7, v1, v9, v4}, Ljava/lang/String;-><init>([CII)V

    #@39
    return-object v7

    #@3a
    .line 61
    .end local v4    # "clen":I
    .restart local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    :cond_2
    invoke-static {p1, v9, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@3d
    move-result-object v0

    #@3e
    .line 62
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@41
    move-result-object v2

    #@42
    .line 63
    .local v2, "cb":Ljava/nio/CharBuffer;
    const/4 v7, 0x1

    #@43
    invoke-virtual {v3, v0, v2, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@46
    move-result-object v5

    #@47
    .line 64
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@4a
    move-result v7

    #@4b
    if-nez v7, :cond_3

    #@4d
    .line 65
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4f
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v7

    #@57
    .line 66
    :cond_3
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@5a
    move-result-object v5

    #@5b
    .line 67
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@5e
    move-result v7

    #@5f
    if-nez v7, :cond_4

    #@61
    .line 68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@63
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v7

    #@6b
    .line 69
    :cond_4
    new-instance v7, Ljava/lang/String;

    #@6d
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    #@70
    move-result v8

    #@71
    invoke-direct {v7, v1, v9, v8}, Ljava/lang/String;-><init>([CII)V

    #@74
    return-object v7
.end method

.method toStringUTF8([BI)Ljava/lang/String;
    .locals 2
    .param p1, "ba"    # [B
    .param p2, "len"    # I

    #@0
    .prologue
    .line 116
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 117
    invoke-virtual {p0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 118
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 119
    new-instance v0, Ljava/util/zip/ZipCoder;

    #@f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    #@14
    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@16
    .line 120
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    #@18
    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

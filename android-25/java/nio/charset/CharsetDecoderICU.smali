.class final Ljava/nio/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTE_COUNT:I = 0x2

.field private static final MAX_CHARS_PER_BYTE:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private final data:[I

.field private inEnd:I

.field private input:[B

.field private outEnd:I

.field private output:[C


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;FJ)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "address"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 69
    const/high16 v0, 0x40000000    # 2.0f

    #@3
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    #@6
    .line 34
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@b
    .line 37
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@f
    .line 39
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@11
    .line 40
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@13
    .line 42
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@15
    .line 43
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@17
    .line 70
    iput-wide p3, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@19
    .line 71
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@1b
    invoke-static {p0, v0, v1}, Llibcore/icu/NativeConverter;->registerConverter(Ljava/lang/Object;J)V

    #@1e
    .line 68
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@d
    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@18
    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1f
    move-result v2

    #@20
    add-int/2addr v1, v2

    #@21
    return v1

    #@22
    .line 182
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@28
    .line 183
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@2a
    if-eqz v1, :cond_1

    #@2c
    iget v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@2e
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@30
    array-length v2, v2

    #@31
    if-le v1, v2, :cond_2

    #@33
    .line 184
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@35
    new-array v1, v1, [B

    #@37
    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@39
    .line 187
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3c
    move-result v0

    #@3d
    .line 188
    .local v0, "pos":I
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@3f
    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@41
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@44
    .line 189
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@47
    .line 191
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@49
    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@4b
    .line 192
    return v3
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 2
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 162
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@c
    .line 163
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@17
    .line 164
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0

    #@21
    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@27
    .line 167
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@29
    if-eqz v0, :cond_1

    #@2b
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@2d
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@2f
    array-length v1, v1

    #@30
    if-le v0, v1, :cond_2

    #@32
    .line 168
    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@34
    new-array v0, v0, [C

    #@36
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@38
    .line 171
    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@3a
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@3c
    .line 172
    const/4 v0, 0x0

    #@3d
    return v0
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetDecoderICU;
    .locals 8
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    const-wide/16 v0, 0x0

    #@2
    .line 55
    .local v0, "address":J
    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    .line 56
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->getAveCharsPerByte(J)F

    #@9
    move-result v2

    #@a
    .line 57
    .local v2, "averageCharsPerByte":F
    new-instance v3, Ljava/nio/charset/CharsetDecoderICU;

    #@c
    invoke-direct {v3, p0, v2, v0, v1}, Ljava/nio/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V

    #@f
    .line 58
    .local v3, "result":Ljava/nio/charset/CharsetDecoderICU;
    const-wide/16 v0, 0x0

    #@11
    .line 59
    invoke-direct {v3}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 60
    return-object v3

    #@15
    .line 61
    .end local v2    # "averageCharsPerByte":F
    .end local v3    # "result":Ljava/nio/charset/CharsetDecoderICU;
    :catchall_0
    move-exception v4

    #@16
    .line 62
    const-wide/16 v6, 0x0

    #@18
    cmp-long v5, v0, v6

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 63
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    #@1f
    .line 61
    :cond_0
    throw v4
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@6
    const/4 v2, 0x0

    #@7
    aget v1, v1, v2

    #@9
    add-int/2addr v0, v1

    #@a
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@d
    .line 209
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@10
    .line 206
    return-void
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 197
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 198
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@d
    aget v1, v1, v2

    #@f
    add-int/2addr v0, v1

    #@10
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 203
    :goto_0
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@16
    .line 196
    return-void

    #@17
    .line 200
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@19
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@1b
    aget v1, v1, v2

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    #@21
    goto :goto_0
.end method

.method private updateCallback()V
    .locals 2

    #@0
    .prologue
    .line 87
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@2
    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V

    #@5
    .line 86
    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 132
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@9
    return-object v0

    #@a
    .line 135
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@c
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    #@f
    move-result v1

    #@10
    aput v1, v0, v2

    #@12
    .line 136
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@14
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    #@17
    move-result v1

    #@18
    const/4 v2, 0x1

    #@19
    aput v1, v0, v2

    #@1b
    .line 139
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@1d
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@1f
    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@21
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@23
    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@25
    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@27
    const/4 v7, 0x0

    #@28
    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    #@2b
    move-result v8

    #@2c
    .line 140
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 141
    const/16 v0, 0xf

    #@34
    if-ne v8, v0, :cond_1

    #@36
    .line 142
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 154
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@3b
    .line 155
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@3e
    .line 142
    return-object v0

    #@3f
    .line 143
    :cond_1
    const/16 v0, 0xa

    #@41
    if-ne v8, v0, :cond_2

    #@43
    .line 144
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@45
    const/4 v1, 0x2

    #@46
    aget v0, v0, v1

    #@48
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    move-result-object v0

    #@4c
    .line 154
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@4f
    .line 155
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@52
    .line 144
    return-object v0

    #@53
    .line 145
    :cond_2
    const/16 v0, 0xc

    #@55
    if-ne v8, v0, :cond_3

    #@57
    .line 146
    :try_start_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@59
    const/4 v1, 0x2

    #@5a
    aget v0, v0, v1

    #@5c
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    move-result-object v0

    #@60
    .line 154
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@63
    .line 155
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@66
    .line 146
    return-object v0

    #@67
    .line 148
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    #@69
    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(I)V

    #@6c
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 153
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    #@6e
    .line 154
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@71
    .line 155
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@74
    .line 153
    throw v0

    #@75
    .line 152
    .restart local v8    # "error":I
    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@77
    .line 154
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@7a
    .line 155
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@7d
    .line 152
    return-object v0
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 106
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@4
    .line 107
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@7
    .line 108
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    .line 110
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@f
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    aput v1, v0, v2

    #@16
    .line 111
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@18
    const/4 v1, 0x0

    #@19
    const/4 v2, 0x2

    #@1a
    aput v1, v0, v2

    #@1c
    .line 113
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@1e
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@20
    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@22
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@24
    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@26
    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@28
    const/4 v7, 0x1

    #@29
    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    #@2c
    move-result v8

    #@2d
    .line 114
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 115
    const/16 v0, 0xf

    #@35
    if-ne v8, v0, :cond_0

    #@37
    .line 116
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 125
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@3c
    .line 126
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    #@3f
    .line 116
    return-object v0

    #@40
    .line 117
    :cond_0
    const/16 v0, 0xb

    #@42
    if-ne v8, v0, :cond_1

    #@44
    .line 118
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@46
    const/4 v1, 0x2

    #@47
    aget v0, v0, v1

    #@49
    if-lez v0, :cond_1

    #@4b
    .line 119
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@4d
    const/4 v1, 0x2

    #@4e
    aget v0, v0, v1

    #@50
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result-object v0

    #@54
    .line 125
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@57
    .line 126
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    #@5a
    .line 119
    return-object v0

    #@5b
    .line 123
    :cond_1
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 125
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@60
    .line 126
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    #@63
    .line 123
    return-object v0

    #@64
    .line 124
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    #@65
    .line 125
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@68
    .line 126
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    #@6b
    .line 124
    throw v0
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    #@3
    .line 78
    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    #@3
    .line 82
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    #@3
    .line 74
    return-void
.end method

.method protected implReset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 91
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    #@4
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetByteToChar(J)V

    #@7
    .line 92
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@9
    aput v2, v0, v2

    #@b
    .line 93
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@d
    const/4 v1, 0x1

    #@e
    aput v2, v0, v1

    #@10
    .line 94
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    #@12
    const/4 v1, 0x2

    #@13
    aput v2, v0, v1

    #@15
    .line 95
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    #@17
    .line 96
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    #@19
    .line 97
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    #@1b
    .line 98
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    #@1d
    .line 99
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    #@1f
    .line 100
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    #@21
    .line 90
    return-void
.end method

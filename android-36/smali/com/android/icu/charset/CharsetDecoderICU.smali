.class final Lcom/android/icu/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final blacklist EMPTY_BYTE_ARRAY:[B

.field private static final blacklist INPUT_OFFSET:I = 0x0

.field private static final blacklist INVALID_BYTE_COUNT:I = 0x2

.field private static final blacklist MAX_CHARS_PER_BYTE:I = 0x2

.field private static final blacklist OUTPUT_OFFSET:I = 0x1


# instance fields
.field private blacklist allocatedInput:[B

.field private blacklist allocatedOutput:[C

.field private blacklist converterHandle:J
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist data:[I

.field private blacklist inEnd:I

.field private blacklist input:[B

.field private blacklist outEnd:I

.field private blacklist output:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/icu/charset/CharsetDecoderICU;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor blacklist <init>(Ljava/nio/charset/Charset;FJ)V
    .registers 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "address"    # J

    .line 77
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 45
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    .line 47
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 48
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 78
    iput-wide p3, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    .line 79
    return-void
.end method

.method private blacklist getArray(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 189
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    .line 190
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 191
    :cond_32
    iget v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 194
    :cond_38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 195
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    iget v2, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 199
    return v3
.end method

.method private blacklist getArray(Ljava/nio/CharBuffer;)I
    .registers 4
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 168
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 169
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    .line 170
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    .line 171
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 173
    :cond_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    .line 174
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 175
    :cond_32
    iget v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 178
    :cond_38
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcom/android/icu/charset/CharsetDecoderICU;
    .registers 7
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    .line 61
    .local v0, "address":J
    :try_start_2
    invoke-static {p1}, Lcom/android/icu/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v0, v2

    .line 62
    invoke-static {v0, v1}, Lcom/android/icu/charset/NativeConverter;->getAveCharsPerByte(J)F

    move-result v2

    .line 63
    .local v2, "averageCharsPerByte":F
    new-instance v3, Lcom/android/icu/charset/CharsetDecoderICU;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/android/icu/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_18

    .line 69
    .end local v2    # "averageCharsPerByte":F
    .local v3, "result":Lcom/android/icu/charset/CharsetDecoderICU;
    nop

    .line 71
    invoke-static {v3, v0, v1}, Lcom/android/icu/charset/NativeConverter;->registerConverter(Ljava/lang/Object;J)V

    .line 72
    invoke-direct {v3}, Lcom/android/icu/charset/CharsetDecoderICU;->updateCallback()V

    .line 73
    return-object v3

    .line 64
    .end local v3    # "result":Lcom/android/icu/charset/CharsetDecoderICU;
    :catchall_18
    move-exception v2

    .line 65
    .local v2, "t":Ljava/lang/Throwable;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_22

    .line 66
    invoke-static {v0, v1}, Lcom/android/icu/charset/NativeConverter;->closeConverter(J)V

    .line 68
    :cond_22
    throw v2
.end method

.method private blacklist setPosition(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 217
    return-void
.end method

.method private blacklist setPosition(Ljava/nio/CharBuffer;)V
    .registers 5
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 204
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 205
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    iget-object v2, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v2, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 210
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    .line 211
    return-void
.end method

.method private blacklist updateCallback()V
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Lcom/android/icu/charset/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected whitelist test-api decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 14
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_9

    .line 139
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 146
    :try_start_1b
    iget-wide v3, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v5, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    iget v6, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    iget-object v7, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    iget v8, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    iget-object v9, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/icu/charset/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    .line 147
    .local v0, "error":I
    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->U_FAILURE(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 148
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3f

    .line 149
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_75

    .line 161
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 149
    return-object v1

    .line 150
    :cond_3f
    const/16 v1, 0xa

    const/4 v2, 0x2

    if-ne v0, v1, :cond_53

    .line 151
    :try_start_44
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_75

    .line 161
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 151
    return-object v1

    .line 152
    :cond_53
    const/16 v1, 0xc

    if-ne v0, v1, :cond_66

    .line 153
    :try_start_57
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_75

    .line 161
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 153
    return-object v1

    .line 155
    :cond_66
    :try_start_66
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .end local p0    # "this":Lcom/android/icu/charset/CharsetDecoderICU;
    .end local p1    # "in":Ljava/nio/ByteBuffer;
    .end local p2    # "out":Ljava/nio/CharBuffer;
    throw v1

    .line 159
    .restart local p0    # "this":Lcom/android/icu/charset/CharsetDecoderICU;
    .restart local p1    # "in":Ljava/nio/ByteBuffer;
    .restart local p2    # "out":Ljava/nio/CharBuffer;
    :cond_6c
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_75

    .line 161
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 159
    return-object v1

    .line 161
    .end local v0    # "error":I
    :catchall_75
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 163
    throw v0
.end method

.method protected final whitelist test-api implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 13
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 113
    :try_start_0
    sget-object v0, Lcom/android/icu/charset/CharsetDecoderICU;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    .line 115
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aput v0, v1, v0

    .line 117
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 118
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 120
    iget-wide v3, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v5, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    iget v6, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    iget-object v7, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    iget v8, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    iget-object v9, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/android/icu/charset/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    .line 121
    .local v0, "error":I
    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->U_FAILURE(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 122
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3d

    .line 123
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_5f

    .line 132
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->implReset()V

    .line 123
    return-object v1

    .line 124
    :cond_3d
    const/16 v1, 0xb

    if-ne v0, v1, :cond_56

    .line 125
    :try_start_41
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    if-lez v1, :cond_56

    .line 126
    iget-object v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_5f

    .line 132
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->implReset()V

    .line 126
    return-object v1

    .line 130
    :cond_56
    :try_start_56
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_5f

    .line 132
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->implReset()V

    .line 130
    return-object v1

    .line 132
    .end local v0    # "error":I
    :catchall_5f
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->implReset()V

    .line 134
    throw v0
.end method

.method protected final whitelist test-api implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 86
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->updateCallback()V

    .line 87
    return-void
.end method

.method protected final whitelist test-api implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 90
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->updateCallback()V

    .line 91
    return-void
.end method

.method protected whitelist test-api implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetDecoderICU;->updateCallback()V

    .line 83
    return-void
.end method

.method protected whitelist test-api implReset()V
    .registers 4

    .line 98
    iget-wide v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/android/icu/charset/NativeConverter;->resetByteToChar(J)V

    .line 99
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 100
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 101
    iget-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->output:[C

    .line 103
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->input:[B

    .line 104
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 105
    iput-object v0, p0, Lcom/android/icu/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 106
    iput v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->inEnd:I

    .line 107
    iput v1, p0, Lcom/android/icu/charset/CharsetDecoderICU;->outEnd:I

    .line 108
    return-void
.end method

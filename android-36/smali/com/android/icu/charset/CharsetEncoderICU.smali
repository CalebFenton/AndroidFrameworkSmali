.class final Lcom/android/icu/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final blacklist DEFAULT_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_CHAR_ARRAY:[C

.field private static final blacklist INPUT_OFFSET:I = 0x0

.field private static final blacklist INVALID_CHAR_COUNT:I = 0x2

.field private static final blacklist OUTPUT_OFFSET:I = 0x1


# instance fields
.field private blacklist allocatedInput:[C

.field private blacklist allocatedOutput:[B

.field private final blacklist converterHandle:J
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist data:[I

.field private blacklist inEnd:I

.field private blacklist input:[C

.field private blacklist outEnd:I

.field private blacklist output:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/icu/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 38
    .local v0, "questionMark":[B
    sget-object v2, Lcom/android/icu/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v3, "UTF-8"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v2, Lcom/android/icu/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lcom/android/icu/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v3, "US-ASCII"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "questionMark":[B
    new-array v0, v1, [C

    sput-object v0, Lcom/android/icu/charset/CharsetEncoderICU;->EMPTY_CHAR_ARRAY:[C

    return-void
.end method

.method private constructor blacklist <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .registers 13
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "address"    # J

    .line 103
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "cs":Ljava/nio/charset/Charset;
    .end local p2    # "averageBytesPerChar":F
    .end local p3    # "maxBytesPerChar":F
    .end local p4    # "replacement":[B
    .local v1, "cs":Ljava/nio/charset/Charset;
    .local v2, "averageBytesPerChar":F
    .local v3, "maxBytesPerChar":F
    .local v4, "replacement":[B
    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 52
    const/4 p1, 0x3

    new-array p1, p1, [I

    iput-object p1, v0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    .line 58
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 59
    iput-object p1, v0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    .line 61
    iput-object p1, v0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 62
    iput-object p1, v0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 105
    iput-wide p5, v0, Lcom/android/icu/charset/CharsetEncoderICU;->converterHandle:J

    .line 106
    return-void
.end method

.method private blacklist getArray(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 200
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    .line 201
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 202
    :cond_32
    iget v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 205
    :cond_38
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getArray(Ljava/nio/CharBuffer;)I
    .registers 6
    .param p1, "in"    # Ljava/nio/CharBuffer;

    .line 211
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 212
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 213
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    .line 214
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 216
    :cond_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    .line 217
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 218
    :cond_32
    iget v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 221
    :cond_38
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 222
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    iget v2, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 223
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 226
    return v3
.end method

.method private static blacklist makeReplacement(Ljava/lang/String;J)[B
    .registers 5
    .param p0, "icuCanonicalName"    # Ljava/lang/String;
    .param p1, "address"    # J

    .line 94
    sget-object v0, Lcom/android/icu/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 95
    .local v0, "replacement":[B
    if-eqz v0, :cond_11

    .line 96
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 99
    :cond_11
    invoke-static {p1, p2}, Lcom/android/icu/charset/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcom/android/icu/charset/CharsetEncoderICU;
    .registers 14
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    .line 72
    const-wide/16 v1, 0x0

    .line 75
    .local v1, "address":J
    :try_start_2
    invoke-static {p1}, Lcom/android/icu/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_2b

    move-wide v10, v3

    .line 76
    .end local v1    # "address":J
    .local v10, "address":J
    :try_start_7
    invoke-static {v10, v11}, Lcom/android/icu/charset/NativeConverter;->getAveBytesPerChar(J)F

    move-result v7

    .line 77
    .local v7, "averageBytesPerChar":F
    invoke-static {v10, v11}, Lcom/android/icu/charset/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v0

    int-to-float v8, v0

    .line 78
    .local v8, "maxBytesPerChar":F
    invoke-static {p1, v10, v11}, Lcom/android/icu/charset/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    move-result-object v9

    .line 79
    .local v9, "replacement":[B
    new-instance v5, Lcom/android/icu/charset/CharsetEncoderICU;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_26

    move-object v6, p0

    .end local p0    # "cs":Ljava/nio/charset/Charset;
    .local v6, "cs":Ljava/nio/charset/Charset;
    :try_start_17
    invoke-direct/range {v5 .. v11}, Lcom/android/icu/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    .line 85
    .end local v7    # "averageBytesPerChar":F
    .end local v8    # "maxBytesPerChar":F
    .end local v9    # "replacement":[B
    .local v5, "result":Lcom/android/icu/charset/CharsetEncoderICU;
    nop

    .line 87
    invoke-static {v5, v10, v11}, Lcom/android/icu/charset/NativeConverter;->registerConverter(Ljava/lang/Object;J)V

    .line 88
    invoke-direct {v5}, Lcom/android/icu/charset/CharsetEncoderICU;->updateCallback()V

    .line 89
    return-object v5

    .line 80
    .end local v5    # "result":Lcom/android/icu/charset/CharsetEncoderICU;
    :catchall_22
    move-exception v0

    move-object p0, v0

    move-wide v1, v10

    goto :goto_2e

    .end local v6    # "cs":Ljava/nio/charset/Charset;
    .restart local p0    # "cs":Ljava/nio/charset/Charset;
    :catchall_26
    move-exception v0

    move-object v6, p0

    move-object p0, v0

    move-wide v1, v10

    .end local p0    # "cs":Ljava/nio/charset/Charset;
    .restart local v6    # "cs":Ljava/nio/charset/Charset;
    goto :goto_2e

    .end local v6    # "cs":Ljava/nio/charset/Charset;
    .end local v10    # "address":J
    .restart local v1    # "address":J
    .restart local p0    # "cs":Ljava/nio/charset/Charset;
    :catchall_2b
    move-exception v0

    move-object v6, p0

    move-object p0, v0

    .line 81
    .restart local v6    # "cs":Ljava/nio/charset/Charset;
    .local p0, "t":Ljava/lang/Throwable;
    :goto_2e
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_37

    .line 82
    invoke-static {v1, v2}, Lcom/android/icu/charset/NativeConverter;->closeConverter(J)V

    .line 84
    :cond_37
    throw p0
.end method

.method private blacklist setPosition(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 232
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v0, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    iget-object v2, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v1, v2, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 237
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    .line 238
    return-void
.end method

.method private blacklist setPosition(Ljava/nio/CharBuffer;)V
    .registers 5
    .param p1, "in"    # Ljava/nio/CharBuffer;

    .line 241
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 242
    .local v0, "position":I
    if-gez v0, :cond_13

    .line 248
    const/4 v0, 0x0

    .line 251
    :cond_13
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 254
    return-void
.end method

.method private blacklist updateCallback()V
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Lcom/android/icu/charset/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected whitelist test-api encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 14
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_9

    .line 166
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 170
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v3

    aput v3, v0, v1

    .line 171
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 174
    :try_start_20
    iget-wide v3, p0, Lcom/android/icu/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v5, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    iget v6, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    iget-object v7, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    iget v8, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    iget-object v9, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/icu/charset/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    .line 175
    .local v0, "error":I
    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->U_FAILURE(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 176
    const/16 v2, 0xf

    if-ne v0, v2, :cond_44

    .line 177
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_79

    .line 189
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 177
    return-object v1

    .line 178
    :cond_44
    const/16 v2, 0xa

    if-ne v0, v2, :cond_57

    .line 179
    :try_start_48
    iget-object v2, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_79

    .line 189
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 179
    return-object v1

    .line 180
    :cond_57
    const/16 v2, 0xc

    if-ne v0, v2, :cond_6a

    .line 181
    :try_start_5b
    iget-object v2, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_79

    .line 189
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 181
    return-object v1

    .line 183
    :cond_6a
    :try_start_6a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .end local p0    # "this":Lcom/android/icu/charset/CharsetEncoderICU;
    .end local p1    # "in":Ljava/nio/CharBuffer;
    .end local p2    # "out":Ljava/nio/ByteBuffer;
    throw v1

    .line 187
    .restart local p0    # "this":Lcom/android/icu/charset/CharsetEncoderICU;
    .restart local p1    # "in":Ljava/nio/CharBuffer;
    .restart local p2    # "out":Ljava/nio/ByteBuffer;
    :cond_70
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_79

    .line 189
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 187
    return-object v1

    .line 189
    .end local v0    # "error":I
    :catchall_79
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 191
    throw v0
.end method

.method protected whitelist test-api implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 13
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 140
    :try_start_0
    sget-object v0, Lcom/android/icu/charset/CharsetEncoderICU;->EMPTY_CHAR_ARRAY:[C

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    .line 142
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aput v0, v1, v0

    .line 144
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 145
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 147
    iget-wide v3, p0, Lcom/android/icu/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v5, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    iget v6, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    iget-object v7, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    iget v8, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    iget-object v9, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/android/icu/charset/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    .line 148
    .local v0, "error":I
    invoke-static {v0}, Lcom/android/icu/charset/NativeConverter;->U_FAILURE(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 149
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3d

    .line 150
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_5f

    .line 159
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->implReset()V

    .line 150
    return-object v1

    .line 151
    :cond_3d
    const/16 v1, 0xb

    if-ne v0, v1, :cond_56

    .line 152
    :try_start_41
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v1, v1, v2

    if-lez v1, :cond_56

    .line 153
    iget-object v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_5f

    .line 159
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->implReset()V

    .line 153
    return-object v1

    .line 157
    :cond_56
    :try_start_56
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_5f

    .line 159
    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->implReset()V

    .line 157
    return-object v1

    .line 159
    .end local v0    # "error":I
    :catchall_5f
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/icu/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->implReset()V

    .line 161
    throw v0
.end method

.method protected whitelist test-api implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 113
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->updateCallback()V

    .line 114
    return-void
.end method

.method protected whitelist test-api implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .line 117
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->updateCallback()V

    .line 118
    return-void
.end method

.method protected whitelist test-api implReplaceWith([B)V
    .registers 2
    .param p1, "newReplacement"    # [B

    .line 109
    invoke-direct {p0}, Lcom/android/icu/charset/CharsetEncoderICU;->updateCallback()V

    .line 110
    return-void
.end method

.method protected whitelist test-api implReset()V
    .registers 4

    .line 125
    iget-wide v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Lcom/android/icu/charset/NativeConverter;->resetCharToByte(J)V

    .line 126
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 127
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 128
    iget-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->output:[B

    .line 130
    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->input:[C

    .line 131
    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 132
    iput-object v0, p0, Lcom/android/icu/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 133
    iput v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->inEnd:I

    .line 134
    iput v1, p0, Lcom/android/icu/charset/CharsetEncoderICU;->outEnd:I

    .line 135
    return-void
.end method

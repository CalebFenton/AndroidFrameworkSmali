.class final Ljava/nio/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final DEFAULT_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHAR_COUNT:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private inEnd:I

.field private input:[C

.field private outEnd:I

.field private output:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 26
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    #@7
    .line 35
    const/4 v1, 0x1

    #@8
    new-array v0, v1, [B

    #@a
    const/16 v1, 0x3f

    #@c
    const/4 v2, 0x0

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 36
    .local v0, "questionMark":[B
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    #@11
    const-string/jumbo v2, "UTF-8"

    #@14
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 37
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    #@19
    const-string/jumbo v2, "ISO-8859-1"

    #@1c
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 38
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    #@21
    const-string/jumbo v2, "US-ASCII"

    #@24
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "address"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 95
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    #@a
    .line 49
    const/4 v0, 0x3

    #@b
    new-array v0, v0, [I

    #@d
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@f
    .line 52
    const-wide/16 v0, 0x0

    #@11
    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@13
    .line 54
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@15
    .line 55
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@17
    .line 57
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@19
    .line 58
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@1b
    .line 97
    iput-wide p5, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@1d
    .line 98
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    #@20
    .line 94
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@c
    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@17
    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0

    #@21
    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@27
    .line 203
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@29
    if-eqz v0, :cond_1

    #@2b
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@2d
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@2f
    array-length v1, v1

    #@30
    if-le v0, v1, :cond_2

    #@32
    .line 204
    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@34
    new-array v0, v0, [B

    #@36
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@38
    .line 207
    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@3a
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@3c
    .line 208
    const/4 v0, 0x0

    #@3d
    return v0
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 4
    .param p1, "in"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 213
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 214
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@d
    .line 215
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    iput v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@18
    .line 216
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@1f
    move-result v2

    #@20
    add-int/2addr v1, v2

    #@21
    return v1

    #@22
    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@28
    .line 219
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@2a
    if-eqz v1, :cond_1

    #@2c
    iget v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@2e
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@30
    array-length v2, v2

    #@31
    if-le v1, v2, :cond_2

    #@33
    .line 220
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@35
    new-array v1, v1, [C

    #@37
    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@39
    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@3c
    move-result v0

    #@3d
    .line 224
    .local v0, "pos":I
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@3f
    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@41
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    #@44
    .line 225
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@47
    .line 227
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@49
    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@4b
    .line 228
    return v3
.end method

.method private static makeReplacement(Ljava/lang/String;J)[B
    .locals 3
    .param p0, "icuCanonicalName"    # Ljava/lang/String;
    .param p1, "address"    # J

    #@0
    .prologue
    .line 86
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    .line 87
    .local v0, "replacement":[B
    if-eqz v0, :cond_0

    #@a
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [B

    #@10
    return-object v1

    #@11
    .line 91
    :cond_0
    invoke-static {p1, p2}, Llibcore/icu/NativeConverter;->getSubstitutionBytes(J)[B

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoderICU;
    .locals 10
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const-wide/16 v6, 0x0

    #@2
    .line 70
    .local v6, "address":J
    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    #@5
    move-result-wide v6

    #@6
    .line 71
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->getAveBytesPerChar(J)F

    #@9
    move-result v3

    #@a
    .line 72
    .local v3, "averageBytesPerChar":F
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    #@d
    move-result v0

    #@e
    int-to-float v4, v0

    #@f
    .line 73
    .local v4, "maxBytesPerChar":F
    invoke-static {p1, v6, v7}, Ljava/nio/charset/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    #@12
    move-result-object v5

    #@13
    .line 74
    .local v5, "replacement":[B
    new-instance v1, Ljava/nio/charset/CharsetEncoderICU;

    #@15
    move-object v2, p0

    #@16
    invoke-direct/range {v1 .. v7}, Ljava/nio/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 75
    .local v1, "result":Ljava/nio/charset/CharsetEncoderICU;
    const-wide/16 v6, 0x0

    #@1b
    .line 76
    return-object v1

    #@1c
    .line 77
    .end local v1    # "result":Ljava/nio/charset/CharsetEncoderICU;
    .end local v3    # "averageBytesPerChar":F
    .end local v4    # "maxBytesPerChar":F
    .end local v5    # "replacement":[B
    :catchall_0
    move-exception v0

    #@1d
    .line 78
    const-wide/16 v8, 0x0

    #@1f
    cmp-long v2, v6, v8

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 79
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    #@26
    .line 77
    :cond_0
    throw v0
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 234
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@9
    aget v0, v0, v2

    #@b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@e
    move-result v1

    #@f
    sub-int/2addr v0, v1

    #@10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 239
    :goto_0
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@16
    .line 232
    return-void

    #@17
    .line 236
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@19
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@1b
    aget v1, v1, v2

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@21
    goto :goto_0
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "in"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@4
    move-result v1

    #@5
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@7
    aget v2, v2, v3

    #@9
    add-int/2addr v1, v2

    #@a
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@c
    const/4 v3, 0x2

    #@d
    aget v2, v2, v3

    #@f
    sub-int v0, v1, v2

    #@11
    .line 244
    .local v0, "position":I
    if-gez v0, :cond_0

    #@13
    .line 250
    const/4 v0, 0x0

    #@14
    .line 253
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@17
    .line 255
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@1a
    .line 242
    return-void
.end method

.method private updateCallback()V
    .locals 2

    #@0
    .prologue
    .line 114
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@2
    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V

    #@5
    .line 113
    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 158
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 159
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@a
    return-object v0

    #@b
    .line 162
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@d
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    #@10
    move-result v1

    #@11
    aput v1, v0, v3

    #@13
    .line 163
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@15
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x1

    #@1a
    aput v1, v0, v2

    #@1c
    .line 164
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@1e
    aput v3, v0, v4

    #@20
    .line 167
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@22
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@24
    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@26
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@28
    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@2a
    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@2c
    const/4 v7, 0x0

    #@2d
    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    #@30
    move-result v8

    #@31
    .line 168
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 169
    const/16 v0, 0xf

    #@39
    if-ne v8, v0, :cond_1

    #@3b
    .line 170
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@40
    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@43
    .line 170
    return-object v0

    #@44
    .line 171
    :cond_1
    const/16 v0, 0xa

    #@46
    if-ne v8, v0, :cond_2

    #@48
    .line 172
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@4a
    const/4 v1, 0x2

    #@4b
    aget v0, v0, v1

    #@4d
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v0

    #@51
    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@54
    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@57
    .line 172
    return-object v0

    #@58
    .line 173
    :cond_2
    const/16 v0, 0xc

    #@5a
    if-ne v8, v0, :cond_3

    #@5c
    .line 174
    :try_start_2
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@5e
    const/4 v1, 0x2

    #@5f
    aget v0, v0, v1

    #@61
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    move-result-object v0

    #@65
    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@68
    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@6b
    .line 174
    return-object v0

    #@6c
    .line 176
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    #@6e
    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(I)V

    #@71
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    .line 181
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    #@73
    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@76
    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@79
    .line 181
    throw v0

    #@7a
    .line 180
    .restart local v8    # "error":I
    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7c
    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    #@7f
    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@82
    .line 180
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    #@5
    .line 190
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 192
    invoke-super {p0}, Ljava/nio/charset/CharsetEncoder;->finalize()V

    #@c
    .line 187
    return-void

    #@d
    .line 191
    :catchall_0
    move-exception v0

    #@e
    .line 192
    invoke-super {p0}, Ljava/nio/charset/CharsetEncoder;->finalize()V

    #@11
    .line 191
    throw v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 133
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@2
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@4
    .line 134
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@7
    .line 135
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    .line 137
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@f
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    aput v1, v0, v2

    #@16
    .line 138
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@18
    const/4 v1, 0x0

    #@19
    const/4 v2, 0x2

    #@1a
    aput v1, v0, v2

    #@1c
    .line 140
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@1e
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@20
    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@22
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@24
    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@26
    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@28
    const/4 v7, 0x1

    #@29
    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    #@2c
    move-result v8

    #@2d
    .line 141
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 142
    const/16 v0, 0xf

    #@35
    if-ne v8, v0, :cond_0

    #@37
    .line 143
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@3c
    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    #@3f
    .line 143
    return-object v0

    #@40
    .line 144
    :cond_0
    const/16 v0, 0xb

    #@42
    if-ne v8, v0, :cond_1

    #@44
    .line 145
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@46
    const/4 v1, 0x2

    #@47
    aget v0, v0, v1

    #@49
    if-lez v0, :cond_1

    #@4b
    .line 146
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

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
    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@57
    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    #@5a
    .line 146
    return-object v0

    #@5b
    .line 150
    :cond_1
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@60
    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    #@63
    .line 150
    return-object v0

    #@64
    .line 151
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    #@65
    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    #@68
    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    #@6b
    .line 151
    throw v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    #@3
    .line 105
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    #@3
    .line 109
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    #@3
    .line 101
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
    .line 118
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    #@4
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetCharToByte(J)V

    #@7
    .line 119
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@9
    aput v2, v0, v2

    #@b
    .line 120
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@d
    const/4 v1, 0x1

    #@e
    aput v2, v0, v1

    #@10
    .line 121
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    #@12
    const/4 v1, 0x2

    #@13
    aput v2, v0, v1

    #@15
    .line 122
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    #@17
    .line 123
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    #@19
    .line 124
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    #@1b
    .line 125
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    #@1d
    .line 126
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    #@1f
    .line 127
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    #@21
    .line 117
    return-void
.end method

.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field private static final END_OF_INPUT:Ljava/lang/String; = "END_OF_INPUT"

.field private static final FLUSHED:Ljava/lang/String; = "FLUSHED"

.field private static final ONGOING:Ljava/lang/String; = "ONGOING"

.field private static final RESET:Ljava/lang/String; = "RESET"


# instance fields
.field private final averageCharsPerByte:F

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacementChars:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 95
    const-string/jumbo v0, "\ufffd"

    #@7
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    #@9
    .line 97
    const-string/jumbo v0, "RESET"

    #@c
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@e
    .line 99
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@10
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@12
    .line 100
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@14
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@16
    .line 120
    cmpg-float v0, p2, v1

    #@18
    if-lez v0, :cond_0

    #@1a
    cmpg-float v0, p3, v1

    #@1c
    if-gtz v0, :cond_1

    #@1e
    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "averageCharsPerByte and maxCharsPerByte must be positive"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 123
    :cond_1
    cmpl-float v0, p2, p3

    #@29
    if-lez v0, :cond_2

    #@2b
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "averageCharsPerByte is greater than maxCharsPerByte"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 126
    :cond_2
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    #@36
    .line 127
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    #@38
    .line 128
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    #@3a
    .line 119
    return-void
.end method

.method private allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "output"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 224
    const/4 v1, 0x1

    #@7
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    #@f
    move-result v1

    #@10
    mul-int/lit8 v1, v1, 0x2

    #@12
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@15
    move-result-object v0

    #@16
    .line 227
    .local v0, "result":Ljava/nio/CharBuffer;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@19
    .line 228
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@1c
    .line 229
    return-object v0
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@8
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 211
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    #@e
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    #@11
    move-result v1

    #@12
    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    #@15
    throw v0

    #@16
    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@1e
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@20
    if-ne v0, v1, :cond_1

    #@22
    .line 213
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    #@24
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    #@27
    move-result v1

    #@28
    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    #@2b
    throw v0

    #@2c
    .line 209
    :cond_1
    return-void
.end method

.method private illegalStateException()Ljava/lang/IllegalStateException;
    .locals 3

    #@0
    .prologue
    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "State: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    #@2
    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 5
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    int-to-float v3, v3

    #@5
    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    #@7
    mul-float/2addr v3, v4

    #@8
    float-to-int v0, v3

    #@9
    .line 181
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@c
    move-result-object v1

    #@d
    .line 183
    .local v1, "out":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@10
    .line 185
    :goto_0
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@12
    const-string/jumbo v4, "FLUSHED"

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 186
    const/4 v3, 0x1

    #@18
    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@1b
    move-result-object v2

    #@1c
    .line 187
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 188
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@23
    move-result-object v1

    #@24
    goto :goto_0

    #@25
    .line 191
    :cond_0
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    #@28
    .line 194
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@2b
    move-result-object v2

    #@2c
    .line 195
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@2e
    if-ne v2, v3, :cond_1

    #@30
    .line 196
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@33
    move-result-object v1

    #@34
    goto :goto_0

    #@35
    .line 198
    :cond_1
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    #@38
    goto :goto_0

    #@39
    .line 202
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@3c
    .line 203
    return-object v1
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    #@0
    .prologue
    .line 297
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@2
    const-string/jumbo v5, "RESET"

    #@5
    if-eq v4, v5, :cond_0

    #@7
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@9
    const-string/jumbo v5, "ONGOING"

    #@c
    if-eq v4, v5, :cond_0

    #@e
    if-eqz p3, :cond_2

    #@10
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@12
    const-string/jumbo v5, "END_OF_INPUT"

    #@15
    if-ne v4, v5, :cond_2

    #@17
    .line 301
    :cond_0
    if-eqz p3, :cond_3

    #@19
    const-string/jumbo v4, "END_OF_INPUT"

    #@1c
    :goto_0
    iput-object v4, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@1e
    .line 306
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v3

    #@22
    .line 313
    .local v3, "result":Ljava/nio/charset/CoderResult;
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@24
    if-ne v3, v4, :cond_5

    #@26
    .line 314
    if-eqz p3, :cond_4

    #@28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 315
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    #@35
    move-result-object v3

    #@36
    .line 325
    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_6

    #@3c
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@3e
    .line 326
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@40
    if-ne v0, v4, :cond_7

    #@42
    .line 327
    return-object v3

    #@43
    .line 298
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoder;->illegalStateException()Ljava/lang/IllegalStateException;

    #@46
    move-result-object v4

    #@47
    throw v4

    #@48
    .line 301
    :cond_3
    const-string/jumbo v4, "ONGOING"

    #@4b
    goto :goto_0

    #@4c
    .line 309
    :catch_0
    move-exception v2

    #@4d
    .line 310
    .local v2, "ex":Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    #@4f
    invoke-direct {v4, v2}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@52
    throw v4

    #@53
    .line 307
    .end local v2    # "ex":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v1

    #@54
    .line 308
    .local v1, "ex":Ljava/nio/BufferOverflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    #@56
    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@59
    throw v4

    #@5a
    .line 317
    .end local v1    # "ex":Ljava/nio/BufferOverflowException;
    .restart local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_4
    return-object v3

    #@5b
    .line 319
    :cond_5
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@5d
    if-ne v3, v4, :cond_1

    #@5f
    .line 320
    return-object v3

    #@60
    .line 325
    :cond_6
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@62
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_2

    #@63
    .line 328
    :cond_7
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@65
    if-ne v0, v4, :cond_9

    #@67
    .line 329
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    #@6a
    move-result v4

    #@6b
    iget-object v5, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    #@6d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@70
    move-result v5

    #@71
    if-ge v4, v5, :cond_8

    #@73
    .line 330
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@75
    return-object v4

    #@76
    .line 332
    :cond_8
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    #@78
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@7b
    .line 334
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@7e
    move-result v4

    #@7f
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    #@82
    move-result v5

    #@83
    add-int/2addr v4, v5

    #@84
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@87
    goto :goto_1
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 426
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "FLUSHED"

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "END_OF_INPUT"

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 427
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoder;->illegalStateException()Ljava/lang/IllegalStateException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@16
    move-result-object v0

    #@17
    .line 430
    .local v0, "result":Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@19
    if-ne v0, v1, :cond_1

    #@1b
    .line 431
    const-string/jumbo v1, "FLUSHED"

    #@1e
    iput-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@20
    .line 433
    :cond_1
    return-object v0
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 447
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2
    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 458
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 470
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 481
    return-void
.end method

.method protected implReset()V
    .locals 0

    #@0
    .prologue
    .line 489
    return-void
.end method

.method public isAutoDetecting()Z
    .locals 1

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCharsetDetected()Z
    .locals 1

    #@0
    .prologue
    .line 528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

.method public final maxCharsPerByte()F
    .locals 1

    #@0
    .prologue
    .line 544
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    #@2
    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 561
    if-nez p1, :cond_0

    #@2
    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "newAction == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 564
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 565
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 566
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 583
    if-nez p1, :cond_0

    #@2
    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "newAction == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 586
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 587
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 588
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p1, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    if-nez p1, :cond_0

    #@2
    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "replacement == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 618
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "replacement.isEmpty()"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 621
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    int-to-float v0, v0

    #@1f
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    #@22
    move-result v1

    #@23
    cmpl-float v0, v0, v1

    #@25
    if-lez v0, :cond_2

    #@27
    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "replacement length > maxCharsPerByte: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@38
    move-result v2

    #@39
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 623
    const-string/jumbo v2, " > "

    #@40
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 623
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    #@47
    move-result v2

    #@48
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    .line 625
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    #@56
    .line 626
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    #@59
    .line 627
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    #@0
    .prologue
    .line 636
    const-string/jumbo v0, "RESET"

    #@3
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    #@5
    .line 637
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    #@8
    .line 638
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field private static final END_OF_INPUT:Ljava/lang/String; = "END_OF_INPUT"

.field private static final FLUSHED:Ljava/lang/String; = "FLUSHED"

.field private static final ONGOING:Ljava/lang/String; = "ONGOING"

.field private static final RESET:Ljava/lang/String; = "RESET"


# instance fields
.field private final averageBytesPerChar:F

.field private final charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacementBytes:[B

.field private state:Ljava/lang/String;

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    #@0
    .prologue
    .line 104
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [B

    #@3
    const/16 v1, 0x3f

    #@5
    const/4 v2, 0x0

    #@6
    aput-byte v1, v0, v2

    #@8
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    #@b
    .line 103
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

    #@0
    .prologue
    .line 129
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    #@9
    .line 128
    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 91
    const-string/jumbo v0, "RESET"

    #@7
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@9
    .line 93
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@b
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 94
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@f
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@11
    .line 133
    cmpg-float v0, p2, v1

    #@13
    if-lez v0, :cond_0

    #@15
    cmpg-float v0, p3, v1

    #@17
    if-gtz v0, :cond_1

    #@19
    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "averageBytesPerChar and maxBytesPerChar must both be positive"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 136
    :cond_1
    cmpl-float v0, p2, p3

    #@24
    if-lez v0, :cond_2

    #@26
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v1, "averageBytesPerChar is greater than maxBytesPerChar"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 139
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    #@31
    .line 140
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    #@33
    .line 141
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    #@35
    .line 142
    if-eqz p5, :cond_3

    #@37
    .line 145
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@39
    .line 132
    :goto_0
    return-void

    #@3a
    .line 147
    :cond_3
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    #@3d
    goto :goto_0
.end method

.method private allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 294
    const/4 v1, 0x1

    #@7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@f
    move-result v1

    #@10
    mul-int/lit8 v1, v1, 0x2

    #@12
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@15
    move-result-object v0

    #@16
    .line 297
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@19
    .line 298
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1c
    .line 299
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
    .line 285
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 286
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
    .line 287
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@18
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 288
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
    .line 284
    :cond_1
    return-void
.end method

.method private illegalStateException()Ljava/lang/IllegalStateException;
    .locals 3

    #@0
    .prologue
    .line 688
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
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

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
.method public final averageBytesPerChar()F
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    #@2
    return v0
.end method

.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 169
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [C

    #@3
    const/4 v1, 0x0

    #@4
    aput-char p1, v0, v1

    #@6
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 184
    instance-of v5, p1, Ljava/nio/CharBuffer;

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 185
    check-cast p1, Ljava/nio/CharBuffer;

    #@6
    .end local p1    # "sequence":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@9
    move-result-object v1

    #@a
    .line 190
    .local v1, "cb":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@c
    const-string/jumbo v6, "FLUSHED"

    #@f
    if-ne v5, v6, :cond_0

    #@11
    .line 191
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@14
    .line 193
    :cond_0
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@16
    const-string/jumbo v6, "RESET"

    #@19
    if-eq v5, v6, :cond_2

    #@1b
    .line 194
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    #@1e
    move-result-object v5

    #@1f
    throw v5

    #@20
    .line 187
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .restart local p1    # "sequence":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@23
    move-result-object v1

    #@24
    .restart local v1    # "cb":Ljava/nio/CharBuffer;
    goto :goto_0

    #@25
    .line 197
    .end local p1    # "sequence":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_3

    #@2b
    .line 198
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 201
    :cond_3
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2f
    .line 202
    .local v3, "originalMalformedInputAction":Ljava/nio/charset/CodingErrorAction;
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@31
    .line 203
    .local v4, "originalUnmappableCharacterAction":Ljava/nio/charset/CodingErrorAction;
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@33
    invoke-virtual {p0, v5}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@36
    .line 204
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@38
    invoke-virtual {p0, v5}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@3b
    .line 206
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@3e
    move-result-object v0

    #@3f
    .line 209
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result v5

    #@43
    .line 213
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@46
    .line 214
    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@49
    .line 215
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@4c
    .line 209
    return v5

    #@4d
    .line 210
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@4e
    .line 211
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v5, 0x0

    #@4f
    .line 213
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@52
    .line 214
    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@55
    .line 215
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@58
    .line 211
    return v5

    #@59
    .line 212
    .end local v2    # "e":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v5

    #@5a
    .line 213
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@5d
    .line 214
    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@60
    .line 215
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@63
    .line 212
    throw v5
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    int-to-float v3, v3

    #@5
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    #@7
    mul-float/2addr v3, v4

    #@8
    float-to-int v0, v3

    #@9
    .line 259
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v1

    #@d
    .line 261
    .local v1, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@10
    .line 263
    :goto_0
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@12
    const-string/jumbo v4, "FLUSHED"

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 264
    const/4 v3, 0x1

    #@18
    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@1b
    move-result-object v2

    #@1c
    .line 265
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 266
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@23
    move-result-object v1

    #@24
    goto :goto_0

    #@25
    .line 269
    :cond_0
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    #@28
    .line 272
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@2b
    move-result-object v2

    #@2c
    .line 273
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@2e
    if-ne v2, v3, :cond_1

    #@30
    .line 274
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@33
    move-result-object v1

    #@34
    goto :goto_0

    #@35
    .line 276
    :cond_1
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    #@38
    goto :goto_0

    #@39
    .line 280
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@3c
    .line 281
    return-object v1
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    #@0
    .prologue
    .line 365
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@2
    const-string/jumbo v5, "RESET"

    #@5
    if-eq v4, v5, :cond_0

    #@7
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@9
    const-string/jumbo v5, "ONGOING"

    #@c
    if-eq v4, v5, :cond_0

    #@e
    if-eqz p3, :cond_2

    #@10
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@12
    const-string/jumbo v5, "END_OF_INPUT"

    #@15
    if-ne v4, v5, :cond_2

    #@17
    .line 369
    :cond_0
    if-eqz p3, :cond_3

    #@19
    const-string/jumbo v4, "END_OF_INPUT"

    #@1c
    :goto_0
    iput-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@1e
    .line 374
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v3

    #@22
    .line 381
    .local v3, "result":Ljava/nio/charset/CoderResult;
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@24
    if-ne v3, v4, :cond_5

    #@26
    .line 382
    if-eqz p3, :cond_4

    #@28
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 383
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    #@35
    move-result-object v3

    #@36
    .line 393
    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_6

    #@3c
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@3e
    .line 394
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@40
    if-ne v0, v4, :cond_7

    #@42
    .line 395
    return-object v3

    #@43
    .line 366
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    #@46
    move-result-object v4

    #@47
    throw v4

    #@48
    .line 369
    :cond_3
    const-string/jumbo v4, "ONGOING"

    #@4b
    goto :goto_0

    #@4c
    .line 377
    :catch_0
    move-exception v2

    #@4d
    .line 378
    .local v2, "ex":Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    #@4f
    invoke-direct {v4, v2}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@52
    throw v4

    #@53
    .line 375
    .end local v2    # "ex":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v1

    #@54
    .line 376
    .local v1, "ex":Ljava/nio/BufferOverflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    #@56
    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    #@59
    throw v4

    #@5a
    .line 385
    .end local v1    # "ex":Ljava/nio/BufferOverflowException;
    .restart local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_4
    return-object v3

    #@5b
    .line 387
    :cond_5
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@5d
    if-ne v3, v4, :cond_1

    #@5f
    .line 388
    return-object v3

    #@60
    .line 393
    :cond_6
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@62
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_2

    #@63
    .line 396
    :cond_7
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@65
    if-ne v0, v4, :cond_9

    #@67
    .line 397
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6a
    move-result v4

    #@6b
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@6d
    array-length v5, v5

    #@6e
    if-ge v4, v5, :cond_8

    #@70
    .line 398
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@72
    return-object v4

    #@73
    .line 400
    :cond_8
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@75
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@78
    .line 402
    :cond_9
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@7b
    move-result v4

    #@7c
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    #@7f
    move-result v5

    #@80
    add-int/2addr v4, v5

    #@81
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@84
    goto :goto_1
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 476
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "FLUSHED"

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "END_OF_INPUT"

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 477
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    #@11
    move-result-object v1

    #@12
    throw v1

    #@13
    .line 479
    :cond_0
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@15
    const-string/jumbo v2, "FLUSHED"

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    .line 480
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@1c
    return-object v1

    #@1d
    .line 482
    :cond_1
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@20
    move-result-object v0

    #@21
    .line 483
    .local v0, "result":Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@23
    if-ne v0, v1, :cond_2

    #@25
    .line 484
    const-string/jumbo v1, "FLUSHED"

    #@28
    iput-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@2a
    .line 486
    :cond_2
    return-object v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 500
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2
    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 511
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 523
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    #@0
    .prologue
    .line 534
    return-void
.end method

.method protected implReset()V
    .locals 0

    #@0
    .prologue
    .line 542
    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 6
    .param p1, "replacement"    # [B

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 552
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 553
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    #@7
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@d
    .line 554
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@f
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@11
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@14
    .line 555
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@16
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@18
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@1b
    .line 557
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v0

    #@1f
    .line 558
    .local v0, "in":Ljava/nio/ByteBuffer;
    array-length v4, p1

    #@20
    int-to-float v4, v4

    #@21
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@23
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    #@26
    move-result v5

    #@27
    mul-float/2addr v4, v5

    #@28
    float-to-int v4, v4

    #@29
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@2c
    move-result-object v1

    #@2d
    .line 559
    .local v1, "out":Ljava/nio/CharBuffer;
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@2f
    invoke-virtual {v4, v0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@32
    move-result-object v2

    #@33
    .line 560
    .local v2, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    const/4 v3, 0x0

    #@3a
    :cond_1
    return v3
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    #@0
    .prologue
    .line 576
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    #@2
    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 593
    if-nez p1, :cond_0

    #@2
    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "newAction == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 596
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 597
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 598
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    #@0
    .prologue
    .line 615
    if-nez p1, :cond_0

    #@2
    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "newAction == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 618
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 619
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    #@10
    .line 620
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3
    .param p1, "replacement"    # [B

    #@0
    .prologue
    .line 649
    if-nez p1, :cond_0

    #@2
    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "replacement == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 652
    :cond_0
    array-length v0, p1

    #@c
    if-nez v0, :cond_1

    #@e
    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "replacement.length == 0"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 655
    :cond_1
    array-length v0, p1

    #@18
    int-to-float v0, v0

    #@19
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@1c
    move-result v1

    #@1d
    cmpl-float v0, v0, v1

    #@1f
    if-lez v0, :cond_2

    #@21
    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "replacement.length > maxBytesPerChar: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 657
    array-length v2, p1

    #@30
    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 657
    const-string/jumbo v2, " > "

    #@37
    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 657
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@3e
    move-result v2

    #@3f
    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 659
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_3

    #@51
    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "Bad replacement: "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0

    #@6f
    .line 663
    :cond_3
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@71
    .line 664
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@73
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    #@76
    .line 665
    return-object p0
.end method

.method public final replacement()[B
    .locals 1

    #@0
    .prologue
    .line 627
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    #@2
    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    #@0
    .prologue
    .line 674
    const-string/jumbo v0, "RESET"

    #@3
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    #@5
    .line 675
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    #@8
    .line 676
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    #@2
    return-object v0
.end method

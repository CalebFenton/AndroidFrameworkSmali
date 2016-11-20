.class public abstract Llibcore/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# static fields
.field private static final INVALID_INPUT_CHARACTER:C = '\ufffd'


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V
    .locals 11
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "convertPlus"    # Z
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "throwOnFailure"    # Z

    #@0
    .prologue
    .line 289
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@3
    move-result-object v8

    #@4
    .line 290
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 289
    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v8

    #@a
    .line 291
    const-string/jumbo v9, "\ufffd"

    #@d
    .line 289
    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    #@10
    move-result-object v8

    #@11
    .line 292
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@13
    .line 289
    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@16
    move-result-object v2

    #@17
    .line 295
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v8

    #@1b
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v0

    #@1f
    .line 296
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    #@20
    .line 297
    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@23
    move-result v8

    #@24
    if-ge v5, v8, :cond_5

    #@26
    .line 298
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v1

    #@2a
    .line 299
    .local v1, "c":C
    add-int/lit8 v5, v5, 0x1

    #@2c
    .line 300
    sparse-switch v1, :sswitch_data_0

    #@2f
    .line 341
    invoke-static {p0, v2, v0, p4}, Llibcore/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    #@32
    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    goto :goto_0

    #@36
    .line 302
    :sswitch_0
    invoke-static {p0, v2, v0, p4}, Llibcore/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    #@39
    .line 304
    if-eqz p2, :cond_0

    #@3b
    const/16 v8, 0x20

    #@3d
    :goto_1
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0

    #@41
    :cond_0
    const/16 v8, 0x2b

    #@43
    goto :goto_1

    #@44
    .line 308
    :sswitch_1
    const/4 v4, 0x0

    #@45
    .line 309
    .local v4, "hexValue":B
    const/4 v6, 0x0

    #@46
    .end local v4    # "hexValue":B
    .local v6, "j":I
    :goto_2
    const/4 v8, 0x2

    #@47
    if-ge v6, v8, :cond_3

    #@49
    .line 311
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4c
    move-result v8

    #@4d
    const/4 v9, 0x0

    #@4e
    invoke-static {p1, v5, v8, v9}, Llibcore/net/UriCodec;->getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result v1

    #@52
    .line 323
    add-int/lit8 v5, v5, 0x1

    #@54
    .line 324
    invoke-static {v1}, Llibcore/net/UriCodec;->hexCharToValue(C)I

    #@57
    move-result v7

    #@58
    .line 325
    .local v7, "newDigit":I
    if-gez v7, :cond_4

    #@5a
    .line 326
    if-eqz p4, :cond_2

    #@5c
    .line 327
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@5e
    .line 328
    add-int/lit8 v9, v5, -0x1

    #@60
    const/4 v10, 0x0

    #@61
    invoke-static {p1, v10, v1, v9}, Llibcore/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    #@64
    move-result-object v9

    #@65
    .line 327
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@68
    throw v8

    #@69
    .line 312
    .end local v7    # "newDigit":I
    :catch_0
    move-exception v3

    #@6a
    .line 314
    .local v3, "e":Ljava/net/URISyntaxException;
    if-eqz p4, :cond_1

    #@6c
    .line 315
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6e
    invoke-direct {v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@71
    throw v8

    #@72
    .line 317
    :cond_1
    invoke-static {p0, v2, v0, p4}, Llibcore/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    #@75
    .line 319
    const v8, 0xfffd

    #@78
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    .line 320
    return-void

    #@7c
    .line 330
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .restart local v7    # "newDigit":I
    :cond_2
    invoke-static {p0, v2, v0, p4}, Llibcore/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    #@7f
    .line 332
    const v8, 0xfffd

    #@82
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@85
    .line 338
    .end local v7    # "newDigit":I
    :cond_3
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@88
    goto :goto_0

    #@89
    .line 336
    .restart local v7    # "newDigit":I
    :cond_4
    mul-int/lit8 v8, v4, 0x10

    #@8b
    add-int/2addr v8, v7

    #@8c
    int-to-byte v4, v8

    #@8d
    .line 309
    .local v4, "hexValue":B
    add-int/lit8 v6, v6, 0x1

    #@8f
    goto :goto_2

    #@90
    .line 345
    .end local v1    # "c":C
    .end local v4    # "hexValue":B
    .end local v6    # "j":I
    .end local v7    # "newDigit":I
    :cond_5
    invoke-static {p0, v2, v0, p4}, Llibcore/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    #@93
    .line 288
    return-void

    #@94
    .line 300
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "partiallyEncoded"    # Z

    #@0
    .prologue
    const/16 v7, 0x25

    #@2
    const/16 v6, 0x20

    #@4
    .line 170
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@7
    move-result-object v4

    #@8
    .line 171
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@a
    .line 170
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@d
    move-result-object v4

    #@e
    .line 172
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@10
    .line 170
    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@13
    move-result-object v2

    #@14
    .line 173
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@17
    move-result v4

    #@18
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@1b
    move-result-object v1

    #@1c
    .line 174
    .local v1, "cBuffer":Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@20
    move-result v4

    #@21
    if-ge v3, v4, :cond_3

    #@23
    .line 175
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v0

    #@27
    .line 176
    .local v0, "c":C
    if-ne v0, v7, :cond_0

    #@29
    if-eqz p4, :cond_0

    #@2b
    .line 178
    invoke-static {p1, v2, v1}, Llibcore/net/UriCodec;->flushEncodingCharBuffer(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;)V

    #@2e
    .line 179
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 174
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 183
    :cond_0
    if-ne v0, v6, :cond_1

    #@36
    invoke-virtual {p0, v6}, Llibcore/net/UriCodec;->isRetained(C)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 184
    invoke-static {p1, v2, v1}, Llibcore/net/UriCodec;->flushEncodingCharBuffer(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;)V

    #@3f
    .line 185
    const/16 v4, 0x2b

    #@41
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    goto :goto_1

    #@45
    .line 189
    :cond_1
    invoke-direct {p0, v0}, Llibcore/net/UriCodec;->isWhitelistedOrRetained(C)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_2

    #@4b
    .line 190
    invoke-static {p1, v2, v1}, Llibcore/net/UriCodec;->flushEncodingCharBuffer(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;)V

    #@4e
    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    goto :goto_1

    #@52
    .line 196
    :cond_2
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@55
    goto :goto_1

    #@56
    .line 198
    .end local v0    # "c":C
    :cond_3
    invoke-static {p1, v2, v1}, Llibcore/net/UriCodec;->flushEncodingCharBuffer(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;)V

    #@59
    .line 169
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    .line 376
    invoke-static {p0, v1, v0, v2}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "convertPlus"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "throwOnFailure"    # Z

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 274
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Llibcore/net/UriCodec;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V

    #@c
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private static flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "throwOnFailure"    # Z

    #@0
    .prologue
    .line 353
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 354
    return-void

    #@7
    .line 356
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@a
    .line 358
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 367
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@14
    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 352
    :goto_0
    return-void

    #@1c
    .line 359
    :catch_0
    move-exception v0

    #@1d
    .line 360
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    if-eqz p3, :cond_1

    #@1f
    .line 361
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 365
    .end local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v1

    #@26
    .line 367
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@29
    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 365
    throw v1

    #@31
    .line 363
    .restart local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    :cond_1
    const v1, 0xfffd

    #@34
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    .line 367
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@3a
    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    #@3d
    move-result v1

    #@3e
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@41
    goto :goto_0
.end method

.method private static flushEncodingCharBuffer(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;)V
    .locals 7
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "cBuffer"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 205
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 206
    return-void

    #@8
    .line 209
    :cond_0
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@b
    .line 211
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@12
    move-result v4

    #@13
    float-to-double v4, v4

    #@14
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@17
    move-result-wide v4

    #@18
    double-to-int v4, v4

    #@19
    mul-int/2addr v3, v4

    #@1a
    .line 210
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v1

    #@1e
    .line 212
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 213
    const/4 v3, 0x1

    #@22
    invoke-virtual {p1, p2, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@25
    move-result-object v2

    #@26
    .line 216
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@28
    if-eq v2, v3, :cond_1

    #@2a
    .line 217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Error encoding, unexpected result ["

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 219
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 220
    const-string/jumbo v5, "] using encoder for ["

    #@43
    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 221
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 222
    const-string/jumbo v5, "]"

    #@56
    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 217
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 224
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@65
    move-result v3

    #@66
    if-eqz v3, :cond_2

    #@68
    .line 225
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6a
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v5, "Encoder for ["

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    const-string/jumbo v5, "] failed with underflow with "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    .line 227
    const-string/jumbo v5, "remaining input ["

    #@8c
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 227
    const-string/jumbo v5, "]"

    #@97
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    .line 225
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v3

    #@a3
    .line 230
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@a6
    .line 231
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@a8
    if-eq v2, v3, :cond_3

    #@aa
    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@ac
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v5, "Error encoding, unexpected result ["

    #@b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    .line 234
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v4

    #@c0
    .line 235
    const-string/jumbo v5, "] flushing encoder for ["

    #@c3
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    .line 236
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    .line 237
    const-string/jumbo v5, "]"

    #@d6
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v4

    #@de
    .line 232
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e1
    throw v3

    #@e2
    .line 239
    :cond_3
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@e5
    .line 241
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@e8
    .line 243
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_4

    #@ee
    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@f1
    move-result v0

    #@f2
    .line 245
    .local v0, "b":B
    const/16 v3, 0x25

    #@f4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f7
    .line 246
    and-int/lit16 v3, v0, 0xf0

    #@f9
    ushr-int/lit8 v3, v3, 0x4

    #@fb
    invoke-static {v3}, Llibcore/net/UriCodec;->intToHexDigit(I)C

    #@fe
    move-result v3

    #@ff
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@102
    .line 247
    and-int/lit8 v3, v0, 0xf

    #@104
    invoke-static {v3}, Llibcore/net/UriCodec;->intToHexDigit(I)C

    #@107
    move-result v3

    #@108
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10b
    goto :goto_0

    #@10c
    .line 251
    .end local v0    # "b":B
    :cond_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@10f
    .line 252
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->capacity()I

    #@112
    move-result v3

    #@113
    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@116
    .line 204
    return-void
.end method

.method private static getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "end"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    if-lt p1, p2, :cond_1

    #@2
    .line 114
    if-nez p3, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    .line 115
    .local v0, "nameString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/net/URISyntaxException;

    #@9
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unexpected end of string"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 115
    invoke-direct {v1, p0, v2, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@20
    throw v1

    #@21
    .line 114
    .end local v0    # "nameString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, " in ["

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "]"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .restart local v0    # "nameString":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 118
    .end local v0    # "nameString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v1

    #@41
    return v1
.end method

.method private static hexCharToValue(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 92
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 93
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 95
    :cond_0
    const/16 v0, 0x61

    #@d
    if-gt v0, p0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 96
    add-int/lit8 v0, p0, 0xa

    #@15
    add-int/lit8 v0, v0, -0x61

    #@17
    return v0

    #@18
    .line 98
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-gt v0, p0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 99
    add-int/lit8 v0, p0, 0xa

    #@22
    add-int/lit8 v0, v0, -0x41

    #@24
    return v0

    #@25
    .line 101
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method private static intToHexDigit(I)C
    .locals 1
    .param p0, "b"    # I

    #@0
    .prologue
    .line 256
    const/16 v0, 0xa

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 257
    add-int/lit8 v0, p0, 0x30

    #@6
    int-to-char v0, v0

    #@7
    return v0

    #@8
    .line 259
    :cond_0
    add-int/lit8 v0, p0, 0x41

    #@a
    add-int/lit8 v0, v0, -0xa

    #@c
    int-to-char v0, v0

    #@d
    return v0
.end method

.method private static isWhitelisted(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 48
    const/16 v2, 0x61

    #@4
    if-gt v2, p0, :cond_1

    #@6
    const/16 v2, 0x7a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x41

    #@d
    if-gt v2, p0, :cond_2

    #@f
    const/16 v2, 0x5a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    const/16 v2, 0x30

    #@15
    if-gt v2, p0, :cond_3

    #@17
    const/16 v2, 0x39

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method private isWhitelistedOrRetained(C)Z
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 52
    invoke-static {p1}, Llibcore/net/UriCodec;->isWhitelisted(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Llibcore/net/UriCodec;->isRetained(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private static unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unexpected"    # C
    .param p3, "index"    # I

    #@0
    .prologue
    .line 106
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    .line 107
    .local v0, "nameString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/net/URISyntaxException;

    #@7
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unexpected character"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ": "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 107
    invoke-direct {v1, p0, v2, p3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@29
    return-object v1

    #@2a
    .line 106
    .end local v0    # "nameString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, " in ["

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "]"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .restart local v0    # "nameString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "legal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 128
    .local v0, "c":C
    invoke-static {v0}, Llibcore/net/UriCodec;->isWhitelisted(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v2

    #@15
    if-gez v2, :cond_0

    #@17
    .line 129
    const/4 v2, 0x0

    #@18
    invoke-static {p0, v2, v0, v1}, Llibcore/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    #@1b
    move-result-object v2

    #@1c
    throw v2

    #@1d
    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 125
    .end local v0    # "c":C
    :cond_1
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@6
    .line 150
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@6
    .line 164
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, v0, p1, p2, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@d
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    move v1, p2

    #@1
    .local v1, "i":I
    move v2, v1

    #@2
    .line 68
    .end local v1    # "i":I
    .local v2, "i":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_4

    #@4
    .line 69
    add-int/lit8 v1, v2, 0x1

    #@6
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 70
    .local v0, "c":C
    invoke-direct {p0, v0}, Llibcore/net/UriCodec;->isWhitelistedOrRetained(C)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    move v2, v1

    #@11
    .line 71
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@12
    .line 74
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const/16 v4, 0x25

    #@14
    if-eq v0, v4, :cond_2

    #@16
    .line 75
    add-int/lit8 v4, v1, -0x1

    #@18
    invoke-static {p1, p4, v0, v4}, Llibcore/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    #@1b
    move-result-object v4

    #@1c
    throw v4

    #@1d
    .line 78
    :cond_2
    const/4 v3, 0x0

    #@1e
    .local v3, "j":I
    move v2, v1

    #@1f
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_1
    const/4 v4, 0x2

    #@20
    if-ge v3, v4, :cond_0

    #@22
    .line 79
    add-int/lit8 v1, v2, 0x1

    #@24
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-static {p1, v2, p3, p4}, Llibcore/net/UriCodec;->getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C

    #@27
    move-result v0

    #@28
    .line 80
    invoke-static {v0}, Llibcore/net/UriCodec;->hexCharToValue(C)I

    #@2b
    move-result v4

    #@2c
    if-gez v4, :cond_3

    #@2e
    .line 81
    add-int/lit8 v4, v1, -0x1

    #@30
    invoke-static {p1, p4, v0, v4}, Llibcore/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    #@33
    move-result-object v4

    #@34
    throw v4

    #@35
    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@37
    move v2, v1

    #@38
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@39
    .line 85
    .end local v0    # "c":C
    .end local v3    # "j":I
    :cond_4
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    return-object v4
.end method

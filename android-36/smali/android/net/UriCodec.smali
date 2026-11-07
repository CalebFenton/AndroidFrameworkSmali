.class public final Landroid/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# static fields
.field private static final blacklist INVALID_INPUT_CHARACTER:C = '\ufffd'


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V
    .registers 15
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "convertPlus"    # Z
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "throwOnFailure"    # Z

    .line 94
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "\ufffd"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 100
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_90

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    .local v3, "c":C
    add-int/lit8 v2, v2, 0x1

    .line 105
    sparse-switch v3, :sswitch_data_94

    .line 146
    invoke-static {p0, v0, v1, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8f

    .line 107
    :sswitch_36
    invoke-static {p0, v0, v1, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 109
    if-eqz p2, :cond_3e

    const/16 v4, 0x20

    goto :goto_40

    :cond_3e
    const/16 v4, 0x2b

    :goto_40
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    goto :goto_8f

    .line 113
    :sswitch_44
    const/4 v4, 0x0

    .line 114
    .local v4, "hexValue":B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_46
    const/4 v6, 0x2

    if-ge v5, v6, :cond_8b

    .line 116
    const v6, 0xfffd

    :try_start_4c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p1, v2, v7, v8}, Landroid/net/UriCodec;->getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C

    move-result v7
    :try_end_55
    .catch Ljava/net/URISyntaxException; {:try_start_4c .. :try_end_55} :catch_7b

    move v3, v7

    .line 127
    nop

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    invoke-static {v3}, Landroid/net/UriCodec;->hexCharToValue(C)I

    move-result v7

    .line 130
    .local v7, "newDigit":I
    if-gez v7, :cond_74

    .line 131
    if-nez p4, :cond_68

    .line 135
    invoke-static {p0, v0, v1, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 137
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    goto :goto_8b

    .line 132
    :cond_68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v2, -0x1

    .line 133
    invoke-static {p1, v8, v3, v9}, Landroid/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 141
    :cond_74
    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v7

    int-to-byte v4, v6

    .line 114
    .end local v7    # "newDigit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 117
    :catch_7b
    move-exception v7

    .line 119
    .local v7, "e":Ljava/net/URISyntaxException;
    if-nez p4, :cond_85

    .line 122
    invoke-static {p0, v0, v1, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 124
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    return-void

    .line 120
    :cond_85
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 143
    .end local v5    # "j":I
    .end local v7    # "e":Ljava/net/URISyntaxException;
    :cond_8b
    :goto_8b
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    nop

    .line 149
    .end local v3    # "c":C
    .end local v4    # "hexValue":B
    :goto_8f
    goto :goto_20

    .line 150
    :cond_90
    invoke-static {p0, v0, v1, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 151
    return-void

    :sswitch_data_94
    .sparse-switch
        0x25 -> :sswitch_44
        0x2b -> :sswitch_36
    .end sparse-switch
.end method

.method public static blacklist decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "convertPlus"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "throwOnFailure"    # Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/net/UriCodec;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "throwOnFailure"    # Z

    .line 158
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_7

    .line 159
    return-void

    .line 161
    :cond_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    :try_start_a
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_a .. :try_end_11} :catch_1f
    .catchall {:try_start_a .. :try_end_11} :catchall_1d

    .line 172
    nop

    :goto_12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    goto :goto_2a

    .line 172
    :catchall_1d
    move-exception v0

    goto :goto_31

    .line 164
    :catch_1f
    move-exception v0

    .line 165
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    if-nez p3, :cond_2b

    .line 168
    const v1, 0xfffd

    :try_start_25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    nop

    .end local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    goto :goto_12

    .line 175
    :goto_2a
    return-void

    .line 166
    .restart local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local p2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p3    # "throwOnFailure":Z
    throw v1
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_1d

    .line 172
    .end local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    .restart local p0    # "builder":Ljava/lang/StringBuilder;
    .restart local p1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local p2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p3    # "throwOnFailure":Z
    :goto_31
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    throw v0
.end method

.method private static blacklist getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C
    .registers 8
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "end"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 60
    if-lt p1, p2, :cond_39

    .line 61
    if-nez p3, :cond_7

    const-string v0, ""

    goto :goto_20

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "nameString":Ljava/lang/String;
    :goto_20
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 65
    .end local v0    # "nameString":Ljava/lang/String;
    :cond_39
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private static blacklist hexCharToValue(C)I
    .registers 3
    .param p0, "c"    # C

    .line 39
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 40
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 42
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_17

    const/16 v1, 0x66

    if-gt p0, v1, :cond_17

    .line 43
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 45
    :cond_17
    const/16 v0, 0x41

    if-gt v0, p0, :cond_23

    const/16 v1, 0x46

    if-gt p0, v1, :cond_23

    .line 46
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 48
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;
    .registers 8
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unexpected"    # C
    .param p3, "index"    # I

    .line 53
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "nameString":Ljava/lang/String;
    :goto_1e
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

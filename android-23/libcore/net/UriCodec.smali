.class public abstract Llibcore/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "isPartiallyEncoded"    # Z

    #@0
    .prologue
    const/16 v6, 0x25

    #@2
    const/4 v5, -0x1

    #@3
    .line 96
    if-nez p2, :cond_0

    #@5
    .line 97
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v4, "s == null"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 100
    :cond_0
    const/4 v1, -0x1

    #@f
    .line 101
    .local v1, "escapeStart":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    if-ge v2, v3, :cond_a

    #@16
    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    .line 103
    .local v0, "c":C
    const/16 v3, 0x61

    #@1c
    if-lt v0, v3, :cond_4

    #@1e
    const/16 v3, 0x7a

    #@20
    if-gt v0, v3, :cond_4

    #@22
    .line 108
    :cond_1
    if-eq v1, v5, :cond_2

    #@24
    .line 109
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    #@2b
    .line 110
    const/4 v1, -0x1

    #@2c
    .line 112
    :cond_2
    if-ne v0, v6, :cond_8

    #@2e
    if-eqz p4, :cond_8

    #@30
    .line 114
    add-int/lit8 v3, v2, 0x3

    #@32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@35
    move-result v4

    #@36
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@39
    move-result v3

    #@3a
    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3d
    .line 115
    add-int/lit8 v2, v2, 0x2

    #@3f
    .line 101
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 104
    :cond_4
    const/16 v3, 0x41

    #@44
    if-lt v0, v3, :cond_5

    #@46
    const/16 v3, 0x5a

    #@48
    if-le v0, v3, :cond_1

    #@4a
    .line 105
    :cond_5
    const/16 v3, 0x30

    #@4c
    if-lt v0, v3, :cond_6

    #@4e
    const/16 v3, 0x39

    #@50
    if-le v0, v3, :cond_1

    #@52
    .line 106
    :cond_6
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    #@55
    move-result v3

    #@56
    .line 103
    if-nez v3, :cond_1

    #@58
    .line 107
    if-ne v0, v6, :cond_7

    #@5a
    .line 103
    if-nez p4, :cond_1

    #@5c
    .line 121
    :cond_7
    if-ne v1, v5, :cond_3

    #@5e
    .line 122
    move v1, v2

    #@5f
    goto :goto_1

    #@60
    .line 116
    :cond_8
    const/16 v3, 0x20

    #@62
    if-ne v0, v3, :cond_9

    #@64
    .line 117
    const/16 v3, 0x2b

    #@66
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    goto :goto_1

    #@6a
    .line 119
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    goto :goto_1

    #@6e
    .line 125
    .end local v0    # "c":C
    :cond_a
    if-eq v1, v5, :cond_b

    #@70
    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@73
    move-result v3

    #@74
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    #@7b
    .line 95
    :cond_b
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 216
    const/16 v0, 0x25

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 217
    const/4 v0, 0x1

    #@6
    invoke-static {p1, v0}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 215
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_0

    #@8
    aget-byte v0, v2, v1

    #@a
    .line 211
    .local v0, "b":B
    invoke-static {p0, v0}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    #@d
    .line 210
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 209
    .end local v0    # "b":B
    :cond_0
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 206
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-static {p0, v1, v0, v2}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "convertPlus"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "throwOnFailure"    # Z

    #@0
    .prologue
    const/16 v11, 0x2b

    #@2
    const/16 v10, 0x25

    #@4
    const/4 v9, -0x1

    #@5
    .line 153
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v7

    #@9
    if-ne v7, v9, :cond_1

    #@b
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v7

    #@11
    if-ne v7, v9, :cond_1

    #@13
    .line 154
    :cond_0
    return-object p0

    #@14
    .line 157
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@19
    move-result v7

    #@1a
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1d
    .line 158
    .local v6, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@1f
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@22
    .line 159
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@23
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@26
    move-result v7

    #@27
    if-ge v3, v7, :cond_8

    #@29
    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v0

    #@2d
    .line 161
    .local v0, "c":C
    if-ne v0, v10, :cond_6

    #@2f
    .line 164
    :cond_2
    add-int/lit8 v7, v3, 0x2

    #@31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@34
    move-result v8

    #@35
    if-ge v7, v8, :cond_4

    #@37
    .line 165
    add-int/lit8 v7, v3, 0x1

    #@39
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v7

    #@3d
    invoke-static {v7}, Llibcore/net/UriCodec;->hexToInt(C)I

    #@40
    move-result v1

    #@41
    .local v1, "d1":I
    if-eq v1, v9, :cond_4

    #@43
    .line 166
    add-int/lit8 v7, v3, 0x2

    #@45
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v7

    #@49
    invoke-static {v7}, Llibcore/net/UriCodec;->hexToInt(C)I

    #@4c
    move-result v2

    #@4d
    .local v2, "d2":I
    if-eq v2, v9, :cond_4

    #@4f
    .line 167
    shl-int/lit8 v7, v1, 0x4

    #@51
    add-int/2addr v7, v2

    #@52
    int-to-byte v7, v7

    #@53
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@56
    .line 174
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_1
    add-int/lit8 v3, v3, 0x3

    #@58
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5b
    move-result v7

    #@5c
    if-ge v3, v7, :cond_3

    #@5e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v7

    #@62
    if-eq v7, v10, :cond_2

    #@64
    .line 176
    :cond_3
    new-instance v7, Ljava/lang/String;

    #@66
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@69
    move-result-object v8

    #@6a
    invoke-direct {v7, v8, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 177
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@73
    goto :goto_0

    #@74
    .line 168
    :cond_4
    if-eqz p3, :cond_5

    #@76
    .line 169
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@78
    new-instance v8, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v9, "Invalid % sequence at "

    #@80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    const-string/jumbo v9, ": "

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v8

    #@97
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v7

    #@9b
    .line 171
    :cond_5
    const-string/jumbo v7, "\ufffd"

    #@9e
    invoke-virtual {v7, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@a1
    move-result-object v5

    #@a2
    .line 172
    .local v5, "replacement":[B
    array-length v7, v5

    #@a3
    const/4 v8, 0x0

    #@a4
    invoke-virtual {v4, v5, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@a7
    goto :goto_1

    #@a8
    .line 179
    .end local v5    # "replacement":[B
    :cond_6
    if-eqz p1, :cond_7

    #@aa
    if-ne v0, v11, :cond_7

    #@ac
    .line 180
    const/16 v0, 0x20

    #@ae
    .line 182
    .end local v0    # "c":C
    :cond_7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b1
    .line 183
    add-int/lit8 v3, v3, 0x1

    #@b3
    goto/16 :goto_0

    #@b5
    .line 186
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v7

    #@b9
    return-object v7
.end method

.method private static hexToInt(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 194
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 195
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 196
    :cond_0
    const/16 v0, 0x61

    #@d
    if-gt v0, p0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 197
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 198
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-gt v0, p0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 199
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 201
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "legal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_4

    #@7
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 77
    .local v0, "ch":C
    const/16 v2, 0x61

    #@d
    if-lt v0, v2, :cond_0

    #@f
    const/16 v2, 0x7a

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 78
    :cond_0
    const/16 v2, 0x41

    #@15
    if-lt v0, v2, :cond_1

    #@17
    const/16 v2, 0x5a

    #@19
    if-le v0, v2, :cond_3

    #@1b
    .line 79
    :cond_1
    const/16 v2, 0x30

    #@1d
    if-lt v0, v2, :cond_2

    #@1f
    const/16 v2, 0x39

    #@21
    if-le v0, v2, :cond_3

    #@23
    .line 80
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v2

    #@27
    const/4 v3, -0x1

    #@28
    if-gt v2, v3, :cond_3

    #@2a
    .line 81
    new-instance v2, Ljava/net/URISyntaxException;

    #@2c
    const-string/jumbo v3, "Illegal character"

    #@2f
    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@32
    throw v2

    #@33
    .line 75
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 74
    .end local v0    # "ch":C
    :cond_4
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@6
    .line 137
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@6
    .line 141
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, 0x10

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v0, p1, p2, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    #@f
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 7
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
    const/4 v5, -0x1

    #@1
    .line 44
    move v3, p2

    #@2
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_8

    #@4
    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    .line 46
    .local v0, "ch":C
    const/16 v4, 0x61

    #@a
    if-lt v0, v4, :cond_1

    #@c
    const/16 v4, 0x7a

    #@e
    if-gt v0, v4, :cond_1

    #@10
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 47
    :cond_1
    const/16 v4, 0x41

    #@15
    if-lt v0, v4, :cond_2

    #@17
    const/16 v4, 0x5a

    #@19
    if-le v0, v4, :cond_0

    #@1b
    .line 48
    :cond_2
    const/16 v4, 0x30

    #@1d
    if-lt v0, v4, :cond_3

    #@1f
    const/16 v4, 0x39

    #@21
    if-le v0, v4, :cond_0

    #@23
    .line 49
    :cond_3
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    #@26
    move-result v4

    #@27
    .line 46
    if-nez v4, :cond_0

    #@29
    .line 51
    const/16 v4, 0x25

    #@2b
    if-ne v0, v4, :cond_7

    #@2d
    .line 52
    add-int/lit8 v4, v3, 0x2

    #@2f
    if-lt v4, p3, :cond_4

    #@31
    .line 53
    new-instance v4, Ljava/net/URISyntaxException;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Incomplete % sequence in "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4a
    throw v4

    #@4b
    .line 55
    :cond_4
    add-int/lit8 v4, v3, 0x1

    #@4d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v4

    #@51
    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    #@54
    move-result v1

    #@55
    .line 56
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    #@57
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v4

    #@5b
    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    #@5e
    move-result v2

    #@5f
    .line 57
    .local v2, "d2":I
    if-eq v1, v5, :cond_5

    #@61
    if-ne v2, v5, :cond_6

    #@63
    .line 58
    :cond_5
    new-instance v4, Ljava/net/URISyntaxException;

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "Invalid % sequence: "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 59
    add-int/lit8 v6, v3, 0x3

    #@73
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 59
    const-string/jumbo v6, " in "

    #@7e
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@8d
    throw v4

    #@8e
    .line 61
    :cond_6
    add-int/lit8 v3, v3, 0x3

    #@90
    goto/16 :goto_0

    #@92
    .line 63
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :cond_7
    new-instance v4, Ljava/net/URISyntaxException;

    #@94
    new-instance v5, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v6, "Illegal character in "

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@ab
    throw v4

    #@ac
    .line 66
    .end local v0    # "ch":C
    :cond_8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    return-object v4
.end method

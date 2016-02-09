.class public Lorg/apache/commons/codec/net/URLCodec;
.super Ljava/lang/Object;
.source "URLCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static ESCAPE_CHAR:B

.field protected static final WWW_FORM_URL:Ljava/util/BitSet;


# instance fields
.field protected charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 62
    const/16 v1, 0x25

    #@2
    sput-byte v1, Lorg/apache/commons/codec/net/URLCodec;->ESCAPE_CHAR:B

    #@4
    .line 66
    new-instance v1, Ljava/util/BitSet;

    #@6
    const/16 v2, 0x100

    #@8
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@b
    sput-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@d
    .line 71
    const/16 v0, 0x61

    #@f
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    #@11
    if-gt v0, v1, :cond_0

    #@13
    .line 72
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@18
    .line 71
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 74
    :cond_0
    const/16 v0, 0x41

    #@1d
    :goto_1
    const/16 v1, 0x5a

    #@1f
    if-gt v0, v1, :cond_1

    #@21
    .line 75
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@26
    .line 74
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1

    #@29
    .line 78
    :cond_1
    const/16 v0, 0x30

    #@2b
    :goto_2
    const/16 v1, 0x39

    #@2d
    if-gt v0, v1, :cond_2

    #@2f
    .line 79
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@31
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@34
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 82
    :cond_2
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@39
    const/16 v2, 0x2d

    #@3b
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3e
    .line 83
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@40
    const/16 v2, 0x5f

    #@42
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@45
    .line 84
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@47
    const/16 v2, 0x2e

    #@49
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@4c
    .line 85
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@4e
    const/16 v2, 0x2a

    #@50
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@53
    .line 87
    sget-object v1, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@55
    const/16 v2, 0x20

    #@57
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@5a
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    #@8
    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    #@8
    .line 105
    iput-object p1, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    #@a
    .line 103
    return-void
.end method

.method public static final decodeUrl([B)[B
    .locals 9
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 162
    if-nez p0, :cond_0

    #@4
    .line 163
    return-object v6

    #@5
    .line 165
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 166
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@c
    if-ge v3, v6, :cond_5

    #@e
    .line 167
    aget-byte v0, p0, v3

    #@10
    .line 168
    .local v0, "b":I
    const/16 v6, 0x2b

    #@12
    if-ne v0, v6, :cond_1

    #@14
    .line 169
    const/16 v6, 0x20

    #@16
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@19
    .line 166
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 170
    :cond_1
    const/16 v6, 0x25

    #@1e
    if-ne v0, v6, :cond_4

    #@20
    .line 172
    add-int/lit8 v3, v3, 0x1

    #@22
    :try_start_0
    aget-byte v6, p0, v3

    #@24
    int-to-char v6, v6

    #@25
    const/16 v7, 0x10

    #@27
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@2a
    move-result v5

    #@2b
    .line 173
    .local v5, "u":I
    add-int/lit8 v3, v3, 0x1

    #@2d
    aget-byte v6, p0, v3

    #@2f
    int-to-char v6, v6

    #@30
    const/16 v7, 0x10

    #@32
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@35
    move-result v4

    #@36
    .line 174
    .local v4, "l":I
    if-eq v5, v8, :cond_2

    #@38
    if-ne v4, v8, :cond_3

    #@3a
    .line 175
    :cond_2
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@3c
    const-string/jumbo v7, "Invalid URL encoding"

    #@3f
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@42
    throw v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 178
    .end local v4    # "l":I
    .end local v5    # "u":I
    :catch_0
    move-exception v2

    #@44
    .line 179
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@46
    const-string/jumbo v7, "Invalid URL encoding"

    #@49
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 177
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "l":I
    .restart local v5    # "u":I
    :cond_3
    shl-int/lit8 v6, v5, 0x4

    #@4f
    add-int/2addr v6, v4

    #@50
    int-to-char v6, v6

    #@51
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@54
    goto :goto_1

    #@55
    .line 182
    .end local v4    # "l":I
    .end local v5    # "u":I
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@58
    goto :goto_1

    #@59
    .line 185
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5c
    move-result-object v6

    #@5d
    return-object v6
.end method

.method public static final encodeUrl(Ljava/util/BitSet;[B)[B
    .locals 7
    .param p0, "urlsafe"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    const/4 v5, 0x0

    #@3
    .line 118
    if-nez p1, :cond_0

    #@5
    .line 119
    return-object v5

    #@6
    .line 121
    :cond_0
    if-nez p0, :cond_1

    #@8
    .line 122
    sget-object p0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@a
    .line 125
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@c
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@f
    .line 126
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    #@10
    .local v4, "i":I
    :goto_0
    array-length v5, p1

    #@11
    if-ge v4, v5, :cond_5

    #@13
    .line 127
    aget-byte v0, p1, v4

    #@15
    .line 128
    .local v0, "b":I
    if-gez v0, :cond_2

    #@17
    .line 129
    add-int/lit16 v0, v0, 0x100

    #@19
    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_4

    #@1f
    .line 132
    const/16 v5, 0x20

    #@21
    if-ne v0, v5, :cond_3

    #@23
    .line 133
    const/16 v0, 0x2b

    #@25
    .line 135
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@28
    .line 126
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 137
    :cond_4
    const/16 v5, 0x25

    #@2d
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@30
    .line 139
    shr-int/lit8 v5, v0, 0x4

    #@32
    and-int/lit8 v5, v5, 0xf

    #@34
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    #@37
    move-result v5

    #@38
    .line 138
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    #@3b
    move-result v2

    #@3c
    .line 141
    .local v2, "hex1":C
    and-int/lit8 v5, v0, 0xf

    #@3e
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    #@41
    move-result v5

    #@42
    .line 140
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    #@45
    move-result v3

    #@46
    .line 142
    .local v3, "hex2":C
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@49
    .line 143
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4c
    goto :goto_1

    #@4d
    .line 146
    .end local v0    # "b":I
    .end local v2    # "hex1":C
    .end local v3    # "hex2":C
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@50
    move-result-object v5

    #@51
    return-object v5
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 336
    if-nez p1, :cond_0

    #@3
    .line 337
    return-object v0

    #@4
    .line 338
    :cond_0
    instance-of v0, p1, [B

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 339
    check-cast p1, [B

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/URLCodec;->decode([B)[B

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 340
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 341
    check-cast p1, Ljava/lang/String;

    #@15
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 343
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Objects of type "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 344
    const-string/jumbo v2, " cannot be URL decoded"

    #@37
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    if-nez p1, :cond_0

    #@3
    .line 292
    return-object v1

    #@4
    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 296
    :catch_0
    move-exception v0

    #@e
    .line 297
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    #@10
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 272
    if-nez p1, :cond_0

    #@3
    .line 273
    return-object v0

    #@4
    .line 275
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@6
    const-string/jumbo v1, "US-ASCII"

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/URLCodec;->decode([B)[B

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@14
    return-object v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-static {p1}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    if-nez p1, :cond_0

    #@3
    .line 313
    return-object v0

    #@4
    .line 314
    :cond_0
    instance-of v0, p1, [B

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 315
    check-cast p1, [B

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode([B)[B

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 316
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 317
    check-cast p1, Ljava/lang/String;

    #@15
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 319
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Objects of type "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 320
    const-string/jumbo v2, " cannot be URL encoded"

    #@37
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    if-nez p1, :cond_0

    #@3
    .line 247
    return-object v1

    #@4
    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 251
    :catch_0
    move-exception v0

    #@e
    .line 252
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    #@10
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    if-nez p1, :cond_0

    #@3
    .line 229
    return-object v0

    #@4
    .line 231
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode([B)[B

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "US-ASCII"

    #@11
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@14
    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 197
    sget-object v0, Lorg/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    #@2
    invoke-static {v0, p1}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    #@2
    return-object v0
.end method

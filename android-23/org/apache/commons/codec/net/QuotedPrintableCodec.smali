.class public Lorg/apache/commons/codec/net/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static ESCAPE_CHAR:B

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static SPACE:B

.field private static TAB:B


# instance fields
.field private charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 73
    new-instance v1, Ljava/util/BitSet;

    #@2
    const/16 v2, 0x100

    #@4
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@7
    sput-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@9
    .line 75
    const/16 v1, 0x3d

    #@b
    sput-byte v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->ESCAPE_CHAR:B

    #@d
    .line 77
    const/16 v1, 0x9

    #@f
    sput-byte v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->TAB:B

    #@11
    .line 79
    const/16 v1, 0x20

    #@13
    sput-byte v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->SPACE:B

    #@15
    .line 83
    const/16 v0, 0x21

    #@17
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3c

    #@19
    if-gt v0, v1, :cond_0

    #@1b
    .line 84
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@20
    .line 83
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 86
    :cond_0
    const/16 v0, 0x3e

    #@25
    :goto_1
    const/16 v1, 0x7e

    #@27
    if-gt v0, v1, :cond_1

    #@29
    .line 87
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@2b
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@2e
    .line 86
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 89
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@33
    sget-byte v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->TAB:B

    #@35
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@38
    .line 90
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@3a
    sget-byte v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->SPACE:B

    #@3c
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3f
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    #@8
    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    #@8
    .line 108
    iput-object p1, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    #@a
    .line 106
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
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
    .line 179
    if-nez p0, :cond_0

    #@4
    .line 180
    return-object v6

    #@5
    .line 182
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 183
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@c
    if-ge v3, v6, :cond_4

    #@e
    .line 184
    aget-byte v0, p0, v3

    #@10
    .line 185
    .local v0, "b":I
    sget-byte v6, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->ESCAPE_CHAR:B

    #@12
    if-ne v0, v6, :cond_3

    #@14
    .line 187
    add-int/lit8 v3, v3, 0x1

    #@16
    :try_start_0
    aget-byte v6, p0, v3

    #@18
    int-to-char v6, v6

    #@19
    const/16 v7, 0x10

    #@1b
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@1e
    move-result v5

    #@1f
    .line 188
    .local v5, "u":I
    add-int/lit8 v3, v3, 0x1

    #@21
    aget-byte v6, p0, v3

    #@23
    int-to-char v6, v6

    #@24
    const/16 v7, 0x10

    #@26
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@29
    move-result v4

    #@2a
    .line 189
    .local v4, "l":I
    if-eq v5, v8, :cond_1

    #@2c
    if-ne v4, v8, :cond_2

    #@2e
    .line 190
    :cond_1
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@30
    const-string/jumbo v7, "Invalid quoted-printable encoding"

    #@33
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 193
    .end local v4    # "l":I
    .end local v5    # "u":I
    :catch_0
    move-exception v2

    #@38
    .line 194
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@3a
    const-string/jumbo v7, "Invalid quoted-printable encoding"

    #@3d
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@40
    throw v6

    #@41
    .line 192
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "l":I
    .restart local v5    # "u":I
    :cond_2
    shl-int/lit8 v6, v5, 0x4

    #@43
    add-int/2addr v6, v4

    #@44
    int-to-char v6, v6

    #@45
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    .line 183
    .end local v4    # "l":I
    .end local v5    # "u":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 197
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4e
    goto :goto_1

    #@4f
    .line 200
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@52
    move-result-object v6

    #@53
    return-object v6
.end method

.method private static final encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p0, "b"    # I
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 120
    sget-byte v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->ESCAPE_CHAR:B

    #@4
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7
    .line 121
    shr-int/lit8 v2, p0, 0x4

    #@9
    and-int/lit8 v2, v2, 0xf

    #@b
    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@12
    move-result v0

    #@13
    .line 122
    .local v0, "hex1":C
    and-int/lit8 v2, p0, 0xf

    #@15
    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    #@18
    move-result v2

    #@19
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@1c
    move-result v1

    #@1d
    .line 123
    .local v1, "hex2":C
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20
    .line 124
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@23
    .line 119
    return-void
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[B)[B
    .locals 4
    .param p0, "printable"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 142
    if-nez p1, :cond_0

    #@3
    .line 143
    return-object v3

    #@4
    .line 145
    :cond_0
    if-nez p0, :cond_1

    #@6
    .line 146
    sget-object p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@8
    .line 148
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 149
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    #@f
    if-ge v2, v3, :cond_4

    #@11
    .line 150
    aget-byte v0, p1, v2

    #@13
    .line 151
    .local v0, "b":I
    if-gez v0, :cond_2

    #@15
    .line 152
    add-int/lit16 v0, v0, 0x100

    #@17
    .line 154
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 155
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20
    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 157
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V

    #@26
    goto :goto_1

    #@27
    .line 160
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2a
    move-result-object v3

    #@2b
    return-object v3
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
    .line 347
    if-nez p1, :cond_0

    #@3
    .line 348
    return-object v0

    #@4
    .line 349
    :cond_0
    instance-of v0, p1, [B

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 350
    check-cast p1, [B

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 351
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 352
    check-cast p1, Ljava/lang/String;

    #@15
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 354
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
    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 356
    const-string/jumbo v2, " cannot be quoted-printable decoded"

    #@37
    .line 354
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
    .line 301
    if-nez p1, :cond_0

    #@3
    .line 302
    return-object v1

    #@4
    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 306
    :catch_0
    move-exception v0

    #@e
    .line 307
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
    .line 281
    if-nez p1, :cond_0

    #@3
    .line 282
    return-object v0

    #@4
    .line 284
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@6
    const-string/jumbo v1, "US-ASCII"

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

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
    .line 235
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

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
    .line 322
    if-nez p1, :cond_0

    #@3
    .line 323
    return-object v0

    #@4
    .line 324
    :cond_0
    instance-of v0, p1, [B

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 325
    check-cast p1, [B

    #@a
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 326
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 327
    check-cast p1, Ljava/lang/String;

    #@15
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 329
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
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 331
    const-string/jumbo v2, " cannot be quoted-printable encoded"

    #@37
    .line 329
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
    .line 256
    if-nez p1, :cond_0

    #@3
    .line 257
    return-object v1

    #@4
    .line 260
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 261
    :catch_0
    move-exception v0

    #@e
    .line 262
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
    .line 387
    if-nez p1, :cond_0

    #@3
    .line 388
    return-object v0

    #@4
    .line 390
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

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
    .line 216
    sget-object v0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    #@2
    invoke-static {v0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

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
    iget-object v0, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    #@2
    return-object v0
.end method

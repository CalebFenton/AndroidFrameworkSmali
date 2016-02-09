.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    new-array v0, v1, [C

    #@3
    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    #@5
    .line 49
    new-array v0, v1, [B

    #@7
    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@9
    .line 75
    const/16 v0, 0x8

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_0

    #@10
    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@12
    .line 40
    return-void

    #@13
    .line 75
    nop

    #@14
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromAscii([B)[B
    .locals 6
    .param p0, "ascii"    # [B

    #@0
    .prologue
    .line 199
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 200
    :cond_0
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@7
    return-object v4

    #@8
    .line 203
    :cond_1
    array-length v4, p0

    #@9
    shr-int/lit8 v4, v4, 0x3

    #@b
    new-array v3, v4, [B

    #@d
    .line 208
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    #@e
    .local v1, "ii":I
    array-length v4, p0

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 209
    const/4 v0, 0x0

    #@15
    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@17
    array-length v4, v4

    #@18
    if-ge v0, v4, :cond_3

    #@1a
    .line 210
    sub-int v4, v2, v0

    #@1c
    aget-byte v4, p0, v4

    #@1e
    const/16 v5, 0x31

    #@20
    if-ne v4, v5, :cond_2

    #@22
    .line 211
    aget-byte v4, v3, v1

    #@24
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@26
    aget v5, v5, v0

    #@28
    or-int/2addr v4, v5

    #@29
    int-to-byte v4, v4

    #@2a
    aput-byte v4, v3, v1

    #@2c
    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@31
    add-int/lit8 v2, v2, -0x8

    #@33
    goto :goto_0

    #@34
    .line 215
    .end local v0    # "bits":I
    :cond_4
    return-object v3
.end method

.method public static fromAscii([C)[B
    .locals 6
    .param p0, "ascii"    # [C

    #@0
    .prologue
    .line 172
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 173
    :cond_0
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@7
    return-object v4

    #@8
    .line 176
    :cond_1
    array-length v4, p0

    #@9
    shr-int/lit8 v4, v4, 0x3

    #@b
    new-array v3, v4, [B

    #@d
    .line 181
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    #@e
    .local v1, "ii":I
    array-length v4, p0

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 182
    const/4 v0, 0x0

    #@15
    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@17
    array-length v4, v4

    #@18
    if-ge v0, v4, :cond_3

    #@1a
    .line 183
    sub-int v4, v2, v0

    #@1c
    aget-char v4, p0, v4

    #@1e
    const/16 v5, 0x31

    #@20
    if-ne v4, v5, :cond_2

    #@22
    .line 184
    aget-byte v4, v3, v1

    #@24
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@26
    aget v5, v5, v0

    #@28
    or-int/2addr v4, v5

    #@29
    int-to-byte v4, v4

    #@2a
    aput-byte v4, v3, v1

    #@2c
    .line 182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@31
    add-int/lit8 v2, v2, -0x8

    #@33
    goto :goto_0

    #@34
    .line 188
    .end local v0    # "bits":I
    :cond_4
    return-object v3
.end method

.method public static toAsciiBytes([B)[B
    .locals 6
    .param p0, "raw"    # [B

    #@0
    .prologue
    .line 228
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 229
    :cond_0
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@7
    return-object v4

    #@8
    .line 232
    :cond_1
    array-length v4, p0

    #@9
    shl-int/lit8 v4, v4, 0x3

    #@b
    new-array v3, v4, [B

    #@d
    .line 237
    .local v3, "l_ascii":[B
    const/4 v1, 0x0

    #@e
    .local v1, "ii":I
    array-length v4, v3

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 238
    const/4 v0, 0x0

    #@15
    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@17
    array-length v4, v4

    #@18
    if-ge v0, v4, :cond_3

    #@1a
    .line 239
    aget-byte v4, p0, v1

    #@1c
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@1e
    aget v5, v5, v0

    #@20
    and-int/2addr v4, v5

    #@21
    if-nez v4, :cond_2

    #@23
    .line 240
    sub-int v4, v2, v0

    #@25
    const/16 v5, 0x30

    #@27
    aput-byte v5, v3, v4

    #@29
    .line 238
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 242
    :cond_2
    sub-int v4, v2, v0

    #@2e
    const/16 v5, 0x31

    #@30
    aput-byte v5, v3, v4

    #@32
    goto :goto_2

    #@33
    .line 237
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@35
    add-int/lit8 v2, v2, -0x8

    #@37
    goto :goto_0

    #@38
    .line 246
    .end local v0    # "bits":I
    :cond_4
    return-object v3
.end method

.method public static toAsciiChars([B)[C
    .locals 6
    .param p0, "raw"    # [B

    #@0
    .prologue
    .line 258
    if-eqz p0, :cond_0

    #@2
    array-length v4, p0

    #@3
    if-nez v4, :cond_1

    #@5
    .line 259
    :cond_0
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    #@7
    return-object v4

    #@8
    .line 262
    :cond_1
    array-length v4, p0

    #@9
    shl-int/lit8 v4, v4, 0x3

    #@b
    new-array v3, v4, [C

    #@d
    .line 267
    .local v3, "l_ascii":[C
    const/4 v1, 0x0

    #@e
    .local v1, "ii":I
    array-length v4, v3

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 268
    const/4 v0, 0x0

    #@15
    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@17
    array-length v4, v4

    #@18
    if-ge v0, v4, :cond_3

    #@1a
    .line 269
    aget-byte v4, p0, v1

    #@1c
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    #@1e
    aget v5, v5, v0

    #@20
    and-int/2addr v4, v5

    #@21
    if-nez v4, :cond_2

    #@23
    .line 270
    sub-int v4, v2, v0

    #@25
    const/16 v5, 0x30

    #@27
    aput-char v5, v3, v4

    #@29
    .line 268
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 272
    :cond_2
    sub-int v4, v2, v0

    #@2e
    const/16 v5, 0x31

    #@30
    aput-char v5, v3, v4

    #@32
    goto :goto_2

    #@33
    .line 267
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@35
    add-int/lit8 v2, v2, -0x8

    #@37
    goto :goto_0

    #@38
    .line 276
    .end local v0    # "bits":I
    :cond_4
    return-object v3
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    #@0
    .prologue
    .line 288
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@9
    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    if-nez p1, :cond_0

    #@2
    .line 118
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@4
    return-object v0

    #@5
    .line 120
    :cond_0
    instance-of v0, p1, [B

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 121
    check-cast p1, [B

    #@b
    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 123
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [C

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 124
    check-cast p1, [C

    #@16
    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 126
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 127
    check-cast p1, Ljava/lang/String;

    #@21
    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 129
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    #@2c
    const-string/jumbo v1, "argument not a byte array"

    #@2f
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "ascii"    # [B

    #@0
    .prologue
    .line 141
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    instance-of v0, p1, [B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 101
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    const-string/jumbo v1, "argument not a byte array"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 103
    :cond_0
    check-cast p1, [B

    #@f
    .end local p1    # "raw":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "raw"    # [B

    #@0
    .prologue
    .line 86
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ascii"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    #@4
    return-object v0

    #@5
    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.class public Lorg/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    #@9
    .line 36
    return-void

    #@a
    .line 41
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    array-length v3, p0

    #@1
    .line 63
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 64
    new-instance v5, Lorg/apache/commons/codec/DecoderException;

    #@7
    const-string/jumbo v6, "Odd number of characters."

    #@a
    invoke-direct {v5, v6}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 67
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    #@10
    new-array v4, v5, [B

    #@12
    .line 70
    .local v4, "out":[B
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    const/4 v2, 0x0

    #@14
    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@16
    .line 71
    aget-char v5, p0, v2

    #@18
    invoke-static {v5, v2}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    #@1b
    move-result v5

    #@1c
    shl-int/lit8 v0, v5, 0x4

    #@1e
    .line 72
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    #@20
    .line 73
    aget-char v5, p0, v2

    #@22
    invoke-static {v5, v2}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    #@25
    move-result v5

    #@26
    or-int/2addr v0, v5

    #@27
    .line 74
    add-int/lit8 v2, v2, 0x1

    #@29
    .line 75
    and-int/lit16 v5, v0, 0xff

    #@2b
    int-to-byte v5, v5

    #@2c
    aput-byte v5, v4, v1

    #@2e
    .line 70
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 78
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 7
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 108
    array-length v3, p0

    #@1
    .line 110
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    #@3
    new-array v4, v5, [C

    #@5
    .line 113
    .local v4, "out":[C
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    const/4 v1, 0x0

    #@7
    .local v1, "j":I
    move v2, v1

    #@8
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@a
    .line 114
    add-int/lit8 v1, v2, 0x1

    #@c
    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    #@e
    aget-byte v6, p0, v0

    #@10
    and-int/lit16 v6, v6, 0xf0

    #@12
    ushr-int/lit8 v6, v6, 0x4

    #@14
    aget-char v5, v5, v6

    #@16
    aput-char v5, v4, v2

    #@18
    .line 115
    add-int/lit8 v2, v1, 0x1

    #@1a
    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lorg/apache/commons/codec/binary/Hex;->DIGITS:[C

    #@1c
    aget-byte v6, p0, v0

    #@1e
    and-int/lit8 v6, v6, 0xf

    #@20
    aget-char v5, v5, v6

    #@22
    aput-char v5, v4, v1

    #@24
    .line 113
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 118
    :cond_0
    return-object v4
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    const/16 v1, 0x10

    #@2
    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    #@5
    move-result v0

    #@6
    .line 91
    .local v0, "digit":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 92
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Illegal hexadecimal charcter "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " at index "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 94
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    :try_start_0
    instance-of v3, p1, Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    check-cast p1, Ljava/lang/String;

    #@6
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@9
    move-result-object v1

    #@a
    .line 156
    .local v1, "charArray":[C
    :goto_0
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    #@d
    move-result-object v3

    #@e
    return-object v3

    #@f
    .line 155
    .end local v1    # "charArray":[C
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    #@10
    check-cast v0, [C

    #@12
    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .restart local v1    # "charArray":[C
    goto :goto_0

    #@14
    .line 157
    .end local v1    # "charArray":[C
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@15
    .line 158
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/codec/DecoderException;

    #@17
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-direct {v3, v4}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    #@5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    :try_start_0
    instance-of v3, p1, Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    check-cast p1, Ljava/lang/String;

    #@6
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@9
    move-result-object v1

    #@a
    .line 190
    .local v1, "byteArray":[B
    :goto_0
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    #@d
    move-result-object v3

    #@e
    return-object v3

    #@f
    .line 189
    .end local v1    # "byteArray":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    #@10
    check-cast v0, [B

    #@12
    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .restart local v1    # "byteArray":[B
    goto :goto_0

    #@14
    .line 191
    .end local v1    # "byteArray":[B
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@15
    .line 192
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/codec/EncoderException;

    #@17
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-direct {v3, v4}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B

    #@0
    .prologue
    .line 173
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.class public Llibcore/util/HexEncoding;
.super Ljava/lang/Object;
.source "HexEncoding.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    const-string/jumbo v0, "0123456789ABCDEF"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    sput-object v0, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    #@9
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode([CZ)[B
    .locals 9
    .param p0, "encoded"    # [C
    .param p1, "allowSingleChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 59
    array-length v6, p0

    #@2
    add-int/lit8 v6, v6, 0x1

    #@4
    div-int/lit8 v3, v6, 0x2

    #@6
    .line 60
    .local v3, "resultLengthBytes":I
    new-array v2, v3, [B

    #@8
    .line 62
    .local v2, "result":[B
    const/4 v4, 0x0

    #@9
    .line 63
    .local v4, "resultOffset":I
    const/4 v0, 0x0

    #@a
    .line 64
    .local v0, "i":I
    if-eqz p1, :cond_1

    #@c
    .line 65
    array-length v6, p0

    #@d
    rem-int/lit8 v6, v6, 0x2

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 67
    const/4 v4, 0x1

    #@12
    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->toDigit([CI)I

    #@15
    move-result v6

    #@16
    int-to-byte v6, v6

    #@17
    aput-byte v6, v2, v7

    #@19
    .line 68
    const/4 v0, 0x1

    #@1a
    .line 76
    :cond_0
    array-length v1, p0

    #@1b
    .local v1, "len":I
    move v5, v4

    #@1c
    .end local v4    # "resultOffset":I
    .local v5, "resultOffset":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1e
    .line 77
    add-int/lit8 v4, v5, 0x1

    #@20
    .end local v5    # "resultOffset":I
    .restart local v4    # "resultOffset":I
    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->toDigit([CI)I

    #@23
    move-result v6

    #@24
    shl-int/lit8 v6, v6, 0x4

    #@26
    add-int/lit8 v7, v0, 0x1

    #@28
    invoke-static {p0, v7}, Llibcore/util/HexEncoding;->toDigit([CI)I

    #@2b
    move-result v7

    #@2c
    or-int/2addr v6, v7

    #@2d
    int-to-byte v6, v6

    #@2e
    aput-byte v6, v2, v5

    #@30
    .line 76
    add-int/lit8 v0, v0, 0x2

    #@32
    move v5, v4

    #@33
    .end local v4    # "resultOffset":I
    .restart local v5    # "resultOffset":I
    goto :goto_0

    #@34
    .line 71
    .end local v1    # "len":I
    .end local v5    # "resultOffset":I
    .restart local v4    # "resultOffset":I
    :cond_1
    array-length v6, p0

    #@35
    rem-int/lit8 v6, v6, 0x2

    #@37
    if-eqz v6, :cond_0

    #@39
    .line 72
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Invalid input length: "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    array-length v8, p0

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v6

    #@54
    .line 80
    .end local v4    # "resultOffset":I
    .restart local v1    # "len":I
    .restart local v5    # "resultOffset":I
    :cond_2
    return-object v2
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 33
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Llibcore/util/HexEncoding;->encode([BII)[C

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static encode([BII)[C
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 40
    mul-int/lit8 v4, p2, 0x2

    #@2
    new-array v2, v4, [C

    #@4
    .line 41
    .local v2, "result":[C
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@7
    .line 42
    add-int v4, p1, v1

    #@9
    aget-byte v0, p0, v4

    #@b
    .line 43
    .local v0, "b":B
    mul-int/lit8 v3, v1, 0x2

    #@d
    .line 44
    .local v3, "resultIndex":I
    sget-object v4, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    #@f
    ushr-int/lit8 v5, v0, 0x4

    #@11
    and-int/lit8 v5, v5, 0xf

    #@13
    aget-char v4, v4, v5

    #@15
    aput-char v4, v2, v3

    #@17
    .line 45
    add-int/lit8 v4, v3, 0x1

    #@19
    sget-object v5, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    #@1b
    and-int/lit8 v6, v0, 0xf

    #@1d
    aget-char v5, v5, v6

    #@1f
    aput-char v5, v2, v4

    #@21
    .line 41
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 48
    .end local v0    # "b":B
    .end local v3    # "resultIndex":I
    :cond_0
    return-object v2
.end method

.method private static toDigit([CI)I
    .locals 4
    .param p0, "str"    # [C
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    aget-char v0, p0, p1

    #@2
    .line 88
    .local v0, "pseudoCodePoint":I
    const/16 v1, 0x30

    #@4
    if-gt v1, v0, :cond_0

    #@6
    const/16 v1, 0x39

    #@8
    if-gt v0, v1, :cond_0

    #@a
    .line 89
    add-int/lit8 v1, v0, -0x30

    #@c
    return v1

    #@d
    .line 90
    :cond_0
    const/16 v1, 0x61

    #@f
    if-gt v1, v0, :cond_1

    #@11
    const/16 v1, 0x66

    #@13
    if-gt v0, v1, :cond_1

    #@15
    .line 91
    add-int/lit8 v1, v0, -0x61

    #@17
    add-int/lit8 v1, v1, 0xa

    #@19
    return v1

    #@1a
    .line 92
    :cond_1
    const/16 v1, 0x41

    #@1c
    if-gt v1, v0, :cond_2

    #@1e
    const/16 v1, 0x46

    #@20
    if-gt v0, v1, :cond_2

    #@22
    .line 93
    add-int/lit8 v1, v0, -0x41

    #@24
    add-int/lit8 v1, v1, 0xa

    #@26
    return v1

    #@27
    .line 96
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "Illegal char: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    aget-char v3, p0, p1

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 97
    const-string/jumbo v3, " at offset "

    #@3e
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1
.end method

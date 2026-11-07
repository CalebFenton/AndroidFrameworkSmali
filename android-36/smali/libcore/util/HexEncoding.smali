.class public Llibcore/util/HexEncoding;
.super Ljava/lang/Object;
.source "HexEncoding.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist LOWER_CASE_DIGITS:[C

.field private static final blacklist UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Llibcore/util/HexEncoding;->LOWER_CASE_DIGITS:[C

    .line 34
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Llibcore/util/HexEncoding;->UPPER_CASE_DIGITS:[C

    return-void

    nop

    :array_12
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

    :array_26
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api decode(Ljava/lang/String;)[B
    .registers 2
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api decode(Ljava/lang/String;Z)[B
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "allowSingleChar"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api decode([C)[B
    .registers 2
    .param p0, "encoded"    # [C
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api decode([CZ)[B
    .registers 10
    .param p0, "encoded"    # [C
    .param p1, "allowSingleChar"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 214
    array-length v0, p0

    .line 215
    .local v0, "encodedLength":I
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 216
    .local v1, "resultLengthBytes":I
    new-array v2, v1, [B

    .line 218
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 219
    .local v3, "resultOffset":I
    const/4 v4, 0x0

    .line 220
    .local v4, "i":I
    if-eqz p1, :cond_1c

    .line 221
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_20

    .line 224
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "resultOffset":I
    .local v5, "resultOffset":I
    invoke-static {p0, v4}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 225
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_20

    .line 228
    .end local v5    # "resultOffset":I
    .restart local v3    # "resultOffset":I
    :cond_1c
    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_39

    .line 233
    :cond_20
    :goto_20
    if-ge v4, v0, :cond_38

    .line 234
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "resultOffset":I
    .restart local v5    # "resultOffset":I
    invoke-static {p0, v4}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v4, 0x1

    invoke-static {p0, v7}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 233
    add-int/lit8 v4, v4, 0x2

    move v3, v5

    goto :goto_20

    .line 237
    .end local v5    # "resultOffset":I
    .restart local v3    # "resultOffset":I
    :cond_38
    return-object v2

    .line 229
    :cond_39
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid input length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static blacklist test-api encode([B)[C
    .registers 4
    .param p0, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 70
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Llibcore/util/HexEncoding;->encode([BIIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api encode([BII)[C
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Llibcore/util/HexEncoding;->encode([BIIZ)[C

    move-result-object v0

    return-object v0
.end method

.method private static blacklist encode([BIIZ)[C
    .registers 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "upperCase"    # Z

    .line 107
    if-eqz p3, :cond_5

    sget-object v0, Llibcore/util/HexEncoding;->UPPER_CASE_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object v0, Llibcore/util/HexEncoding;->LOWER_CASE_DIGITS:[C

    .line 108
    .local v0, "digits":[C
    :goto_7
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 109
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, p2, :cond_27

    .line 110
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    .line 111
    .local v3, "b":B
    mul-int/lit8 v4, v2, 0x2

    .line 112
    .local v4, "resultIndex":I
    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 113
    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 109
    .end local v3    # "b":B
    .end local v4    # "resultIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 116
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method public static blacklist test-api encode([BZ)[C
    .registers 4
    .param p0, "data"    # [B
    .param p1, "upperCase"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 85
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Llibcore/util/HexEncoding;->encode([BIIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api encodeToString(BZ)Ljava/lang/String;
    .registers 8
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 53
    if-eqz p1, :cond_5

    sget-object v0, Llibcore/util/HexEncoding;->UPPER_CASE_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object v0, Llibcore/util/HexEncoding;->LOWER_CASE_DIGITS:[C

    .line 54
    .local v0, "digits":[C
    :goto_7
    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 55
    .local v2, "buf":[C
    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    .line 56
    and-int/lit8 v3, p0, 0xf

    aget-char v3, v0, v3

    const/4 v5, 0x1

    aput-char v3, v2, v5

    .line 57
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static blacklist test-api encodeToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 129
    const/4 v0, 0x1

    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api encodeToString([BZ)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "upperCase"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Llibcore/util/HexEncoding;->encode([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static blacklist toDigit([CI)I
    .registers 6
    .param p0, "str"    # [C
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 243
    aget-char v0, p0, p1

    .line 245
    .local v0, "pseudoCodePoint":I
    const/16 v1, 0x30

    if-gt v1, v0, :cond_d

    const/16 v1, 0x39

    if-gt v0, v1, :cond_d

    .line 246
    add-int/lit8 v1, v0, -0x30

    return v1

    .line 247
    :cond_d
    const/16 v1, 0x61

    if-gt v1, v0, :cond_1a

    const/16 v1, 0x66

    if-gt v0, v1, :cond_1a

    .line 248
    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 249
    :cond_1a
    const/16 v1, 0x41

    if-gt v1, v0, :cond_27

    const/16 v1, 0x46

    if-gt v0, v1, :cond_27

    .line 250
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 253
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

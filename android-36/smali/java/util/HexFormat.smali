.class public final Ljava/util/HexFormat;
.super Ljava/lang/Object;
.source "HexFormat.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist DIGITS:[B

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist HEX_FORMAT:Ljava/util/HexFormat;

.field private static final blacklist LOWERCASE_DIGITS:[B

.field private static final blacklist UPPERCASE_DIGITS:[B


# instance fields
.field private final blacklist delimiter:Ljava/lang/String;

.field private final blacklist digits:[B

.field private final blacklist prefix:Ljava/lang/String;

.field private final blacklist suffix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 145
    nop

    .line 154
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Ljava/util/HexFormat;->UPPERCASE_DIGITS:[B

    .line 158
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Ljava/util/HexFormat;->LOWERCASE_DIGITS:[B

    .line 164
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Ljava/util/HexFormat;->DIGITS:[B

    .line 186
    new-instance v0, Ljava/util/HexFormat;

    sget-object v1, Ljava/util/HexFormat;->LOWERCASE_DIGITS:[B

    const-string v2, ""

    invoke-direct {v0, v2, v2, v2, v1}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    sput-object v0, Ljava/util/HexFormat;->HEX_FORMAT:Ljava/util/HexFormat;

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljava/util/HexFormat;->EMPTY_BYTES:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    :array_38
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    :array_44
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "digits"    # [B

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v0, "delimiter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    .line 207
    const-string v0, "prefix"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    .line 208
    const-string v0, "suffix"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Ljava/util/HexFormat;->digits:[B

    .line 210
    return-void
.end method

.method private static blacklist checkDigitCount(III)I
    .registers 7
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "limit"    # I

    .line 906
    sub-int v0, p1, p0

    .line 907
    .local v0, "length":I
    if-gt v0, p2, :cond_5

    .line 910
    return v0

    .line 908
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string length greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist checkLiteral(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .registers 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "literal"    # Ljava/lang/String;

    .line 619
    nop

    .line 620
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 621
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_1a

    goto :goto_7b

    .line 624
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 625
    add-int v1, p1, v0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_30

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 626
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 627
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", expected: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p1, v0

    .line 629
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-static {v2}, Ljava/util/HexFormat;->escapeNL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    .end local v0    # "i":I
    :cond_7a
    return-void

    .line 622
    :cond_7b
    :goto_7b
    return-void
.end method

.method private static blacklist checkMaxArraySize(J)I
    .registers 5
    .param p0, "length"    # J

    .line 499
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    .line 502
    long-to-int v0, p0

    return v0

    .line 500
    :cond_9
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist escapeNL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 641
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 642
    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 641
    return-object v0
.end method

.method private blacklist formatOptDelimiter([BII)Ljava/lang/String;
    .registers 13
    .param p1, "bytes"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 450
    iget-object v0, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_b2

    .line 453
    :cond_13
    sub-int v0, p3, p2

    .line 454
    .local v0, "length":I
    iget-object v2, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    .line 456
    int-to-long v1, v0

    const-wide/16 v4, 0x2

    mul-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/util/HexFormat;->checkMaxArraySize(J)I

    move-result v1

    new-array v1, v1, [B

    .line 457
    .local v1, "rep":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v0, :cond_49

    .line 458
    mul-int/lit8 v4, v2, 0x2

    add-int v5, p2, v2

    aget-byte v5, p1, v5

    invoke-virtual {p0, v5}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 459
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v3

    add-int v5, p2, v2

    aget-byte v5, p1, v5

    invoke-virtual {p0, v5}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .end local v2    # "i":I
    :cond_49
    goto :goto_aa

    .line 461
    .end local v1    # "rep":[B
    :cond_4a
    iget-object v2, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_b1

    iget-object v2, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x100

    if-ge v2, v5, :cond_b1

    .line 464
    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 465
    .local v1, "sep":C
    int-to-long v5, v0

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/util/HexFormat;->checkMaxArraySize(J)I

    move-result v2

    new-array v2, v2, [B

    .line 466
    .local v2, "rep":[B
    aget-byte v5, p1, p2

    invoke-virtual {p0, v5}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 467
    aget-byte v4, p1, p2

    invoke-virtual {p0, v4}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 468
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_83
    if-ge v4, v0, :cond_a9

    .line 469
    mul-int/lit8 v5, v4, 0x3

    sub-int/2addr v5, v3

    int-to-byte v6, v1

    aput-byte v6, v2, v5

    .line 470
    mul-int/lit8 v5, v4, 0x3

    add-int v6, p2, v4

    aget-byte v6, p1, v6

    invoke-virtual {p0, v6}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 471
    mul-int/lit8 v5, v4, 0x3

    add-int/2addr v5, v3

    add-int v6, p2, v4

    aget-byte v6, p1, v6

    invoke-virtual {p0, v6}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 468
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    .line 473
    .end local v1    # "sep":C
    .end local v4    # "i":I
    :cond_a9
    move-object v1, v2

    .line 486
    .end local v2    # "rep":[B
    .local v1, "rep":[B
    :goto_aa
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 475
    .end local v1    # "rep":[B
    :cond_b1
    return-object v1

    .line 451
    .end local v0    # "length":I
    :cond_b2
    :goto_b2
    return-object v1
.end method

.method public static whitelist test-api fromHexDigit(I)I
    .registers 4
    .param p0, "ch"    # I

    .line 944
    ushr-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_c

    sget-object v0, Ljava/util/HexFormat;->DIGITS:[B

    aget-byte v0, v0, p0

    move v1, v0

    .local v1, "value":I
    if-ltz v0, :cond_c

    .line 945
    return v1

    .line 947
    .end local v1    # "value":I
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a hexadecimal digit: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api fromHexDigits(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;

    .line 990
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Ljava/util/HexFormat;->fromHexDigits(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static blacklist fromHexDigits(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 964
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/util/HexFormat;->fromHexDigit(I)I

    move-result v0

    .line 965
    .local v0, "high":I
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/util/HexFormat;->fromHexDigit(I)I

    move-result v1

    .line 966
    .local v1, "low":I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    return v2
.end method

.method public static whitelist test-api fromHexDigits(Ljava/lang/CharSequence;II)I
    .registers 8
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1020
    const-string v0, "string"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1021
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 1022
    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/HexFormat;->checkDigitCount(III)I

    move-result v0

    .line 1023
    .local v0, "length":I
    const/4 v1, 0x0

    .line 1024
    .local v1, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_27

    .line 1025
    shl-int/lit8 v3, v1, 0x4

    add-int v4, p1, v2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/util/HexFormat;->fromHexDigit(I)I

    move-result v4

    add-int v1, v3, v4

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1027
    .end local v2    # "i":I
    :cond_27
    return v1
.end method

.method public static whitelist test-api fromHexDigitsToLong(Ljava/lang/CharSequence;)J
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;

    .line 1051
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Ljava/util/HexFormat;->fromHexDigitsToLong(Ljava/lang/CharSequence;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api fromHexDigitsToLong(Ljava/lang/CharSequence;II)J
    .registers 11
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1081
    const-string v0, "string"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1082
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 1083
    const/16 v0, 0x10

    invoke-static {p1, p2, v0}, Ljava/util/HexFormat;->checkDigitCount(III)I

    move-result v0

    .line 1084
    .local v0, "length":I
    const-wide/16 v1, 0x0

    .line 1085
    .local v1, "value":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_2a

    .line 1086
    const/4 v4, 0x4

    shl-long v4, v1, v4

    add-int v6, p1, v3

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/util/HexFormat;->fromHexDigit(I)I

    move-result v6

    int-to-long v6, v6

    add-long v1, v4, v6

    .line 1085
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1088
    .end local v3    # "i":I
    :cond_2a
    return-wide v1
.end method

.method public static whitelist test-api isHexDigit(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 926
    ushr-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_c

    sget-object v0, Ljava/util/HexFormat;->DIGITS:[B

    aget-byte v0, v0, p0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist test-api of()Ljava/util/HexFormat;
    .registers 1

    .line 223
    sget-object v0, Ljava/util/HexFormat;->HEX_FORMAT:Ljava/util/HexFormat;

    return-object v0
.end method

.method public static whitelist test-api ofDelimiter(Ljava/lang/String;)Ljava/util/HexFormat;
    .registers 4
    .param p0, "delimiter"    # Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/util/HexFormat;

    const-string v1, ""

    sget-object v2, Ljava/util/HexFormat;->LOWERCASE_DIGITS:[B

    invoke-direct {v0, p0, v1, v1, v2}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static blacklist parseNoDelimiter(Ljava/lang/CharSequence;)[B
    .registers 4
    .param p0, "string"    # Ljava/lang/CharSequence;

    .line 885
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_21

    .line 889
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 890
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 891
    mul-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Ljava/util/HexFormat;->fromHexDigits(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 894
    .end local v1    # "i":I
    :cond_20
    return-object v0

    .line 886
    .end local v0    # "bytes":[B
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string length not even: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 887
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api delimiter()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1103
    return v0

    .line 1104
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 1106
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/util/HexFormat;

    .line 1107
    .local v2, "otherHex":Ljava/util/HexFormat;
    iget-object v3, p0, Ljava/util/HexFormat;->digits:[B

    iget-object v4, v2, Ljava/util/HexFormat;->digits:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v4, v2, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    .line 1108
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v4, v2, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    .line 1109
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    iget-object v4, v2, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    .line 1110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 1107
    :goto_3f
    return v0

    .line 1105
    .end local v2    # "otherHex":Ljava/util/HexFormat;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist test-api formatHex(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .registers 5
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[B)TA;"
        }
    .end annotation

    .line 388
    .local p1, "out":Ljava/lang/Appendable;, "TA;"
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/HexFormat;->formatHex(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatHex(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .registers 9
    .param p2, "bytes"    # [B
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[BII)TA;"
        }
    .end annotation

    .line 408
    .local p1, "out":Ljava/lang/Appendable;, "TA;"
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    const-string v0, "bytes"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 412
    sub-int v0, p4, p3

    .line 413
    .local v0, "length":I
    if-lez v0, :cond_6d

    .line 415
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "between":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 417
    aget-byte v2, p2, p3

    invoke-virtual {p0, p1, v2}, Ljava/util/HexFormat;->toHexDigits(Ljava/lang/Appendable;B)Ljava/lang/Appendable;

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 419
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3e
    if-ge v2, v0, :cond_4a

    .line 420
    add-int v3, p3, v2

    aget-byte v3, p2, v3

    invoke-virtual {p0, p1, v3}, Ljava/util/HexFormat;->toHexDigits(Ljava/lang/Appendable;B)Ljava/lang/Appendable;

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .end local v2    # "i":I
    :cond_4a
    goto :goto_5b

    .line 423
    :cond_4b
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4c
    if-ge v2, v0, :cond_5b

    .line 424
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 425
    add-int v3, p3, v2

    aget-byte v3, p2, v3

    invoke-virtual {p0, p1, v3}, Ljava/util/HexFormat;->toHexDigits(Ljava/lang/Appendable;B)Ljava/lang/Appendable;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 428
    .end local v2    # "i":I
    :cond_5b
    :goto_5b
    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_60} :catch_62

    .line 431
    nop

    .end local v1    # "between":Ljava/lang/String;
    goto :goto_6d

    .line 429
    :catch_62
    move-exception v1

    .line 430
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v2

    .line 433
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    return-object p1
.end method

.method public whitelist test-api formatHex([B)Ljava/lang/String;
    .registers 4
    .param p1, "bytes"    # [B

    .line 341
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/HexFormat;->formatHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatHex([BII)Ljava/lang/String;
    .registers 11
    .param p1, "bytes"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 357
    const-string v0, "bytes"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 359
    sub-int v0, p3, p2

    if-nez v0, :cond_10

    .line 360
    const-string v0, ""

    return-object v0

    .line 363
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Ljava/util/HexFormat;->formatOptDelimiter([BII)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_4c

    .line 365
    iget-object v1, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iget-object v3, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-object v3, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 366
    .local v1, "stride":J
    sub-int v3, p3, p2

    int-to-long v3, v3

    mul-long/2addr v3, v1

    iget-object v5, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/util/HexFormat;->checkMaxArraySize(J)I

    move-result v3

    .line 367
    .local v3, "capacity":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4, p1, p2, p3}, Ljava/util/HexFormat;->formatHex(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    .line 369
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .end local v1    # "stride":J
    .end local v3    # "capacity":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4c
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1120
    iget-object v0, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 1121
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/util/HexFormat;->digits:[B

    sget-object v3, Ljava/util/HexFormat;->UPPERCASE_DIGITS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 1122
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api isUpperCase()Z
    .registers 3

    .line 325
    iget-object v0, p0, Ljava/util/HexFormat;->digits:[B

    sget-object v1, Ljava/util/HexFormat;->UPPERCASE_DIGITS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api parseHex(Ljava/lang/CharSequence;)[B
    .registers 4
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 521
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/HexFormat;->parseHex(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parseHex(Ljava/lang/CharSequence;II)[B
    .registers 14
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 543
    const-string v0, "string"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 546
    if-nez p2, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p3, v0, :cond_18

    .line 547
    :cond_14
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 555
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 557
    sget-object v0, Ljava/util/HexFormat;->EMPTY_BYTES:[B

    return-object v0

    .line 558
    :cond_21
    iget-object v0, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 559
    invoke-static {p1}, Ljava/util/HexFormat;->parseNoDelimiter(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0

    .line 562
    :cond_3e
    iget-object v0, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 563
    .local v0, "valueChars":J
    iget-object v2, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 564
    .local v2, "stride":J
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    rem-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_cc

    .line 568
    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Ljava/util/HexFormat;->checkLiteral(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 569
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Ljava/util/HexFormat;->checkLiteral(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "between":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v0

    div-long/2addr v5, v2

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v5, v5

    .line 572
    .local v5, "len":I
    new-array v6, v5, [B

    .line 574
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "offset":I
    :goto_aa
    add-int/lit8 v9, v5, -0x1

    if-ge v7, v9, :cond_c4

    .line 575
    invoke-static {p1, v8}, Ljava/util/HexFormat;->fromHexDigits(Ljava/lang/CharSequence;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 576
    add-int/lit8 v9, v8, 0x2

    invoke-static {p1, v9, v4}, Ljava/util/HexFormat;->checkLiteral(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 574
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    goto :goto_aa

    .line 578
    :cond_c4
    invoke-static {p1, v8}, Ljava/util/HexFormat;->fromHexDigits(Ljava/lang/CharSequence;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 580
    return-object v6

    .line 565
    .end local v4    # "between":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "bytes":[B
    .end local v7    # "i":I
    .end local v8    # "offset":I
    :cond_cc
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "extra or missing delimiters or values consisting of prefix, two hexadecimal digits, and suffix"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api parseHex([CII)[B
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 603
    const-string v0, "chars"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 604
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 605
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 606
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->parseHex(Ljava/lang/CharSequence;)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api prefix()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api suffix()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toHexDigits(Ljava/lang/Appendable;B)Ljava/lang/Appendable;
    .registers 6
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;B)TA;"
        }
    .end annotation

    .line 687
    .local p1, "out":Ljava/lang/Appendable;, "TA;"
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 689
    :try_start_5
    invoke-virtual {p0, p2}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 690
    invoke-virtual {p0, p2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_14

    .line 691
    return-object p1

    .line 692
    :catch_14
    move-exception v0

    .line 693
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method public whitelist test-api toHexDigits(B)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # B

    .line 707
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 708
    .local v0, "rep":[B
    invoke-virtual {p0, p1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 709
    invoke-virtual {p0, p1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 719
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toHexDigits(C)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # C

    .line 733
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toHexDigits(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toHexDigits(I)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # I

    .line 776
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 777
    .local v0, "rep":[B
    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 778
    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 779
    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 780
    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 781
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 782
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 783
    int-to-byte v1, p1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 784
    int-to-byte v1, p1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 795
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toHexDigits(J)Ljava/lang/String;
    .registers 8
    .param p1, "value"    # J

    .line 810
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 811
    .local v1, "rep":[B
    const/16 v2, 0x38

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 812
    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 813
    const/16 v2, 0x30

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 814
    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 815
    const/16 v2, 0x28

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v1, v4

    .line 816
    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 817
    const/16 v2, 0x20

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    .line 818
    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    .line 819
    const/16 v2, 0x18

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v1, v4

    .line 820
    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/16 v3, 0x9

    aput-byte v2, v1, v3

    .line 821
    ushr-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    const/16 v3, 0xa

    aput-byte v2, v1, v3

    .line 822
    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v0

    int-to-byte v0, v0

    const/16 v2, 0xb

    aput-byte v0, v1, v2

    .line 823
    ushr-long v2, p1, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v0

    int-to-byte v0, v0

    const/16 v2, 0xc

    aput-byte v0, v1, v2

    .line 824
    ushr-long v2, p1, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v0

    int-to-byte v0, v0

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    .line 825
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v0

    int-to-byte v0, v0

    const/16 v2, 0xe

    aput-byte v0, v1, v2

    .line 826
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v0

    int-to-byte v0, v0

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    .line 837
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v1, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toHexDigits(JI)Ljava/lang/String;
    .registers 7
    .param p1, "value"    # J
    .param p3, "digits"    # I

    .line 853
    if-ltz p3, :cond_27

    const/16 v0, 0x10

    if-gt p3, v0, :cond_27

    .line 855
    if-nez p3, :cond_b

    .line 856
    const-string v0, ""

    return-object v0

    .line 857
    :cond_b
    new-array v0, p3, [B

    .line 858
    .local v0, "rep":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_20

    .line 859
    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 860
    const/4 v2, 0x4

    ushr-long/2addr p1, v2

    .line 858
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 871
    .end local v1    # "i":I
    :cond_20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 854
    .end local v0    # "rep":[B
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toHexDigits(S)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # S

    .line 746
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 747
    .local v0, "rep":[B
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 748
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 749
    int-to-byte v1, p1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toHighHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 750
    int-to-byte v1, p1

    invoke-virtual {p0, v1}, Ljava/util/HexFormat;->toLowHexDigit(I)C

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 761
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toHighHexDigit(I)C
    .registers 4
    .param p1, "value"    # I

    .line 670
    iget-object v0, p0, Ljava/util/HexFormat;->digits:[B

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api toLowHexDigit(I)C
    .registers 4
    .param p1, "value"    # I

    .line 656
    iget-object v0, p0, Ljava/util/HexFormat;->digits:[B

    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uppercase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HexFormat;->digits:[B

    sget-object v2, Ljava/util/HexFormat;->UPPERCASE_DIGITS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delimiter: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", prefix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", suffix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/HexFormat;->escapeNL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDelimiter(Ljava/lang/String;)Ljava/util/HexFormat;
    .registers 6
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/util/HexFormat;

    iget-object v1, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/HexFormat;->digits:[B

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public whitelist test-api withLowerCase()Ljava/util/HexFormat;
    .registers 6

    .line 287
    new-instance v0, Ljava/util/HexFormat;

    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    sget-object v4, Ljava/util/HexFormat;->LOWERCASE_DIGITS:[B

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public whitelist test-api withPrefix(Ljava/lang/String;)Ljava/util/HexFormat;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/util/HexFormat;

    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/HexFormat;->digits:[B

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public whitelist test-api withSuffix(Ljava/lang/String;)Ljava/util/HexFormat;
    .registers 6
    .param p1, "suffix"    # Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/HexFormat;

    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/HexFormat;->digits:[B

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public whitelist test-api withUpperCase()Ljava/util/HexFormat;
    .registers 6

    .line 277
    new-instance v0, Ljava/util/HexFormat;

    iget-object v1, p0, Ljava/util/HexFormat;->delimiter:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/HexFormat;->prefix:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/HexFormat;->suffix:Ljava/lang/String;

    sget-object v4, Ljava/util/HexFormat;->UPPERCASE_DIGITS:[B

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/HexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

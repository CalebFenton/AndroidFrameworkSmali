.class final Ljava/lang/HexStringParser;
.super Ljava/lang/Object;
.source "HexStringParser.java"


# static fields
.field private static final BINARY_EXPONENT:Ljava/lang/String; = "[pP]([+-]?\\d+)"

.field private static final DOUBLE_EXPONENT_WIDTH:I = 0xb

.field private static final DOUBLE_MANTISSA_WIDTH:I = 0x34

.field private static final FLOAT_EXPONENT_WIDTH:I = 0x8

.field private static final FLOAT_MANTISSA_WIDTH:I = 0x17

.field private static final FLOAT_TYPE_SUFFIX:Ljava/lang/String; = "[fFdD]?"

.field private static final HEX_PATTERN:Ljava/lang/String; = "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

.field private static final HEX_RADIX:I = 0x10

.field private static final HEX_SIGNIFICANT:Ljava/lang/String; = "0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)"

.field private static final MAX_SIGNIFICANT_LENGTH:I = 0xf

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final EXPONENT_BASE:J

.field private final EXPONENT_WIDTH:I

.field private final MANTISSA_MASK:J

.field private final MANTISSA_WIDTH:I

.field private final MAX_EXPONENT:J

.field private final MIN_EXPONENT:J

.field private abandonedNumber:Ljava/lang/String;

.field private exponent:J

.field private mantissa:J

.field private sign:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "exponentWidth"    # I
    .param p2, "mantissaWidth"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 73
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    #@a
    .line 76
    iput p1, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    #@c
    .line 77
    iput p2, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@e
    .line 79
    add-int/lit8 v0, p1, -0x1

    #@10
    shl-long v0, v2, v0

    #@12
    not-long v0, v0

    #@13
    iput-wide v0, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    #@15
    .line 80
    shl-long v0, v2, p1

    #@17
    not-long v0, v0

    #@18
    iput-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    #@1a
    .line 81
    iget v0, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    neg-int v0, v0

    #@1f
    int-to-long v0, v0

    #@20
    iput-wide v0, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    #@22
    .line 82
    shl-long v0, v2, p2

    #@24
    not-long v0, v0

    #@25
    iput-wide v0, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    #@27
    .line 75
    return-void
.end method

.method private checkedAddExponent(J)V
    .locals 9
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 205
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@2
    add-long v2, v4, p1

    #@4
    .line 206
    .local v2, "result":J
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@6
    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    #@9
    move-result v0

    #@a
    .line 207
    .local v0, "expSign":I
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    #@d
    move-result v1

    #@e
    mul-int/2addr v1, v0

    #@f
    if-lez v1, :cond_0

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    #@14
    move-result v1

    #@15
    mul-int/2addr v1, v0

    #@16
    if-gez v1, :cond_0

    #@18
    .line 208
    int-to-long v4, v0

    #@19
    const-wide v6, 0x7fffffffffffffffL

    #@1e
    mul-long/2addr v4, v6

    #@1f
    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@21
    .line 204
    :goto_0
    return-void

    #@22
    .line 210
    :cond_0
    iput-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    #@24
    goto :goto_0
.end method

.method private countBitsLength(J)I
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 314
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@3
    move-result v0

    #@4
    .line 315
    .local v0, "leadingZeros":I
    rsub-int/lit8 v1, v0, 0x40

    #@6
    return v1
.end method

.method private discardTrailingBits(J)V
    .locals 7
    .param p1, "num"    # J

    #@0
    .prologue
    .line 246
    long-to-int v2, p1

    #@1
    const-wide/16 v4, -0x1

    #@3
    shl-long v2, v4, v2

    #@5
    not-long v0, v2

    #@6
    .line 247
    .local v0, "mask":J
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v3, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget-wide v4, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@13
    and-long/2addr v4, v0

    #@14
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    #@1e
    .line 248
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@20
    long-to-int v4, p1

    #@21
    shr-long/2addr v2, v4

    #@22
    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@24
    .line 245
    return-void
.end method

.method private fitMantissaInDesiredWidth(I)V
    .locals 4
    .param p1, "desiredWidth"    # I

    #@0
    .prologue
    .line 234
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@2
    invoke-direct {p0, v2, v3}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    #@5
    move-result v0

    #@6
    .line 235
    .local v0, "bitLength":I
    if-le v0, p1, :cond_0

    #@8
    .line 236
    sub-int v1, v0, p1

    #@a
    int-to-long v2, v1

    #@b
    invoke-direct {p0, v2, v3}, Ljava/lang/HexStringParser;->discardTrailingBits(J)V

    #@e
    .line 233
    :goto_0
    return-void

    #@f
    .line 238
    :cond_0
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@11
    sub-int v1, p1, v0

    #@13
    shl-long/2addr v2, v1

    #@14
    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@16
    goto :goto_0
.end method

.method private getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strIntegerPart"    # Ljava/lang/String;
    .param p2, "strDecimalPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 281
    .local v0, "significand":Ljava/lang/String;
    const-string/jumbo v1, "^0+"

    #@14
    const-string/jumbo v2, ""

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 283
    const-string/jumbo v0, "0"

    #@24
    .line 285
    :cond_0
    return-object v0
.end method

.method private getOffset(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "strIntegerPart"    # Ljava/lang/String;
    .param p2, "strDecimalPart"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    const/4 v4, 0x0

    #@3
    .line 295
    const-string/jumbo v2, "^0+"

    #@6
    const-string/jumbo v3, ""

    #@9
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 299
    const/4 v2, 0x1

    #@14
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 300
    .local v1, "leadingNumber":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    mul-int/lit8 v2, v2, 0x4

    #@20
    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@23
    move-result-wide v4

    #@24
    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    #@27
    move-result v3

    #@28
    add-int/2addr v2, v3

    #@29
    add-int/lit8 v2, v2, -0x1

    #@2b
    return v2

    #@2c
    .line 305
    .end local v1    # "leadingNumber":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    if-ge v0, v2, :cond_1

    #@33
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v2

    #@37
    const/16 v3, 0x30

    #@39
    if-ne v2, v3, :cond_1

    #@3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 306
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@41
    move-result v2

    #@42
    if-ne v0, v2, :cond_2

    #@44
    .line 307
    return v4

    #@45
    .line 309
    :cond_2
    add-int/lit8 v2, v0, 0x1

    #@47
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 310
    .restart local v1    # "leadingNumber":Ljava/lang/String;
    neg-int v2, v0

    #@4c
    add-int/lit8 v2, v2, -0x1

    #@4e
    mul-int/lit8 v2, v2, 0x4

    #@50
    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@53
    move-result-wide v4

    #@54
    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    #@57
    move-result v3

    #@58
    add-int/2addr v2, v3

    #@59
    add-int/lit8 v2, v2, -0x1

    #@5b
    return v2
.end method

.method private parse(Ljava/lang/String;Z)J
    .locals 8
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "isDouble"    # Z

    #@0
    .prologue
    .line 104
    sget-object v4, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v1

    #@6
    .line 105
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_1

    #@c
    .line 106
    new-instance v5, Ljava/lang/NumberFormatException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "Invalid hex "

    #@16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    if-eqz p2, :cond_0

    #@1c
    const-string/jumbo v4, "double"

    #@1f
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v6, ":"

    #@26
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v5, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@35
    throw v5

    #@36
    :cond_0
    const-string/jumbo v4, "float"

    #@39
    goto :goto_0

    #@3a
    .line 110
    :cond_1
    const/4 v4, 0x1

    #@3b
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 111
    .local v2, "signStr":Ljava/lang/String;
    const/4 v4, 0x2

    #@40
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 112
    .local v3, "significantStr":Ljava/lang/String;
    const/4 v4, 0x3

    #@45
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 114
    .local v0, "exponentStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/lang/HexStringParser;->parseHexSign(Ljava/lang/String;)V

    #@4c
    .line 115
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->parseExponent(Ljava/lang/String;)V

    #@4f
    .line 116
    invoke-direct {p0, v3}, Ljava/lang/HexStringParser;->parseMantissa(Ljava/lang/String;)V

    #@52
    .line 118
    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    #@54
    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@56
    iget v7, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    #@58
    add-int/2addr v6, v7

    #@59
    shl-long/2addr v4, v6

    #@5a
    iput-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    #@5c
    .line 119
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@5e
    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@60
    shl-long/2addr v4, v6

    #@61
    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@63
    .line 120
    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    #@65
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    #@67
    or-long/2addr v4, v6

    #@68
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@6a
    or-long/2addr v4, v6

    #@6b
    return-wide v4
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    new-instance v0, Ljava/lang/HexStringParser;

    #@2
    const/16 v1, 0xb

    #@4
    const/16 v4, 0x34

    #@6
    invoke-direct {v0, v1, v4}, Ljava/lang/HexStringParser;-><init>(II)V

    #@9
    .line 90
    .local v0, "parser":Ljava/lang/HexStringParser;
    const/4 v1, 0x1

    #@a
    invoke-direct {v0, p0, v1}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    #@d
    move-result-wide v2

    #@e
    .line 91
    .local v2, "result":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@11
    move-result-wide v4

    #@12
    return-wide v4
.end method

.method private parseExponent(Ljava/lang/String;)V
    .locals 8
    .param p1, "exponentStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v2

    #@5
    .line 135
    .local v2, "leadingChar":C
    const/16 v3, 0x2d

    #@7
    if-ne v2, v3, :cond_1

    #@9
    const/4 v1, -0x1

    #@a
    .line 136
    .local v1, "expSign":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 137
    const/4 v3, 0x1

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    .line 141
    :cond_0
    int-to-long v4, v1

    #@16
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@19
    move-result-wide v6

    #@1a
    mul-long/2addr v4, v6

    #@1b
    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@1d
    .line 142
    iget-wide v4, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    #@1f
    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 133
    :goto_1
    return-void

    #@23
    .line 135
    .end local v1    # "expSign":I
    :cond_1
    const/4 v1, 0x1

    #@24
    .restart local v1    # "expSign":I
    goto :goto_0

    #@25
    .line 143
    :catch_0
    move-exception v0

    #@26
    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    int-to-long v4, v1

    #@27
    const-wide v6, 0x7fffffffffffffffL

    #@2c
    mul-long/2addr v4, v6

    #@2d
    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    #@2f
    goto :goto_1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 4
    .param p0, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/lang/HexStringParser;

    #@2
    const/16 v2, 0x8

    #@4
    const/16 v3, 0x17

    #@6
    invoke-direct {v0, v2, v3}, Ljava/lang/HexStringParser;-><init>(II)V

    #@9
    .line 99
    .local v0, "parser":Ljava/lang/HexStringParser;
    const/4 v2, 0x0

    #@a
    invoke-direct {v0, p0, v2}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    #@d
    move-result-wide v2

    #@e
    long-to-int v1, v2

    #@f
    .line 100
    .local v1, "result":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@12
    move-result v2

    #@13
    return v2
.end method

.method private parseHexSign(Ljava/lang/String;)V
    .locals 2
    .param p1, "signStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "-"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    int-to-long v0, v0

    #@b
    iput-wide v0, p0, Ljava/lang/HexStringParser;->sign:J

    #@d
    .line 126
    return-void

    #@e
    .line 127
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private parseMantissa(Ljava/lang/String;)V
    .locals 12
    .param p1, "significantStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/16 v10, 0xf

    #@4
    .line 152
    const-string/jumbo v5, "\\."

    #@7
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 153
    .local v4, "strings":[Ljava/lang/String;
    aget-object v3, v4, v11

    #@d
    .line 154
    .local v3, "strIntegerPart":Ljava/lang/String;
    array-length v5, v4

    #@e
    if-le v5, v6, :cond_0

    #@10
    aget-object v2, v4, v6

    #@12
    .line 156
    .local v2, "strDecimalPart":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 157
    .local v1, "significand":Ljava/lang/String;
    const-string/jumbo v5, "0"

    #@19
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 158
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    #@22
    .line 159
    return-void

    #@23
    .line 154
    .end local v1    # "significand":Ljava/lang/String;
    .end local v2    # "strDecimalPart":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    #@26
    .restart local v2    # "strDecimalPart":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 162
    .restart local v1    # "significand":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getOffset(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    .line 163
    .local v0, "offset":I
    int-to-long v6, v0

    #@2c
    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    #@2f
    .line 165
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    #@31
    iget-wide v8, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    #@33
    cmp-long v5, v6, v8

    #@35
    if-ltz v5, :cond_2

    #@37
    .line 166
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setInfinite()V

    #@3a
    .line 167
    return-void

    #@3b
    .line 170
    :cond_2
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    #@3d
    iget-wide v8, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    #@3f
    cmp-long v5, v6, v8

    #@41
    if-gtz v5, :cond_3

    #@43
    .line 171
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    #@46
    .line 172
    return-void

    #@47
    .line 175
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4a
    move-result v5

    #@4b
    if-le v5, v10, :cond_4

    #@4d
    .line 176
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    iput-object v5, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    #@53
    .line 177
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 180
    :cond_4
    const/16 v5, 0x10

    #@59
    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@5c
    move-result-wide v6

    #@5d
    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@5f
    .line 182
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    #@61
    const-wide/16 v8, 0x1

    #@63
    cmp-long v5, v6, v8

    #@65
    if-ltz v5, :cond_5

    #@67
    .line 183
    invoke-direct {p0}, Ljava/lang/HexStringParser;->processNormalNumber()V

    #@6a
    .line 151
    :goto_1
    return-void

    #@6b
    .line 185
    :cond_5
    invoke-direct {p0}, Ljava/lang/HexStringParser;->processSubNormalNumber()V

    #@6e
    goto :goto_1
.end method

.method private processNormalNumber()V
    .locals 6

    #@0
    .prologue
    .line 215
    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@2
    add-int/lit8 v0, v1, 0x2

    #@4
    .line 216
    .local v0, "desiredWidth":I
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    #@7
    .line 217
    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    #@a
    .line 218
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@c
    iget-wide v4, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    #@e
    and-long/2addr v2, v4

    #@f
    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@11
    .line 214
    return-void
.end method

.method private processSubNormalNumber()V
    .locals 6

    #@0
    .prologue
    .line 222
    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 223
    .local v0, "desiredWidth":I
    iget-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    #@6
    long-to-int v1, v2

    #@7
    add-int/2addr v0, v1

    #@8
    .line 224
    const-wide/16 v2, 0x0

    #@a
    iput-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    #@c
    .line 225
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    #@f
    .line 226
    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    #@12
    .line 227
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@14
    iget-wide v4, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    #@16
    and-long/2addr v2, v4

    #@17
    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@19
    .line 221
    return-void
.end method

.method private round()V
    .locals 12

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const-wide/16 v10, 0x1

    #@3
    .line 257
    iget-object v6, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    #@5
    const-string/jumbo v7, "0+"

    #@8
    const-string/jumbo v8, ""

    #@b
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 258
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-lez v6, :cond_2

    #@15
    const/4 v1, 0x1

    #@16
    .line 260
    .local v1, "moreThanZero":Z
    :goto_0
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@18
    and-long/2addr v6, v10

    #@19
    long-to-int v0, v6

    #@1a
    .line 261
    .local v0, "lastDiscardedBit":I
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@1c
    shr-long/2addr v6, v9

    #@1d
    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@1f
    .line 262
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@21
    and-long/2addr v6, v10

    #@22
    long-to-int v5, v6

    #@23
    .line 264
    .local v5, "tailBitInMantissa":I
    if-ne v0, v9, :cond_1

    #@25
    if-nez v1, :cond_0

    #@27
    if-ne v5, v9, :cond_1

    #@29
    .line 265
    :cond_0
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@2b
    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    #@2e
    move-result v3

    #@2f
    .line 266
    .local v3, "oldLength":I
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@31
    add-long/2addr v6, v10

    #@32
    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@34
    .line 267
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@36
    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    #@39
    move-result v2

    #@3a
    .line 270
    .local v2, "newLength":I
    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    #@3c
    if-lt v3, v6, :cond_1

    #@3e
    if-le v2, v3, :cond_1

    #@40
    .line 271
    invoke-direct {p0, v10, v11}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    #@43
    .line 256
    .end local v2    # "newLength":I
    .end local v3    # "oldLength":I
    :cond_1
    return-void

    #@44
    .line 258
    .end local v0    # "lastDiscardedBit":I
    .end local v1    # "moreThanZero":Z
    .end local v5    # "tailBitInMantissa":I
    :cond_2
    const/4 v1, 0x0

    #@45
    .restart local v1    # "moreThanZero":Z
    goto :goto_0
.end method

.method private setInfinite()V
    .locals 2

    #@0
    .prologue
    .line 191
    iget-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    #@2
    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    #@4
    .line 192
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@8
    .line 190
    return-void
.end method

.method private setZero()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 196
    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    #@4
    .line 197
    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    #@6
    .line 195
    return-void
.end method

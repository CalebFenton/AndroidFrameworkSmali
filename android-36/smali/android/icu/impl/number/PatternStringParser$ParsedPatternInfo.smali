.class public Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
.super Ljava/lang/Object;
.source "PatternStringParser.java"

# interfaces
.implements Landroid/icu/impl/number/AffixPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedPatternInfo"
.end annotation


# instance fields
.field public blacklist negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

.field public blacklist pattern:Ljava/lang/String;

.field public blacklist positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/icu/impl/number/PatternStringParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o getEndpoints(I)J
    .registers 8
    .param p1, "flags"    # I

    .line 133
    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 134
    .local v0, "prefix":Z
    :goto_9
    and-int/lit16 v3, p1, 0x200

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    .line 135
    .local v3, "isNegative":Z
    :goto_10
    and-int/lit16 v4, p1, 0x400

    if-eqz v4, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 136
    .local v1, "padding":Z
    :goto_16
    if-eqz v3, :cond_1f

    if-eqz v1, :cond_1f

    .line 137
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide v4

    .line 138
    :cond_1f
    if-eqz v1, :cond_26

    .line 139
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide v4

    .line 140
    :cond_26
    if-eqz v0, :cond_2f

    if-eqz v3, :cond_2f

    .line 141
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide v4

    .line 142
    :cond_2f
    if-eqz v0, :cond_36

    .line 143
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide v4

    .line 144
    :cond_36
    if-eqz v3, :cond_3d

    .line 145
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide v4

    .line 147
    :cond_3d
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide v4
.end method

.method public static blacklist getLengthFromEndpoints(J)I
    .registers 5
    .param p0, "endpoints"    # J

    .line 116
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    .line 117
    .local v0, "left":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    .line 118
    .local v1, "right":I
    sub-int v2, v1, v0

    return v2
.end method


# virtual methods
.method public blacklist charAt(II)C
    .registers 9
    .param p1, "flags"    # I
    .param p2, "index"    # I

    .line 101
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    .line 102
    .local v0, "endpoints":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 103
    .local v2, "left":I
    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    .line 104
    .local v3, "right":I
    if-ltz p2, :cond_1c

    sub-int v4, v3, v2

    if-ge p2, v4, :cond_1c

    .line 107
    iget-object v4, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    add-int v5, v2, p2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    return v4

    .line 105
    :cond_1c
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public blacklist containsSymbolType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 173
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public blacklist currencyAsDecimal()Z
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencyDecimal:Z

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 7
    .param p1, "flags"    # I

    .line 123
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    .line 124
    .local v0, "endpoints":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 125
    .local v2, "left":I
    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    .line 126
    .local v3, "right":I
    if-ne v2, v3, :cond_12

    .line 127
    const-string v4, ""

    return-object v4

    .line 129
    :cond_12
    iget-object v4, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist hasBody()Z
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasCurrencySign()Z
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public blacklist hasNegativeSubpattern()Z
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist length(I)I
    .registers 4
    .param p1, "flags"    # I

    .line 112
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getLengthFromEndpoints(J)I

    move-result v0

    return v0
.end method

.method public blacklist negativeHasMinusSign()Z
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    return v0
.end method

.method public blacklist positiveHasPlusSign()Z
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    return v0
.end method

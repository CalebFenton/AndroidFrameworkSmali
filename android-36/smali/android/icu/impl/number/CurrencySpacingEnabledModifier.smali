.class public Landroid/icu/impl/number/CurrencySpacingEnabledModifier;
.super Landroid/icu/impl/number/ConstantMultiFieldModifier;
.source "CurrencySpacingEnabledModifier.java"


# static fields
.field static final blacklist IN_CURRENCY:S = 0x0s

.field static final blacklist IN_NUMBER:S = 0x1s

.field static final blacklist PREFIX:B = 0x0t

.field static final blacklist SUFFIX:B = 0x1t

.field private static final blacklist UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

.field private static final blacklist UNISET_NOTSZ:Landroid/icu/text/UnicodeSet;


# instance fields
.field private final blacklist afterPrefixInsert:Ljava/lang/String;

.field private final blacklist afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

.field private final blacklist beforeSuffixInsert:Ljava/lang/String;

.field private final blacklist beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:digit:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

    .line 19
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:^S:]&[:^Z:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTSZ:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZLandroid/icu/text/DecimalFormatSymbols;)V
    .registers 12
    .param p1, "prefix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "suffix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "overwrite"    # Z
    .param p4, "strong"    # Z
    .param p5, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/number/ConstantMultiFieldModifier;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZ)V

    .line 43
    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_3e

    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v4, :cond_3e

    .line 44
    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->getLastCodePoint()I

    move-result v0

    .line 45
    .local v0, "prefixCp":I
    invoke-static {p5, v1, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 46
    .local v4, "prefixUnicodeSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 47
    invoke-static {p5, v2, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 48
    iget-object v5, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 49
    invoke-static {p5, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    goto :goto_3d

    .line 51
    :cond_39
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 52
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    .line 54
    .end local v0    # "prefixCp":I
    .end local v4    # "prefixUnicodeSet":Landroid/icu/text/UnicodeSet;
    :goto_3d
    goto :goto_42

    .line 55
    :cond_3e
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 56
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    .line 58
    :goto_42
    invoke-virtual {p2}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_75

    invoke-virtual {p2, v1}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v4, :cond_75

    .line 59
    invoke-virtual {p2}, Landroid/icu/impl/FormattedStringBuilder;->getFirstCodePoint()I

    move-result v0

    .line 60
    .local v0, "suffixCp":I
    invoke-static {p5, v1, v2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 61
    .local v1, "suffixUnicodeSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 62
    invoke-static {p5, v2, v2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 63
    iget-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 64
    invoke-static {p5, v2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    goto :goto_74

    .line 66
    :cond_70
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 67
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    .line 69
    .end local v0    # "suffixCp":I
    .end local v1    # "suffixUnicodeSet":Landroid/icu/text/UnicodeSet;
    :goto_74
    goto :goto_79

    .line 70
    :cond_75
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 71
    iput-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    .line 73
    :goto_79
    return-void
.end method

.method public static blacklist applyCurrencySpacing(Landroid/icu/impl/FormattedStringBuilder;IIIILandroid/icu/text/DecimalFormatSymbols;)I
    .registers 13
    .param p0, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "prefixStart"    # I
    .param p2, "prefixLen"    # I
    .param p3, "suffixStart"    # I
    .param p4, "suffixLen"    # I
    .param p5, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_7

    move v3, v1

    goto :goto_8

    :cond_7
    move v3, v2

    .line 108
    .local v3, "hasPrefix":Z
    :goto_8
    if-lez p4, :cond_c

    move v4, v1

    goto :goto_d

    :cond_c
    move v4, v2

    .line 109
    .local v4, "hasSuffix":Z
    :goto_d
    sub-int v5, p3, p1

    sub-int/2addr v5, p2

    if-lez v5, :cond_14

    move v5, v1

    goto :goto_15

    :cond_14
    move v5, v2

    .line 110
    .local v5, "hasNumber":Z
    :goto_15
    if-eqz v3, :cond_20

    if-eqz v5, :cond_20

    .line 111
    add-int v6, p1, p2

    invoke-static {p0, v6, v2, p5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Landroid/icu/impl/FormattedStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    :cond_20
    if-eqz v4, :cond_2b

    if-eqz v5, :cond_2b

    .line 114
    add-int v2, p3, v0

    invoke-static {p0, v2, v1, p5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Landroid/icu/impl/FormattedStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_2b
    return v0
.end method

.method private static blacklist applyCurrencySpacingAffix(Landroid/icu/impl/FormattedStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I
    .registers 11
    .param p0, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p1, "index"    # I
    .param p2, "affix"    # B
    .param p3, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 128
    if-nez p2, :cond_9

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 129
    :cond_9
    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    nop

    .line 130
    .local v0, "affixField":Ljava/lang/Object;
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    .line 131
    return v2

    .line 133
    :cond_14
    if-nez p2, :cond_1b

    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v1

    .line 134
    .local v1, "affixCp":I
    :goto_1f
    invoke-static {p3, v2, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 135
    .local v3, "affixUniset":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 136
    return v2

    .line 138
    :cond_2a
    if-nez p2, :cond_31

    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v4

    goto :goto_35

    :cond_31
    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v4

    .line 139
    .local v4, "numberCp":I
    :goto_35
    const/4 v5, 0x1

    invoke-static {p3, v5, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    .line 140
    .local v5, "numberUniset":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v5, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-nez v6, :cond_41

    .line 141
    return v2

    .line 143
    :cond_41
    invoke-static {p3, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "spacingString":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v2, v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v6

    return v6
.end method

.method private static blacklist getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;
    .registers 4
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "affix"    # B

    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;
    .registers 6
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "position"    # S
    .param p2, "affix"    # B

    .line 155
    nop

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_7

    move v2, v0

    goto :goto_8

    .line 158
    :cond_7
    move v2, v1

    :goto_8
    if-ne p2, v1, :cond_b

    move v0, v1

    .line 156
    :cond_b
    invoke-virtual {p0, v2, v0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "[:digit:]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 161
    sget-object v1, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

    return-object v1

    .line 162
    :cond_1a
    const-string v1, "[[:^S:]&[:^Z:]]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 163
    sget-object v1, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTSZ:Landroid/icu/text/UnicodeSet;

    return-object v1

    .line 165
    :cond_25
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 8
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "length":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-lez v1, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 82
    invoke-virtual {p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 84
    iget-object v1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1d
    sub-int v1, p3, p2

    if-lez v1, :cond_3a

    iget-object v1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 88
    invoke-virtual {p1, p3}, Landroid/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 90
    add-int v1, p3, v0

    iget-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_3a
    add-int v1, p3, v0

    invoke-super {p0, p1, p2, v1}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    return v0
.end method

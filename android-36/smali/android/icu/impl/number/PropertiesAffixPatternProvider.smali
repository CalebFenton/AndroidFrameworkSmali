.class public Landroid/icu/impl/number/PropertiesAffixPatternProvider;
.super Ljava/lang/Object;
.source "PropertiesAffixPatternProvider.java"

# interfaces
.implements Landroid/icu/impl/number/AffixPatternProvider;


# instance fields
.field private final blacklist currencyAsDecimal:Z

.field private final blacklist isCurrencyPattern:Z

.field private final blacklist negPrefix:Ljava/lang/String;

.field private final blacklist negSuffix:Ljava/lang/String;

.field private final blacklist posPrefix:Ljava/lang/String;

.field private final blacklist posSuffix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/number/DecimalFormatProperties;)V
    .registers 13
    .param p1, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "ppo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "pso":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "npo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "nso":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "ppp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "psp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "npp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "nsp":Ljava/lang/String;
    const-string v8, ""

    if-eqz v0, :cond_3a

    .line 50
    iput-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_41

    .line 51
    :cond_3a
    if-eqz v4, :cond_3f

    .line 52
    iput-object v4, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_41

    .line 55
    :cond_3f
    iput-object v8, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    .line 58
    :goto_41
    if-eqz v1, :cond_46

    .line 59
    iput-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_4d

    .line 60
    :cond_46
    if-eqz v5, :cond_4b

    .line 61
    iput-object v5, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_4d

    .line 64
    :cond_4b
    iput-object v8, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    .line 67
    :goto_4d
    if-eqz v2, :cond_52

    .line 68
    iput-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_6f

    .line 69
    :cond_52
    if-eqz v6, :cond_57

    .line 70
    iput-object v6, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_6f

    .line 74
    :cond_57
    const-string v9, "-"

    if-nez v4, :cond_5c

    goto :goto_6d

    :cond_5c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6d
    iput-object v9, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 77
    :goto_6f
    if-eqz v3, :cond_74

    .line 78
    iput-object v3, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_7f

    .line 79
    :cond_74
    if-eqz v7, :cond_79

    .line 80
    iput-object v7, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_7f

    .line 83
    :cond_79
    if-nez v5, :cond_7c

    goto :goto_7d

    :cond_7c
    move-object v8, v5

    :goto_7d
    iput-object v8, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    .line 88
    :goto_7f
    nop

    .line 89
    invoke-static {v4}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 90
    invoke-static {v5}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 91
    invoke-static {v6}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 92
    invoke-static {v7}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 93
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyAsDecimal()Z

    move-result v8

    if-eqz v8, :cond_9f

    goto :goto_a1

    :cond_9f
    const/4 v8, 0x0

    goto :goto_a2

    :cond_a1
    :goto_a1
    const/4 v8, 0x1

    :goto_a2
    iput-boolean v8, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->isCurrencyPattern:Z

    .line 95
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyAsDecimal()Z

    move-result v8

    iput-boolean v8, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->currencyAsDecimal:Z

    .line 96
    return-void
.end method

.method public static blacklist forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/AffixPatternProvider;
    .registers 3
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 18
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v0

    if-nez v0, :cond_c

    .line 19
    new-instance v0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;-><init>(Landroid/icu/impl/number/DecimalFormatProperties;)V

    return-object v0

    .line 21
    :cond_c
    new-instance v0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;-><init>(Landroid/icu/text/CurrencyPluralInfo;Landroid/icu/impl/number/DecimalFormatProperties;)V

    return-object v0
.end method


# virtual methods
.method public blacklist charAt(II)C
    .registers 4
    .param p1, "flags"    # I
    .param p2, "i"    # I

    .line 100
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist containsSymbolType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 152
    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 153
    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 152
    :goto_24
    return v0
.end method

.method public blacklist currencyAsDecimal()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->currencyAsDecimal:Z

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "flags"    # I

    .line 110
    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 111
    .local v0, "prefix":Z
    :goto_9
    and-int/lit16 v3, p1, 0x200

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    .line 112
    .local v1, "negative":Z
    :goto_f
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    .line 113
    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    return-object v2

    .line 114
    :cond_16
    if-eqz v0, :cond_1b

    .line 115
    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    return-object v2

    .line 116
    :cond_1b
    if-eqz v1, :cond_20

    .line 117
    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    return-object v2

    .line 119
    :cond_20
    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    return-object v2
.end method

.method public blacklist hasBody()Z
    .registers 2

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hasCurrencySign()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->isCurrencyPattern:Z

    return v0
.end method

.method public blacklist hasNegativeSubpattern()Z
    .registers 6

    .line 131
    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_32

    goto :goto_34

    :cond_32
    move v2, v4

    goto :goto_35

    :cond_34
    :goto_34
    nop

    .line 131
    :goto_35
    return v2
.end method

.method public blacklist length(I)I
    .registers 3
    .param p1, "flags"    # I

    .line 105
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public blacklist negativeHasMinusSign()Z
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    .line 142
    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 141
    :goto_15
    return v0
.end method

.method public blacklist positiveHasPlusSign()Z
    .registers 3

    .line 125
    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    .line 126
    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 125
    :goto_15
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

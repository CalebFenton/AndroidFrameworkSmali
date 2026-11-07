.class final Landroid/icu/number/NumberPropertyMapper;
.super Ljava/lang/Object;
.source "NumberPropertyMapper.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 4
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/number/NumberPropertyMapper;->oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    .line 43
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v1

    check-cast v1, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v1
.end method

.method public static blacklist create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 5
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "exportedProperties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 51
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberPropertyMapper;->oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    .line 52
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v1

    check-cast v1, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v1
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 62
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    .line 63
    .local v0, "properties":Landroid/icu/impl/number/DecimalFormatProperties;
    invoke-static {v0, p1}, Landroid/icu/number/NumberPropertyMapper;->create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;
    .registers 32
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "exportedProperties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v2}, Landroid/icu/impl/number/MacroProps;-><init>()V

    .line 85
    .local v2, "macros":Landroid/icu/impl/number/MacroProps;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    .line 91
    .local v3, "locale":Landroid/icu/util/ULocale;
    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPluralRules()Landroid/icu/text/PluralRules;

    move-result-object v4

    .line 98
    .local v4, "rules":Landroid/icu/text/PluralRules;
    if-nez v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/text/CurrencyPluralInfo;->getPluralRules()Landroid/icu/text/PluralRules;

    move-result-object v4

    .line 101
    :cond_23
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 107
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/AffixPatternProvider;

    move-result-object v5

    .line 108
    .local v5, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v6

    if-nez v6, :cond_46

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v6

    if-nez v6, :cond_46

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v6

    if-nez v6, :cond_46

    .line 117
    invoke-interface {v5}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v6

    if-eqz v6, :cond_44

    goto :goto_46

    :cond_44
    const/4 v6, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v6, 0x1

    .line 118
    .local v6, "useCurrency":Z
    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v9

    invoke-static {v9, v3, v0}, Landroid/icu/impl/number/CustomSymbolCurrency;->resolve(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/Currency;

    move-result-object v9

    .line 119
    .local v9, "currency":Landroid/icu/util/Currency;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v10

    .line 120
    .local v10, "currencyUsage":Landroid/icu/util/Currency$CurrencyUsage;
    if-eqz v10, :cond_57

    const/4 v11, 0x1

    goto :goto_58

    :cond_57
    const/4 v11, 0x0

    .line 121
    .local v11, "explicitCurrencyUsage":Z
    :goto_58
    if-nez v11, :cond_5c

    .line 122
    sget-object v10, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    .line 124
    :cond_5c
    if-eqz v6, :cond_60

    .line 125
    iput-object v9, v2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 132
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v12

    .line 133
    .local v12, "maxInt":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v13

    .line 134
    .local v13, "minInt":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v14

    .line 135
    .local v14, "maxFrac":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v15

    .line 136
    .local v15, "minFrac":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v7

    .line 137
    .local v7, "minSig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v8

    .line 138
    .local v8, "maxSig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    .line 139
    .local v0, "roundingIncrement":Ljava/math/BigDecimal;
    move-object/from16 v18, v3

    .end local v3    # "locale":Landroid/icu/util/ULocale;
    .local v18, "locale":Landroid/icu/util/ULocale;
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/RoundingUtils;->getMathContextOrUnlimited(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object v3

    .line 140
    .local v3, "mathContext":Ljava/math/MathContext;
    move-object/from16 v19, v4

    .end local v4    # "rules":Landroid/icu/text/PluralRules;
    .local v19, "rules":Landroid/icu/text/PluralRules;
    const/4 v4, -0x1

    if-ne v15, v4, :cond_8d

    if-eq v14, v4, :cond_8a

    goto :goto_8d

    :cond_8a
    const/16 v20, 0x0

    goto :goto_8f

    :cond_8d
    :goto_8d
    const/16 v20, 0x1

    .line 141
    .local v20, "explicitMinMaxFrac":Z
    :goto_8f
    if-ne v7, v4, :cond_97

    if-eq v8, v4, :cond_94

    goto :goto_97

    :cond_94
    const/16 v21, 0x0

    goto :goto_99

    :cond_97
    :goto_97
    const/16 v21, 0x1

    .line 145
    .local v21, "explicitMinMaxSig":Z
    :goto_99
    if-eqz v6, :cond_be

    .line 146
    if-ne v15, v4, :cond_a8

    if-ne v14, v4, :cond_a8

    .line 147
    invoke-virtual {v9, v10}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v15

    .line 148
    invoke-virtual {v9, v10}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v14

    goto :goto_be

    .line 149
    :cond_a8
    if-ne v15, v4, :cond_b3

    .line 150
    invoke-virtual {v9, v10}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_be

    .line 151
    :cond_b3
    const/4 v4, -0x1

    if-ne v14, v4, :cond_be

    .line 152
    invoke-virtual {v9, v10}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 159
    :cond_be
    :goto_be
    const/16 v4, 0x3e7

    if-nez v13, :cond_ea

    if-eqz v14, :cond_ea

    .line 160
    if-ltz v15, :cond_ce

    if-nez v15, :cond_cb

    if-nez v12, :cond_cb

    goto :goto_ce

    :cond_cb
    move/from16 v23, v15

    goto :goto_d0

    :cond_ce
    :goto_ce
    const/16 v23, 0x1

    :goto_d0
    move/from16 v15, v23

    .line 161
    if-gez v14, :cond_d7

    const/16 v23, -0x1

    goto :goto_de

    :cond_d7
    if-ge v14, v15, :cond_dc

    move/from16 v23, v15

    goto :goto_de

    :cond_dc
    move/from16 v23, v14

    .line 162
    .end local v14    # "maxFrac":I
    .local v23, "maxFrac":I
    :goto_de
    const/4 v13, 0x0

    .line 163
    if-gez v12, :cond_e3

    :goto_e1
    const/4 v14, -0x1

    goto :goto_e7

    :cond_e3
    if-le v12, v4, :cond_e6

    goto :goto_e1

    :cond_e6
    move v14, v12

    :goto_e7
    move/from16 v12, v23

    .end local v12    # "maxInt":I
    .local v14, "maxInt":I
    goto :goto_119

    .line 166
    .end local v23    # "maxFrac":I
    .restart local v12    # "maxInt":I
    .local v14, "maxFrac":I
    :cond_ea
    if-gez v15, :cond_ef

    const/16 v23, 0x0

    goto :goto_f1

    :cond_ef
    move/from16 v23, v15

    :goto_f1
    move/from16 v15, v23

    .line 167
    if-gez v14, :cond_f8

    const/16 v23, -0x1

    goto :goto_ff

    :cond_f8
    if-ge v14, v15, :cond_fd

    move/from16 v23, v15

    goto :goto_ff

    :cond_fd
    move/from16 v23, v14

    .line 168
    .end local v14    # "maxFrac":I
    .restart local v23    # "maxFrac":I
    :goto_ff
    if-gtz v13, :cond_103

    :goto_101
    const/4 v14, 0x1

    goto :goto_107

    :cond_103
    if-le v13, v4, :cond_106

    goto :goto_101

    :cond_106
    move v14, v13

    .line 169
    .end local v13    # "minInt":I
    .local v14, "minInt":I
    :goto_107
    if-gez v12, :cond_10b

    const/4 v13, -0x1

    goto :goto_114

    .line 170
    :cond_10b
    if-ge v12, v14, :cond_10f

    move v13, v14

    goto :goto_114

    :cond_10f
    if-le v12, v4, :cond_113

    const/4 v13, -0x1

    goto :goto_114

    :cond_113
    move v13, v12

    :goto_114
    move v12, v14

    move v14, v13

    move v13, v12

    move/from16 v12, v23

    .line 172
    .end local v23    # "maxFrac":I
    .local v12, "maxFrac":I
    .restart local v13    # "minInt":I
    .local v14, "maxInt":I
    :goto_119
    const/16 v23, 0x0

    .line 173
    .local v23, "rounding":Landroid/icu/number/Precision;
    if-eqz v11, :cond_129

    .line 174
    invoke-static {v10}, Landroid/icu/number/Precision;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/icu/number/CurrencyPrecision;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;

    move-result-object v23

    move-object/from16 v4, v23

    goto/16 :goto_184

    .line 175
    :cond_129
    if-eqz v0, :cond_149

    .line 176
    invoke-static {v0, v12}, Landroid/icu/impl/number/PatternStringUtils;->ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z

    move-result v4

    if-eqz v4, :cond_138

    .line 177
    invoke-static {v15, v12}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_184

    .line 179
    :cond_138
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-le v15, v4, :cond_142

    .line 180
    invoke-virtual {v0, v15}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 182
    :cond_142
    invoke-static {v0}, Landroid/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_184

    .line 184
    :cond_149
    if-eqz v21, :cond_170

    .line 185
    const/4 v4, 0x1

    if-ge v7, v4, :cond_150

    const/4 v4, 0x1

    goto :goto_158

    .line 186
    :cond_150
    const/16 v4, 0x3e7

    if-le v7, v4, :cond_157

    const/16 v4, 0x3e7

    goto :goto_158

    :cond_157
    move v4, v7

    :goto_158
    move v7, v4

    .line 187
    if-gez v8, :cond_15e

    const/16 v4, 0x3e7

    goto :goto_168

    .line 188
    :cond_15e
    if-ge v8, v7, :cond_162

    move v4, v7

    goto :goto_168

    .line 189
    :cond_162
    const/16 v4, 0x3e7

    if-le v8, v4, :cond_167

    goto :goto_168

    .line 190
    :cond_167
    move v4, v8

    :goto_168
    move v8, v4

    .line 191
    invoke-static {v7, v8}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_184

    .line 192
    :cond_170
    if-eqz v20, :cond_179

    .line 193
    invoke-static {v15, v12}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_184

    .line 194
    :cond_179
    if-eqz v6, :cond_182

    .line 195
    invoke-static {v10}, Landroid/icu/number/Precision;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_184

    .line 194
    :cond_182
    move-object/from16 v4, v23

    .line 197
    .end local v23    # "rounding":Landroid/icu/number/Precision;
    .local v4, "rounding":Landroid/icu/number/Precision;
    :goto_184
    if-eqz v4, :cond_18c

    .line 198
    invoke-virtual {v4, v3}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v4

    .line 199
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 206
    :cond_18c
    move-object/from16 v23, v0

    .end local v0    # "roundingIncrement":Ljava/math/BigDecimal;
    .local v23, "roundingIncrement":Ljava/math/BigDecimal;
    invoke-static {v13}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 212
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/Grouper;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Grouper;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v0

    if-lez v0, :cond_1aa

    .line 219
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/Padder;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Padder;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 226
    :cond_1aa
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0

    if-eqz v0, :cond_1b3

    sget-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_1b5

    .line 227
    :cond_1b3
    sget-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    :goto_1b5
    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v0

    if-eqz v0, :cond_1c0

    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_1c2

    :cond_1c0
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    :goto_1c2
    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0

    move-object/from16 v24, v5

    const/4 v5, -0x1

    .end local v5    # "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    .local v24, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    if-eq v0, v5, :cond_26f

    .line 243
    const/16 v0, 0x8

    if-le v14, v0, :cond_1de

    .line 246
    move v0, v13

    .line 247
    .end local v14    # "maxInt":I
    .local v0, "maxInt":I
    invoke-static {v13}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v5

    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    move v14, v0

    goto :goto_1ee

    .line 248
    .end local v0    # "maxInt":I
    .restart local v14    # "maxInt":I
    :cond_1de
    if-le v14, v13, :cond_1ee

    const/4 v0, 0x1

    if-le v13, v0, :cond_1ee

    .line 250
    const/4 v13, 0x1

    .line 251
    invoke-static {v13}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 253
    :cond_1ee
    :goto_1ee
    if-gez v14, :cond_1f2

    const/4 v0, -0x1

    goto :goto_1f3

    :cond_1f2
    move v0, v14

    .line 254
    .local v0, "engineering":I
    :goto_1f3
    new-instance v5, Landroid/icu/number/ScientificNotation;

    move/from16 v25, v6

    if-ne v0, v13, :cond_1fb

    const/4 v6, 0x1

    goto :goto_1fc

    :cond_1fb
    const/4 v6, 0x0

    .line 260
    .end local v6    # "useCurrency":Z
    .local v25, "useCurrency":Z
    :goto_1fc
    move/from16 v16, v7

    .end local v7    # "minSig":I
    .local v16, "minSig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v7

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v26

    if-eqz v26, :cond_20b

    sget-object v26, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_20d

    :cond_20b
    sget-object v26, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    :goto_20d
    move/from16 v27, v8

    move-object/from16 v8, v26

    .end local v8    # "maxSig":I
    .local v27, "maxSig":I
    invoke-direct {v5, v0, v6, v7, v8}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 265
    iget-object v5, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v5, v5, Landroid/icu/number/FractionPrecision;

    if-eqz v5, :cond_26c

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v5

    .line 269
    .local v5, "maxInt_":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v6

    .line 270
    .local v6, "minInt_":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v7

    .line 271
    .local v7, "minFrac_":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v8

    .line 272
    .local v8, "maxFrac_":I
    if-nez v6, :cond_23d

    if-nez v8, :cond_23d

    .line 274
    move/from16 v26, v0

    .end local v0    # "engineering":I
    .local v26, "engineering":I
    invoke-static {}, Landroid/icu/number/Precision;->constructInfinite()Landroid/icu/number/Precision;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_275

    .line 272
    .end local v26    # "engineering":I
    .restart local v0    # "engineering":I
    :cond_23d
    move/from16 v26, v0

    .line 275
    .end local v0    # "engineering":I
    .restart local v26    # "engineering":I
    if-nez v6, :cond_253

    if-nez v7, :cond_253

    .line 277
    add-int/lit8 v0, v8, 0x1

    move/from16 v28, v7

    const/4 v7, 0x1

    .end local v7    # "minFrac_":I
    .local v28, "minFrac_":I
    invoke-static {v7, v0}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_275

    .line 275
    .end local v28    # "minFrac_":I
    .restart local v7    # "minFrac_":I
    :cond_253
    move/from16 v28, v7

    .line 279
    .end local v7    # "minFrac_":I
    .restart local v28    # "minFrac_":I
    add-int v0, v6, v8

    .line 281
    .local v0, "maxSig_":I
    if-le v5, v6, :cond_25d

    const/4 v7, 0x1

    if-le v6, v7, :cond_25d

    .line 282
    const/4 v6, 0x1

    .line 284
    :cond_25d
    add-int v7, v6, v28

    .line 287
    .local v7, "minSig_":I
    move/from16 v17, v5

    .end local v5    # "maxInt_":I
    .local v17, "maxInt_":I
    invoke-static {v7, v0}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v5

    .line 288
    invoke-virtual {v5, v3}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v5

    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_275

    .line 265
    .end local v6    # "minInt_":I
    .end local v7    # "minSig_":I
    .end local v8    # "maxFrac_":I
    .end local v17    # "maxInt_":I
    .end local v26    # "engineering":I
    .end local v28    # "minFrac_":I
    .local v0, "engineering":I
    :cond_26c
    move/from16 v26, v0

    .end local v0    # "engineering":I
    .restart local v26    # "engineering":I
    goto :goto_275

    .line 239
    .end local v16    # "minSig":I
    .end local v25    # "useCurrency":Z
    .end local v26    # "engineering":I
    .end local v27    # "maxSig":I
    .local v6, "useCurrency":Z
    .local v7, "minSig":I
    .local v8, "maxSig":I
    :cond_26f
    move/from16 v25, v6

    move/from16 v16, v7

    move/from16 v27, v8

    .line 297
    .end local v6    # "useCurrency":Z
    .end local v7    # "minSig":I
    .end local v8    # "maxSig":I
    .restart local v16    # "minSig":I
    .restart local v25    # "useCurrency":Z
    .restart local v27    # "maxSig":I
    :goto_275
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    if-eqz v0, :cond_2a2

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_28d

    .line 299
    new-instance v0, Landroid/icu/number/CompactNotation;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/icu/number/CompactNotation;-><init>(Ljava/util/Map;)V

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    goto :goto_2a2

    .line 300
    :cond_28d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    sget-object v5, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne v0, v5, :cond_29c

    .line 301
    invoke-static {}, Landroid/icu/number/Notation;->compactLong()Landroid/icu/number/CompactNotation;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    goto :goto_2a2

    .line 303
    :cond_29c
    invoke-static {}, Landroid/icu/number/Notation;->compactShort()Landroid/icu/number/CompactNotation;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 311
    :cond_2a2
    :goto_2a2
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/RoundingUtils;->scaleFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/Scale;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 317
    if-eqz v1, :cond_322

    .line 319
    invoke-virtual {v1, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrency(Landroid/icu/util/Currency;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 320
    invoke-virtual {v1, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 321
    invoke-virtual {v3}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 322
    invoke-virtual {v1, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 323
    const/4 v5, -0x1

    if-ne v14, v5, :cond_2c1

    const v0, 0x7fffffff

    goto :goto_2c2

    :cond_2c1
    move v0, v14

    :goto_2c2
    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 326
    instance-of v0, v4, Landroid/icu/number/CurrencyPrecision;

    if-eqz v0, :cond_2d1

    .line 327
    move-object v0, v4

    check-cast v0, Landroid/icu/number/CurrencyPrecision;

    invoke-virtual {v0, v9}, Landroid/icu/number/CurrencyPrecision;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;

    move-result-object v0

    .local v0, "rounding_":Landroid/icu/number/Precision;
    goto :goto_2d2

    .line 329
    .end local v0    # "rounding_":Landroid/icu/number/Precision;
    :cond_2d1
    move-object v0, v4

    .line 331
    .restart local v0    # "rounding_":Landroid/icu/number/Precision;
    :goto_2d2
    move v5, v15

    .line 332
    .local v5, "minFrac_":I
    move v6, v12

    .line 333
    .local v6, "maxFrac_":I
    move/from16 v7, v16

    .line 334
    .local v7, "minSig_":I
    move/from16 v8, v27

    .line 335
    .local v8, "maxSig_":I
    const/16 v17, 0x0

    .line 336
    .local v17, "increment_":Ljava/math/BigDecimal;
    move-object/from16 v22, v2

    .end local v2    # "macros":Landroid/icu/impl/number/MacroProps;
    .local v22, "macros":Landroid/icu/impl/number/MacroProps;
    instance-of v2, v0, Landroid/icu/number/Precision$FractionRounderImpl;

    if-eqz v2, :cond_2ed

    .line 337
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$FractionRounderImpl;

    iget v5, v2, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    .line 338
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$FractionRounderImpl;

    iget v6, v2, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    move-object/from16 v2, v17

    goto :goto_312

    .line 339
    :cond_2ed
    instance-of v2, v0, Landroid/icu/number/Precision$IncrementRounderImpl;

    if-eqz v2, :cond_2ff

    .line 340
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$IncrementRounderImpl;

    iget-object v2, v2, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    .line 341
    .end local v17    # "increment_":Ljava/math/BigDecimal;
    .local v2, "increment_":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 342
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    goto :goto_312

    .line 343
    .end local v2    # "increment_":Ljava/math/BigDecimal;
    .restart local v17    # "increment_":Ljava/math/BigDecimal;
    :cond_2ff
    instance-of v2, v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    if-eqz v2, :cond_310

    .line 344
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$SignificantRounderImpl;

    iget v7, v2, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    .line 345
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$SignificantRounderImpl;

    iget v8, v2, Landroid/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    move-object/from16 v2, v17

    goto :goto_312

    .line 343
    :cond_310
    move-object/from16 v2, v17

    .line 348
    .end local v17    # "increment_":Ljava/math/BigDecimal;
    .restart local v2    # "increment_":Ljava/math/BigDecimal;
    :goto_312
    invoke-virtual {v1, v5}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 349
    invoke-virtual {v1, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 350
    invoke-virtual {v1, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 351
    invoke-virtual {v1, v8}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 352
    invoke-virtual {v1, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_324

    .line 317
    .end local v0    # "rounding_":Landroid/icu/number/Precision;
    .end local v5    # "minFrac_":I
    .end local v6    # "maxFrac_":I
    .end local v7    # "minSig_":I
    .end local v8    # "maxSig_":I
    .end local v22    # "macros":Landroid/icu/impl/number/MacroProps;
    .local v2, "macros":Landroid/icu/impl/number/MacroProps;
    :cond_322
    move-object/from16 v22, v2

    .line 355
    .end local v2    # "macros":Landroid/icu/impl/number/MacroProps;
    .restart local v22    # "macros":Landroid/icu/impl/number/MacroProps;
    :goto_324
    return-object v22
.end method

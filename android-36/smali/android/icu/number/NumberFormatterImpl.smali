.class Landroid/icu/number/NumberFormatterImpl;
.super Ljava/lang/Object;
.source "NumberFormatterImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist DEFAULT_CURRENCY:Landroid/icu/util/Currency;


# instance fields
.field final blacklist microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

.field final blacklist micros:Landroid/icu/impl/number/MicroProps;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    nop

    .line 89
    const-string v0, "XXX"

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Landroid/icu/util/Currency;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/number/MacroProps;)V
    .registers 4
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/icu/impl/number/MicroProps;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/MicroProps;-><init>(Z)V

    iput-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->micros:Landroid/icu/impl/number/MicroProps;

    .line 57
    iget-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->micros:Landroid/icu/impl/number/MicroProps;

    invoke-static {p1, v0, v1}, Landroid/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/MicroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 58
    return-void
.end method

.method public static blacklist formatStatic(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "inValue"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "outString"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 67
    invoke-static {p0, p1}, Landroid/icu/number/NumberFormatterImpl;->preProcessUnsafe(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 68
    .local v0, "result":Landroid/icu/impl/number/MicroProps;
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    .line 69
    .local v2, "length":I
    invoke-static {v0, p2, v1, v2}, Landroid/icu/number/NumberFormatterImpl;->writeAffixes(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 70
    return-object v0
.end method

.method private static blacklist getPrefixSuffixImpl(Landroid/icu/impl/number/MicroPropsGenerator;BLandroid/icu/impl/FormattedStringBuilder;)I
    .registers 7
    .param p0, "generator"    # Landroid/icu/impl/number/MicroPropsGenerator;
    .param p1, "signum"    # B
    .param p2, "output"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 139
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    .line 140
    .local v0, "quantity":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    if-gez p1, :cond_b

    .line 141
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->negate()V

    .line 143
    :cond_b
    invoke-interface {p0, v0}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v2

    .line 144
    .local v2, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v3, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, p2, v1, v1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 145
    iget-object v1, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v1}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v1

    return v1
.end method

.method public static blacklist getPrefixSuffixStatic(Landroid/icu/impl/number/MacroProps;BLandroid/icu/impl/StandardPlural;Landroid/icu/impl/FormattedStringBuilder;)I
    .registers 7
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "signum"    # B
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;
    .param p3, "output"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 84
    new-instance v0, Landroid/icu/impl/number/MicroProps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/MicroProps;-><init>(Z)V

    .line 85
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    invoke-static {p0, v0, v1}, Landroid/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/MicroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v1

    .line 86
    .local v1, "microPropsGenerator":Landroid/icu/impl/number/MicroPropsGenerator;
    invoke-static {v1, p1, p3}, Landroid/icu/number/NumberFormatterImpl;->getPrefixSuffixImpl(Landroid/icu/impl/number/MicroPropsGenerator;BLandroid/icu/impl/FormattedStringBuilder;)I

    move-result v2

    return v2
.end method

.method private static blacklist macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/MicroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;
    .registers 33
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p2, "safe"    # Z

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move-object/from16 v2, p1

    .line 191
    .local v2, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v3}, Landroid/icu/number/NumberFormatterImpl;->unitIsCurrency(Landroid/icu/util/MeasureUnit;)Z

    move-result v10

    .line 192
    .local v10, "isCurrency":Z
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v3}, Landroid/icu/number/NumberFormatterImpl;->unitIsBaseUnit(Landroid/icu/util/MeasureUnit;)Z

    move-result v11

    .line 193
    .local v11, "isBaseUnit":Z
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v3}, Landroid/icu/number/NumberFormatterImpl;->unitIsPercent(Landroid/icu/util/MeasureUnit;)Z

    move-result v12

    .line 194
    .local v12, "isPercent":Z
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v3}, Landroid/icu/number/NumberFormatterImpl;->unitIsPermille(Landroid/icu/util/MeasureUnit;)Z

    move-result v13

    .line 195
    .local v13, "isPermille":Z
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v14, v3, Landroid/icu/number/CompactNotation;

    .line 196
    .local v14, "isCompactNotation":Z
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_40

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v3, v4, :cond_40

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v3, v4, :cond_40

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v3, v4, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v3, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    move v3, v5

    :goto_41
    move v15, v3

    .line 200
    .local v15, "isAccounting":Z
    if-eqz v10, :cond_49

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    check-cast v3, Landroid/icu/util/Currency;

    goto :goto_4b

    :cond_49
    sget-object v3, Landroid/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Landroid/icu/util/Currency;

    .line 201
    .local v3, "currency":Landroid/icu/util/Currency;
    :goto_4b
    sget-object v4, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 202
    .local v4, "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eqz v7, :cond_53

    .line 203
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 211
    :cond_53
    if-nez v10, :cond_63

    if-nez v11, :cond_63

    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eq v4, v7, :cond_61

    if-nez v12, :cond_5f

    if-eqz v13, :cond_61

    :cond_5f
    if-eqz v14, :cond_63

    :cond_61
    move v7, v5

    goto :goto_64

    :cond_63
    const/4 v7, 0x0

    :goto_64
    move/from16 v22, v7

    .line 217
    .local v22, "isCldrUnit":Z
    if-eqz v22, :cond_7b

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v7}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7b

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 218
    invoke-virtual {v7}, Landroid/icu/util/MeasureUnit;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v7

    sget-object v9, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v7, v9, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v5, 0x0

    :goto_7c
    move/from16 v23, v5

    .line 220
    .local v23, "isMixedUnit":Z
    iget-object v5, v0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 224
    .local v5, "rules":Landroid/icu/text/PluralRules;
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v7, v7, Landroid/icu/text/NumberingSystem;

    if-eqz v7, :cond_8b

    .line 225
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v7, Landroid/icu/text/NumberingSystem;

    .local v7, "ns":Landroid/icu/text/NumberingSystem;
    goto :goto_91

    .line 228
    .end local v7    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_8b
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v7}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v7

    .line 230
    .restart local v7    # "ns":Landroid/icu/text/NumberingSystem;
    :goto_91
    invoke-virtual {v7}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    .line 233
    const-string v9, ""

    iput-object v9, v1, Landroid/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    .line 236
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v9, v9, Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v9, :cond_a8

    .line 237
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v9, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v9, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    goto :goto_b7

    .line 239
    :cond_a8
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v9, v7}, Landroid/icu/text/DecimalFormatSymbols;->forNumberingSystem(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v9

    iput-object v9, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 240
    if-eqz v10, :cond_b7

    .line 241
    iget-object v9, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9, v3}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    .line 247
    :cond_b7
    :goto_b7
    const/4 v9, 0x0

    .line 248
    .local v9, "pattern":Ljava/lang/String;
    if-eqz v10, :cond_c8

    iget-object v6, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c8

    .line 249
    iget-object v6, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v9

    .line 251
    :cond_c8
    if-nez v9, :cond_f2

    .line 253
    if-eqz v22, :cond_ce

    .line 254
    const/4 v6, 0x0

    .local v6, "patternStyle":I
    goto :goto_e3

    .line 255
    .end local v6    # "patternStyle":I
    :cond_ce
    if-nez v12, :cond_e2

    if-eqz v13, :cond_d3

    goto :goto_e2

    .line 257
    :cond_d3
    if-eqz v10, :cond_e0

    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v4, v6, :cond_da

    goto :goto_e0

    .line 259
    :cond_da
    if-eqz v15, :cond_de

    .line 262
    const/4 v6, 0x7

    .restart local v6    # "patternStyle":I
    goto :goto_e3

    .line 264
    .end local v6    # "patternStyle":I
    :cond_de
    const/4 v6, 0x1

    .restart local v6    # "patternStyle":I
    goto :goto_e3

    .line 258
    .end local v6    # "patternStyle":I
    :cond_e0
    :goto_e0
    const/4 v6, 0x0

    .restart local v6    # "patternStyle":I
    goto :goto_e3

    .line 256
    .end local v6    # "patternStyle":I
    :cond_e2
    :goto_e2
    const/4 v6, 0x2

    .line 266
    .restart local v6    # "patternStyle":I
    :goto_e3
    move-object/from16 v17, v5

    .end local v5    # "rules":Landroid/icu/text/PluralRules;
    .local v17, "rules":Landroid/icu/text/PluralRules;
    iget-object v5, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    move-object/from16 v24, v7

    .end local v7    # "ns":Landroid/icu/text/NumberingSystem;
    .local v24, "ns":Landroid/icu/text/NumberingSystem;
    iget-object v7, v1, Landroid/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    .line 267
    invoke-static {v5, v7, v6}, Landroid/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v9

    goto :goto_f8

    .line 251
    .end local v6    # "patternStyle":I
    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .end local v24    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v5    # "rules":Landroid/icu/text/PluralRules;
    .restart local v7    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_f2
    move-object/from16 v17, v5

    move-object/from16 v24, v7

    .end local v5    # "rules":Landroid/icu/text/PluralRules;
    .end local v7    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v17    # "rules":Landroid/icu/text/PluralRules;
    .restart local v24    # "ns":Landroid/icu/text/NumberingSystem;
    move-object/from16 v25, v9

    .line 269
    .end local v9    # "pattern":Ljava/lang/String;
    .local v25, "pattern":Ljava/lang/String;
    :goto_f8
    invoke-static/range {v25 .. v25}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v5

    .line 276
    .local v5, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    const/4 v6, 0x0

    .line 277
    .local v6, "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v7, :cond_120

    .line 278
    if-eqz v22, :cond_116

    .line 282
    new-instance v7, Landroid/icu/impl/number/UsagePrefsHandler;

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    move-object/from16 v18, v6

    .end local v6    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .local v18, "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    move/from16 v26, v11

    .end local v11    # "isBaseUnit":Z
    .local v26, "isBaseUnit":Z
    iget-object v11, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-direct {v7, v9, v6, v11, v2}, Landroid/icu/impl/number/UsagePrefsHandler;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Ljava/lang/String;Landroid/icu/impl/number/MicroPropsGenerator;)V

    move-object v6, v7

    .end local v18    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .restart local v6    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    move-object v2, v7

    move-object v11, v6

    goto :goto_133

    .line 279
    .end local v26    # "isBaseUnit":Z
    .restart local v11    # "isBaseUnit":Z
    :cond_116
    move-object/from16 v18, v6

    .end local v6    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .restart local v18    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    new-instance v6, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v7, "We only support \"usage\" when the input unit is specified, and is a CLDR Unit."

    invoke-direct {v6, v7}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    .end local v18    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .restart local v6    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    :cond_120
    move-object/from16 v18, v6

    move/from16 v26, v11

    .end local v6    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .end local v11    # "isBaseUnit":Z
    .restart local v18    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .restart local v26    # "isBaseUnit":Z
    if-eqz v23, :cond_131

    .line 284
    new-instance v6, Landroid/icu/impl/number/UnitConversionHandler;

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-direct {v6, v7, v2}, Landroid/icu/impl/number/UnitConversionHandler;-><init>(Landroid/icu/util/MeasureUnit;Landroid/icu/impl/number/MicroPropsGenerator;)V

    move-object v2, v6

    move-object/from16 v11, v18

    goto :goto_133

    .line 283
    :cond_131
    move-object/from16 v11, v18

    .line 288
    .end local v18    # "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    .local v11, "usagePrefsHandler":Landroid/icu/impl/number/UsagePrefsHandler;
    :goto_133
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    if-eqz v6, :cond_13f

    .line 289
    new-instance v6, Landroid/icu/impl/number/MultiplierFormatHandler;

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    invoke-direct {v6, v7, v2}, Landroid/icu/impl/number/MultiplierFormatHandler;-><init>(Landroid/icu/number/Scale;Landroid/icu/impl/number/MicroPropsGenerator;)V

    move-object v2, v6

    .line 293
    :cond_13f
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    if-eqz v6, :cond_148

    .line 294
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    goto :goto_163

    .line 295
    :cond_148
    if-eqz v14, :cond_14f

    .line 296
    sget-object v6, Landroid/icu/number/Precision;->COMPACT_STRATEGY:Landroid/icu/number/Precision$FracSigRounderImpl;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    goto :goto_163

    .line 297
    :cond_14f
    if-eqz v10, :cond_156

    .line 298
    sget-object v6, Landroid/icu/number/Precision;->MONETARY_STANDARD:Landroid/icu/number/Precision$CurrencyRounderImpl;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    goto :goto_163

    .line 299
    :cond_156
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v6, :cond_15f

    .line 301
    sget-object v6, Landroid/icu/number/Precision;->BOGUS_PRECISION:Landroid/icu/number/Precision$BogusRounder;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    goto :goto_163

    .line 303
    :cond_15f
    sget-object v6, Landroid/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Landroid/icu/number/Precision$FractionRounderImpl;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 305
    :goto_163
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v6, :cond_175

    .line 306
    iget-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 307
    invoke-static {v7}, Landroid/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object v7

    .line 306
    invoke-virtual {v6, v7}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 309
    :cond_175
    iget-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v6, v3}, Landroid/icu/number/Precision;->withLocaleData(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 312
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v6, v6, Landroid/icu/impl/number/Grouper;

    if-eqz v6, :cond_18a

    .line 313
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast v6, Landroid/icu/impl/number/Grouper;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    goto :goto_1ae

    .line 314
    :cond_18a
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v6, v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    if-eqz v6, :cond_19b

    .line 315
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v6}, Landroid/icu/impl/number/Grouper;->forStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    goto :goto_1ae

    .line 316
    :cond_19b
    if-eqz v14, :cond_1a6

    .line 318
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v6}, Landroid/icu/impl/number/Grouper;->forStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    goto :goto_1ae

    .line 320
    :cond_1a6
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v6}, Landroid/icu/impl/number/Grouper;->forStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    .line 322
    :goto_1ae
    iget-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-virtual {v6, v7, v5}, Landroid/icu/impl/number/Grouper;->withLocaleData(Landroid/icu/util/ULocale;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Landroid/icu/impl/number/Grouper;

    move-result-object v6

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    .line 325
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-eqz v6, :cond_1c1

    .line 326
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    goto :goto_1c5

    .line 328
    :cond_1c1
    sget-object v6, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    .line 332
    :goto_1c5
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-eqz v6, :cond_1ce

    .line 333
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    goto :goto_1d2

    .line 335
    :cond_1ce
    sget-object v6, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 339
    :goto_1d2
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eqz v6, :cond_1db

    .line 340
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_1df

    .line 342
    :cond_1db
    sget-object v6, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 346
    :goto_1df
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-eqz v6, :cond_1e8

    .line 347
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_1ec

    .line 349
    :cond_1e8
    sget-object v6, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 353
    :goto_1ec
    iput-boolean v10, v1, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    .line 356
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v6, v6, Landroid/icu/number/ScientificNotation;

    if-eqz v6, :cond_201

    .line 357
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v6, Landroid/icu/number/ScientificNotation;

    iget-object v7, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6, v7, v8, v2}, Landroid/icu/number/ScientificNotation;->withLocaleData(Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_207

    .line 360
    :cond_201
    sget-object v6, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    iput-object v6, v1, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    move-object/from16 v21, v2

    .line 365
    .end local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v21, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :goto_207
    new-instance v7, Landroid/icu/impl/number/MutablePatternModifier;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Landroid/icu/impl/number/MutablePatternModifier;-><init>(Z)V

    .line 367
    .local v7, "patternMod":Landroid/icu/impl/number/MutablePatternModifier;
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    if-eqz v6, :cond_21e

    if-eqz v14, :cond_21b

    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 369
    invoke-interface {v6}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v6

    if-ne v10, v6, :cond_21e

    .line 370
    :cond_21b
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    goto :goto_21f

    .line 371
    :cond_21e
    move-object v6, v5

    :goto_21f
    nop

    .line 372
    .local v6, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/text/NumberFormat$Field;)V

    .line 373
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    if-eqz v2, :cond_231

    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto :goto_233

    :cond_231
    const/16 v16, 0x0

    :goto_233
    move/from16 v2, v16

    .line 374
    .local v2, "approximately":Z
    iget-object v9, v1, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v7, v9, v13, v2}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternAttributes(Landroid/icu/number/NumberFormatter$SignDisplay;ZZ)V

    .line 375
    invoke-virtual {v7}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v9

    if-eqz v9, :cond_255

    .line 376
    if-nez v17, :cond_249

    .line 378
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v9}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v9

    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .local v9, "rules":Landroid/icu/text/PluralRules;
    goto :goto_24b

    .line 376
    .end local v9    # "rules":Landroid/icu/text/PluralRules;
    .restart local v17    # "rules":Landroid/icu/text/PluralRules;
    :cond_249
    move-object/from16 v9, v17

    .line 380
    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .restart local v9    # "rules":Landroid/icu/text/PluralRules;
    :goto_24b
    move/from16 v27, v2

    .end local v2    # "approximately":Z
    .local v27, "approximately":Z
    iget-object v2, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v7, v2, v3, v4, v9}, Landroid/icu/impl/number/MutablePatternModifier;->setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V

    move-object/from16 v17, v9

    goto :goto_25d

    .line 382
    .end local v9    # "rules":Landroid/icu/text/PluralRules;
    .end local v27    # "approximately":Z
    .restart local v2    # "approximately":Z
    .restart local v17    # "rules":Landroid/icu/text/PluralRules;
    :cond_255
    move/from16 v27, v2

    .end local v2    # "approximately":Z
    .restart local v27    # "approximately":Z
    iget-object v2, v1, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v3, v4, v9}, Landroid/icu/impl/number/MutablePatternModifier;->setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V

    .line 384
    :goto_25d
    const/4 v2, 0x0

    .line 385
    .local v2, "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    if-eqz v8, :cond_264

    .line 386
    invoke-virtual {v7}, Landroid/icu/impl/number/MutablePatternModifier;->createImmutable()Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v2

    .line 390
    :cond_264
    invoke-interface {v6}, Landroid/icu/impl/number/AffixPatternProvider;->currencyAsDecimal()Z

    move-result v9

    if-eqz v9, :cond_270

    .line 391
    invoke-virtual {v7}, Landroid/icu/impl/number/MutablePatternModifier;->getCurrencySymbolForUnitWidth()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/icu/impl/number/MicroProps;->currencyAsDecimal:Ljava/lang/String;

    .line 395
    :cond_270
    if-eqz v22, :cond_31f

    .line 396
    const/4 v9, 0x0

    .line 397
    .local v9, "unitDisplayCase":Ljava/lang/String;
    move-object/from16 v28, v2

    .end local v2    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .local v28, "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-eqz v2, :cond_27e

    .line 398
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    move-object/from16 v19, v9

    goto :goto_280

    .line 397
    :cond_27e
    move-object/from16 v19, v9

    .line 400
    .end local v9    # "unitDisplayCase":Ljava/lang/String;
    .local v19, "unitDisplayCase":Ljava/lang/String;
    :goto_280
    if-nez v17, :cond_28b

    .line 402
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_28d

    .line 400
    :cond_28b
    move-object/from16 v2, v17

    .line 404
    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .local v2, "rules":Landroid/icu/text/PluralRules;
    :goto_28d
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    if-eqz v9, :cond_296

    .line 405
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    move-object/from16 v20, v9

    goto :goto_29e

    .line 406
    :cond_296
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v9}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v9

    move-object/from16 v20, v9

    :goto_29e
    nop

    .line 408
    .local v20, "pluralRules":Landroid/icu/text/PluralRules;
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v9, :cond_2b9

    .line 409
    nop

    .line 410
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 412
    invoke-virtual {v11}, Landroid/icu/impl/number/UsagePrefsHandler;->getOutputUnits()Ljava/util/List;

    move-result-object v17

    .line 410
    move-object/from16 v18, v4

    move-object/from16 v16, v9

    .end local v4    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .local v18, "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    invoke-static/range {v16 .. v21}, Landroid/icu/impl/number/LongNameMultiplexer;->forMeasureUnits(Landroid/icu/util/ULocale;Ljava/util/List;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameMultiplexer;

    move-result-object v4

    move-object/from16 v29, v2

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    .end local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v4, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    goto :goto_318

    .line 417
    .end local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .local v4, "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :cond_2b9
    move-object/from16 v18, v4

    .end local v4    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    if-eqz v23, :cond_2d0

    .line 418
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    invoke-static/range {v16 .. v21}, Landroid/icu/impl/number/MixedUnitLongNameHandler;->forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MixedUnitLongNameHandler;

    move-result-object v4

    move-object/from16 v29, v2

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    .end local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v4, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    goto :goto_318

    .line 426
    .end local v4    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :cond_2d0
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 427
    .local v4, "unit":Landroid/icu/util/MeasureUnit;
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v9, :cond_308

    .line 428
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v9}, Landroid/icu/util/MeasureUnit;->reciprocal()Landroid/icu/util/MeasureUnit;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/icu/util/MeasureUnit;->product(Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_303

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v9}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2f9

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v9}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2f9

    move-object/from16 v29, v2

    goto :goto_305

    .line 434
    :cond_2f9
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v29, v2

    .end local v2    # "rules":Landroid/icu/text/PluralRules;
    .local v29, "rules":Landroid/icu/text/PluralRules;
    const-string v2, "perUnit() can only be used if unit and perUnit are both built-ins, or the combination is a built-in"

    invoke-direct {v9, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 433
    .end local v29    # "rules":Landroid/icu/text/PluralRules;
    .restart local v2    # "rules":Landroid/icu/text/PluralRules;
    :cond_303
    move-object/from16 v29, v2

    .line 438
    .end local v2    # "rules":Landroid/icu/text/PluralRules;
    .restart local v29    # "rules":Landroid/icu/text/PluralRules;
    :goto_305
    move-object/from16 v17, v4

    goto :goto_30c

    .line 427
    .end local v29    # "rules":Landroid/icu/text/PluralRules;
    .restart local v2    # "rules":Landroid/icu/text/PluralRules;
    :cond_308
    move-object/from16 v29, v2

    .end local v2    # "rules":Landroid/icu/text/PluralRules;
    .restart local v29    # "rules":Landroid/icu/text/PluralRules;
    move-object/from16 v17, v4

    .line 438
    .end local v4    # "unit":Landroid/icu/util/MeasureUnit;
    .local v17, "unit":Landroid/icu/util/MeasureUnit;
    :goto_30c
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v21}, Landroid/icu/impl/number/LongNameHandler;->forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object v2

    move-object/from16 v4, v18

    move-object/from16 v21, v2

    .line 446
    .end local v17    # "unit":Landroid/icu/util/MeasureUnit;
    .end local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local v19    # "unitDisplayCase":Ljava/lang/String;
    .end local v20    # "pluralRules":Landroid/icu/text/PluralRules;
    .local v4, "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    :goto_318
    move-object/from16 v18, v4

    move-object/from16 v9, v21

    move-object/from16 v17, v29

    goto :goto_34a

    .end local v28    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .end local v29    # "rules":Landroid/icu/text/PluralRules;
    .local v2, "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .local v17, "rules":Landroid/icu/text/PluralRules;
    :cond_31f
    move-object/from16 v28, v2

    move-object/from16 v2, v21

    .end local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v2, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v28    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    if-eqz v10, :cond_343

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v4, v9, :cond_343

    .line 447
    if-nez v17, :cond_334

    .line 449
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v9}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v17

    move-object/from16 v9, v17

    goto :goto_336

    .line 447
    :cond_334
    move-object/from16 v9, v17

    .line 451
    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .local v9, "rules":Landroid/icu/text/PluralRules;
    :goto_336
    move-object/from16 v18, v4

    .end local v4    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v4, v3, v9, v2}, Landroid/icu/impl/number/LongNameHandler;->forCurrencyLongNames(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object v21

    move-object/from16 v17, v9

    move-object/from16 v9, v21

    .end local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    goto :goto_34a

    .line 446
    .end local v9    # "rules":Landroid/icu/text/PluralRules;
    .end local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local v21    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v4    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v17    # "rules":Landroid/icu/text/PluralRules;
    :cond_343
    move-object/from16 v18, v4

    .line 454
    .end local v4    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v18    # "unitWidth":Landroid/icu/number/NumberFormatter$UnitWidth;
    sget-object v4, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    iput-object v4, v1, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    move-object v9, v2

    .line 458
    .end local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v9, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :goto_34a
    if-eqz v14, :cond_37f

    .line 459
    if-nez v17, :cond_354

    .line 461
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v17

    .line 463
    :cond_354
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    instance-of v2, v2, Landroid/icu/util/Currency;

    if-eqz v2, :cond_363

    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v4, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eq v2, v4, :cond_363

    .line 464
    sget-object v2, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    goto :goto_365

    .line 465
    :cond_363
    sget-object v2, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    :goto_365
    nop

    .line 466
    .local v2, "compactType":Landroid/icu/impl/number/CompactData$CompactType;
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v4, Landroid/icu/number/CompactNotation;

    move-object/from16 v16, v3

    .end local v3    # "currency":Landroid/icu/util/Currency;
    .local v16, "currency":Landroid/icu/util/Currency;
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v4

    .end local v2    # "compactType":Landroid/icu/impl/number/CompactData$CompactType;
    .local v5, "compactType":Landroid/icu/impl/number/CompactData$CompactType;
    .local v19, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    iget-object v4, v1, Landroid/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    move-object/from16 v0, v28

    .end local v17    # "rules":Landroid/icu/text/PluralRules;
    .end local v28    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .local v0, "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .local v6, "rules":Landroid/icu/text/PluralRules;
    .local v20, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    invoke-virtual/range {v2 .. v9}, Landroid/icu/number/CompactNotation;->withLocaleData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v9

    goto :goto_387

    .line 458
    .end local v0    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .end local v16    # "currency":Landroid/icu/util/Currency;
    .end local v19    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .end local v20    # "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    .restart local v3    # "currency":Landroid/icu/util/Currency;
    .local v5, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .local v6, "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    .restart local v17    # "rules":Landroid/icu/text/PluralRules;
    .restart local v28    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    :cond_37f
    move-object/from16 v16, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v0, v28

    .line 476
    .end local v3    # "currency":Landroid/icu/util/Currency;
    .end local v5    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .end local v6    # "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    .end local v28    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .restart local v0    # "immPatternMod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .restart local v16    # "currency":Landroid/icu/util/Currency;
    .restart local v19    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .restart local v20    # "affixProvider":Landroid/icu/impl/number/AffixPatternProvider;
    :goto_387
    if-eqz p2, :cond_38e

    .line 477
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v2

    .end local v9    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v2, "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    goto :goto_392

    .line 479
    .end local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v9    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :cond_38e
    invoke-virtual {v7, v9}, Landroid/icu/impl/number/MutablePatternModifier;->addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v2

    .line 482
    .end local v9    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    .restart local v2    # "chain":Landroid/icu/impl/number/MicroPropsGenerator;
    :goto_392
    return-object v2
.end method

.method private static blacklist preProcessUnsafe(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "inValue"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 119
    new-instance v0, Landroid/icu/impl/number/MicroProps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/MicroProps;-><init>(Z)V

    .line 120
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    invoke-static {p0, v0, v1}, Landroid/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/MicroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v1

    .line 121
    .local v1, "microPropsGenerator":Landroid/icu/impl/number/MicroPropsGenerator;
    invoke-interface {v1, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 122
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v2, v2, Landroid/icu/number/IntegerWidth;->maxInt:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 123
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v2, v2, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    goto :goto_2b

    .line 125
    :cond_1d
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v2, v2, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    .line 126
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v2, v2, Landroid/icu/number/IntegerWidth;->maxInt:I

    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->applyMaxInteger(I)V

    .line 128
    :goto_2b
    return-object v0
.end method

.method private static blacklist unitIsBaseUnit(Landroid/icu/util/MeasureUnit;)Z
    .registers 2
    .param p0, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 160
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist unitIsCurrency(Landroid/icu/util/MeasureUnit;)Z
    .registers 3
    .param p0, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 156
    if-eqz p0, :cond_10

    const-string v0, "currency"

    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist unitIsPercent(Landroid/icu/util/MeasureUnit;)Z
    .registers 3
    .param p0, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 164
    if-eqz p0, :cond_10

    const-string v0, "percent"

    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist unitIsPermille(Landroid/icu/util/MeasureUnit;)Z
    .registers 3
    .param p0, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 168
    if-eqz p0, :cond_10

    const-string v0, "permille"

    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist writeAffixes(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 12
    .param p0, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p1, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 496
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v0, p1, p2, p3}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v0

    .line 497
    .local v0, "length":I
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    invoke-virtual {v1}, Landroid/icu/impl/number/Padder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 498
    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    iget-object v3, p0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    add-int v7, p3, v0

    move-object v5, p1

    move v6, p2

    .end local p1    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .end local p2    # "start":I
    .local v5, "string":Landroid/icu/impl/FormattedStringBuilder;
    .local v6, "start":I
    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/number/Padder;->padAndApply(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/FormattedStringBuilder;II)I

    goto :goto_30

    .line 500
    .end local v5    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .end local v6    # "start":I
    .restart local p1    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .restart local p2    # "start":I
    :cond_1c
    move-object v5, p1

    move v6, p2

    .end local p1    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .end local p2    # "start":I
    .restart local v5    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v6    # "start":I
    iget-object p1, p0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    add-int p2, p3, v0

    invoke-interface {p1, v5, v6, p2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    .line 501
    iget-object p1, p0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    add-int p2, p3, v0

    invoke-interface {p1, v5, v6, p2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    .line 503
    :goto_30
    return v0
.end method

.method private static blacklist writeFractionDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 11
    .param p0, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "index"    # I

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "length":I
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v1

    neg-int v1, v1

    .line 607
    .local v1, "fractionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_3e

    .line 609
    neg-int v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Landroid/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v3

    .line 610
    .local v3, "nextDigit":B
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2a

    .line 611
    add-int v4, v0, p3

    iget-object v5, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v4, v5, v6}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3b

    .line 614
    :cond_2a
    add-int v4, v0, p3

    iget-object v5, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v4, v5, v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 607
    .end local v3    # "nextDigit":B
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 618
    .end local v2    # "i":I
    :cond_3e
    return v0
.end method

.method private static blacklist writeIntegerDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 10
    .param p0, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "index"    # I

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "length":I
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 576
    .local v1, "integerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_59

    .line 578
    iget-object v3, p0, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/impl/number/Grouper;

    invoke-virtual {v3, v2, p1}, Landroid/icu/impl/number/Grouper;->groupAtPosition(ILandroid/icu/impl/number/DecimalQuantity;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 579
    nop

    .line 580
    iget-boolean v3, p0, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    .line 581
    :cond_1e
    iget-object v3, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v3

    :goto_24
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 579
    invoke-virtual {p2, p3, v3, v4}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 586
    :cond_2b
    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v3

    .line 587
    .local v3, "nextDigit":B
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 588
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 589
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 588
    invoke-virtual {p2, p3, v4, v5}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_56

    .line 592
    :cond_47
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 593
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 592
    invoke-virtual {p2, p3, v4, v5}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 576
    .end local v3    # "nextDigit":B
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 597
    .end local v2    # "i":I
    :cond_59
    return v0
.end method

.method public static blacklist writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 8
    .param p0, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "index"    # I

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "length":I
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 517
    add-int v1, v0, p3

    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_a5

    .line 519
    :cond_18
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 520
    add-int v1, v0, p3

    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_a5

    .line 524
    :cond_2f
    add-int v1, v0, p3

    invoke-static {p0, p1, p2, v1}, Landroid/icu/number/NumberFormatterImpl;->writeIntegerDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v1

    if-ltz v1, :cond_42

    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-ne v1, v2, :cond_75

    .line 529
    :cond_42
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->currencyAsDecimal:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 532
    add-int v1, v0, p3

    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->currencyAsDecimal:Ljava/lang/String;

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_75

    .line 536
    :cond_52
    iget-boolean v1, p0, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v1, :cond_66

    .line 537
    add-int v1, v0, p3

    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 539
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 537
    invoke-virtual {p2, v1, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_75

    .line 542
    :cond_66
    add-int v1, v0, p3

    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 544
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 542
    invoke-virtual {p2, v1, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_75
    :goto_75
    add-int v1, v0, p3

    invoke-static {p0, p1, p2, v1}, Landroid/icu/number/NumberFormatterImpl;->writeFractionDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    if-nez v0, :cond_a5

    .line 554
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_95

    .line 555
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 556
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 555
    invoke-virtual {p2, p3, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a5

    .line 559
    :cond_95
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 560
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 559
    invoke-virtual {p2, p3, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_a5
    :goto_a5
    return v0
.end method


# virtual methods
.method public blacklist format(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p1, "inValue"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "outString"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 98
    invoke-virtual {p0, p1}, Landroid/icu/number/NumberFormatterImpl;->preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 99
    .local v0, "result":Landroid/icu/impl/number/MicroProps;
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    .line 100
    .local v2, "length":I
    invoke-static {v0, p2, v1, v2}, Landroid/icu/number/NumberFormatterImpl;->writeAffixes(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 101
    return-object v0
.end method

.method public blacklist getPrefixSuffix(BLandroid/icu/impl/StandardPlural;Landroid/icu/impl/FormattedStringBuilder;)I
    .registers 5
    .param p1, "signum"    # B
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;
    .param p3, "output"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 132
    iget-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-static {v0, p1, p3}, Landroid/icu/number/NumberFormatterImpl;->getPrefixSuffixImpl(Landroid/icu/impl/number/MicroPropsGenerator;BLandroid/icu/impl/FormattedStringBuilder;)I

    move-result v0

    return v0
.end method

.method public blacklist getRawMicroProps()Landroid/icu/impl/number/MicroProps;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->micros:Landroid/icu/impl/number/MicroProps;

    return-object v0
.end method

.method public blacklist preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 5
    .param p1, "inValue"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 108
    iget-object v0, p0, Landroid/icu/number/NumberFormatterImpl;->microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 109
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v1, v1, Landroid/icu/number/IntegerWidth;->maxInt:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 110
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v1, v1, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    goto :goto_23

    .line 112
    :cond_15
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v1, v1, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    .line 113
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v1, v1, Landroid/icu/number/IntegerWidth;->maxInt:I

    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->applyMaxInteger(I)V

    .line 115
    :goto_23
    return-object v0
.end method

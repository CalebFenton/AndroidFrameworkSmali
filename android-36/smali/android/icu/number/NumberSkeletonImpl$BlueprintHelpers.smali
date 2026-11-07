.class final Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlueprintHelpers"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgenerateCurrencyOption(Landroid/icu/util/Currency;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateCurrencyOption(Landroid/icu/util/Currency;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateDigitsStem(IILjava/lang/StringBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateDigitsStem(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateExponentWidthOption(ILjava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateExponentWidthOption(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFractionStem(IILjava/lang/StringBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateFractionStem(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateIntegerWidthOption(IILjava/lang/StringBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateIntegerWidthOption(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateNumberingSystemOption(Landroid/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateNumberingSystemOption(Landroid/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateScaleOption(Landroid/icu/number/Scale;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateScaleOption(Landroid/icu/number/Scale;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseCurrencyOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseCurrencyOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseDigitsStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseDigitsStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseExponentSignOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseExponentSignOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseExponentWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseExponentWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFracSigOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseFracSigOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFractionStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseFractionStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIdentifierUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIdentifierUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIncrementOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIncrementOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntegerStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIntegerStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntegerWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIntegerWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseMeasurePerUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasurePerUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseMeasureUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasureUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseNumberingSystemOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseNumberingSystemOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseScaleOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseScaleOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseScientificStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseScientificStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseTrailingZeroOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseTrailingZeroOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseUnitUsageOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseUnitUsageOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1016
    const-class v0, Landroid/icu/number/NumberSkeletonImpl;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist generateCurrencyOption(Landroid/icu/util/Currency;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "currency"    # Landroid/icu/util/Currency;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    return-void
.end method

.method private static blacklist generateDigitsStem(IILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "minSig"    # I
    .param p1, "maxSig"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 1229
    const/16 v0, 0x40

    invoke-static {p2, v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1230
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 1231
    const/16 v0, 0x2a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1233
    :cond_e
    const/16 v0, 0x23

    sub-int v1, p1, p0

    invoke-static {p2, v0, v1}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1235
    :goto_15
    return-void
.end method

.method private static blacklist generateExponentWidthOption(ILjava/lang/StringBuilder;)V
    .registers 3
    .param p0, "minExponentDigits"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1041
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1042
    const/16 v0, 0x65

    invoke-static {p1, v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1043
    return-void
.end method

.method private static blacklist generateFractionStem(IILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "minFrac"    # I
    .param p1, "maxFrac"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 1175
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    .line 1176
    const-string v0, "precision-integer"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    return-void

    .line 1179
    :cond_a
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1180
    const/16 v0, 0x30

    invoke-static {p2, v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1181
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 1182
    const/16 v0, 0x2a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1184
    :cond_1d
    const/16 v0, 0x23

    sub-int v1, p1, p0

    invoke-static {p2, v0, v1}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1186
    :goto_24
    return-void
.end method

.method private static blacklist generateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "increment"    # Ljava/math/BigDecimal;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    return-void
.end method

.method private static blacklist generateIntegerWidthOption(IILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "minInt"    # I
    .param p1, "maxInt"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 1441
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 1442
    const/16 v0, 0x2a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1444
    :cond_9
    const/16 v0, 0x23

    sub-int v1, p1, p0

    invoke-static {p2, v0, v1}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1446
    :goto_10
    const/16 v0, 0x30

    invoke-static {p2, v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->-$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V

    .line 1447
    return-void
.end method

.method private static blacklist generateNumberingSystemOption(Landroid/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "ns"    # Landroid/icu/text/NumberingSystem;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {p0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    return-void
.end method

.method private static blacklist generateScaleOption(Landroid/icu/number/Scale;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "scale"    # Landroid/icu/number/Scale;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1476
    iget-object v0, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    .line 1477
    .local v0, "bd":Ljava/math/BigDecimal;
    if-nez v0, :cond_6

    .line 1478
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1480
    :cond_6
    iget v1, p0, Landroid/icu/number/Scale;->magnitude:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    return-void
.end method

.method private static blacklist parseCurrencyOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 6
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "currencyCode":Ljava/lang/String;
    :try_start_d
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_11} :catch_15

    .line 1071
    .local v1, "currency":Landroid/icu/util/Currency;
    nop

    .line 1072
    iput-object v1, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 1073
    return-void

    .line 1068
    .end local v1    # "currency":Landroid/icu/util/Currency;
    :catch_15
    move-exception v1

    .line 1070
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v3, "Invalid currency"

    invoke-direct {v2, v3, p0, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist parseDigitsStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 7
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1189
    nop

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1193
    .local v1, "minSig":I
    :goto_3
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1194
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_16

    .line 1195
    add-int/lit8 v1, v1, 0x1

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1200
    :cond_16
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 1201
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1202
    const/4 v2, -0x1

    .line 1203
    .local v2, "maxSig":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1205
    .end local v2    # "maxSig":I
    :cond_2a
    move v2, v1

    .line 1206
    .restart local v2    # "maxSig":I
    :goto_2b
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 1207
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3f

    .line 1208
    add-int/lit8 v2, v2, 0x1

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1215
    .end local v2    # "maxSig":I
    :cond_3e
    move v2, v1

    .line 1217
    .restart local v2    # "maxSig":I
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-lt v0, v3, :cond_56

    .line 1221
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 1222
    invoke-static {v1}, Landroid/icu/number/Precision;->minSignificantDigits(I)Landroid/icu/number/Precision;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_55

    .line 1224
    :cond_4f
    invoke-static {v1, v2}, Landroid/icu/number/Precision;->minMaxSignificantDigits(II)Landroid/icu/number/Precision;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1226
    :goto_55
    return-void

    .line 1218
    :cond_56
    new-instance v3, Landroid/icu/number/SkeletonSyntaxException;

    const-string v4, "Invalid significant digits stem"

    invoke-direct {v3, v4, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v3
.end method

.method private static blacklist parseExponentSignOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 7
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1049
    new-instance v0, Landroid/icu/util/CharsTrie;

    sget-object v1, Landroid/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 1050
    .local v0, "tempStemTrie":Landroid/icu/util/CharsTrie;
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Landroid/icu/util/CharsTrie;->next(Ljava/lang/CharSequence;II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v1

    .line 1051
    .local v1, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-eq v1, v3, :cond_19

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-eq v1, v3, :cond_19

    .line 1053
    return v2

    .line 1055
    :cond_19
    sget-object v3, Landroid/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smsignDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v3

    .line 1056
    .local v3, "sign":Landroid/icu/number/NumberFormatter$SignDisplay;
    if-nez v3, :cond_28

    .line 1057
    return v2

    .line 1059
    :cond_28
    iget-object v2, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v2, Landroid/icu/number/ScientificNotation;

    invoke-virtual {v2, v3}, Landroid/icu/number/ScientificNotation;->withExponentSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/ScientificNotation;

    move-result-object v2

    iput-object v2, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 1060
    const/4 v2, 0x1

    return v2
.end method

.method private static blacklist parseExponentWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 7
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1021
    return v0

    .line 1023
    :cond_c
    const/4 v1, 0x1

    .line 1024
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1025
    .local v2, "minExp":I
    :goto_e
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 1026
    invoke-virtual {p0, v1}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_21

    .line 1027
    add-int/lit8 v2, v2, 0x1

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1032
    :cond_21
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 1033
    return v0

    .line 1036
    :cond_28
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v0, Landroid/icu/number/ScientificNotation;

    invoke-virtual {v0, v2}, Landroid/icu/number/ScientificNotation;->withMinExponentDigits(I)Landroid/icu/number/ScientificNotation;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 1037
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist parseFracSigOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 9
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_a

    .line 1306
    return v0

    .line 1308
    :cond_a
    const/4 v0, 0x0

    .line 1309
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1311
    .local v1, "minSig":I
    :goto_c
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_1d

    .line 1312
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1d

    .line 1313
    add-int/lit8 v1, v1, 0x1

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1318
    :cond_1d
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 1319
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1321
    const/4 v2, -0x1

    .line 1322
    .local v2, "maxSig":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1326
    .end local v2    # "maxSig":I
    :cond_31
    move v2, v1

    .line 1327
    .restart local v2    # "maxSig":I
    :goto_32
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_46

    .line 1328
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_46

    .line 1329
    add-int/lit8 v2, v2, 0x1

    .line 1327
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1337
    .end local v2    # "maxSig":I
    :cond_45
    move v2, v1

    .line 1339
    .restart local v2    # "maxSig":I
    :cond_46
    :goto_46
    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v3, Landroid/icu/number/FractionPrecision;

    .line 1340
    .local v3, "oldRounder":Landroid/icu/number/FractionPrecision;
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v0, v4, :cond_8e

    .line 1342
    if-eq v2, v5, :cond_86

    .line 1346
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_61

    .line 1347
    sget-object v4, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 1348
    .local v4, "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 1349
    .end local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    :cond_61
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_6e

    .line 1350
    sget-object v4, Landroid/icu/number/NumberFormatter$RoundingPriority;->STRICT:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 1351
    .restart local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 1353
    .end local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    :cond_6e
    nop

    .line 1354
    sget-object v4, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 1356
    .restart local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    :goto_71
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v5

    if-lt v0, v5, :cond_7e

    .line 1360
    invoke-virtual {v3, v1, v2, v4}, Landroid/icu/number/FractionPrecision;->withSignificantDigits(IILandroid/icu/number/NumberFormatter$RoundingPriority;)Landroid/icu/number/Precision;

    move-result-object v5

    iput-object v5, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1361
    .end local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    goto :goto_9f

    .line 1357
    .restart local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    :cond_7e
    new-instance v5, Landroid/icu/number/SkeletonSyntaxException;

    const-string v6, "Invalid digits option for fraction rounder"

    invoke-direct {v5, v6, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v5

    .line 1343
    .end local v4    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    :cond_86
    new-instance v4, Landroid/icu/number/SkeletonSyntaxException;

    const-string v5, "Invalid digits option: Wildcard character not allowed with the priority annotation"

    invoke-direct {v4, v5, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4

    .line 1361
    :cond_8e
    if-ne v2, v5, :cond_97

    .line 1363
    invoke-virtual {v3, v1}, Landroid/icu/number/FractionPrecision;->withMinDigits(I)Landroid/icu/number/Precision;

    move-result-object v4

    iput-object v4, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_9f

    .line 1364
    :cond_97
    if-ne v1, v6, :cond_a0

    .line 1366
    invoke-virtual {v3, v2}, Landroid/icu/number/FractionPrecision;->withMaxDigits(I)Landroid/icu/number/Precision;

    move-result-object v4

    iput-object v4, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1372
    :goto_9f
    return v6

    .line 1368
    :cond_a0
    new-instance v4, Landroid/icu/number/SkeletonSyntaxException;

    const-string v5, "Invalid digits option: Priority annotation required"

    invoke-direct {v4, v5, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4
.end method

.method private static blacklist parseFractionStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 7
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1131
    nop

    .line 1132
    const/4 v0, 0x1

    .line 1133
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1135
    .local v1, "minFrac":I
    :goto_3
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1136
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_16

    .line 1137
    add-int/lit8 v1, v1, 0x1

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1142
    :cond_16
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 1143
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1144
    const/4 v2, -0x1

    .line 1145
    .local v2, "maxFrac":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1147
    .end local v2    # "maxFrac":I
    :cond_2a
    move v2, v1

    .line 1148
    .restart local v2    # "maxFrac":I
    :goto_2b
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 1149
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3f

    .line 1150
    add-int/lit8 v2, v2, 0x1

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1157
    .end local v2    # "maxFrac":I
    :cond_3e
    move v2, v1

    .line 1159
    .restart local v2    # "maxFrac":I
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-lt v0, v3, :cond_5f

    .line 1163
    const/4 v3, -0x1

    if-ne v2, v3, :cond_58

    .line 1164
    if-nez v1, :cond_51

    .line 1165
    invoke-static {}, Landroid/icu/number/Precision;->unlimited()Landroid/icu/number/Precision;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_5e

    .line 1167
    :cond_51
    invoke-static {v1}, Landroid/icu/number/Precision;->minFraction(I)Landroid/icu/number/FractionPrecision;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    goto :goto_5e

    .line 1170
    :cond_58
    invoke-static {v1, v2}, Landroid/icu/number/Precision;->minMaxFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1172
    :goto_5e
    return-void

    .line 1160
    :cond_5f
    new-instance v3, Landroid/icu/number/SkeletonSyntaxException;

    const-string v4, "Invalid fraction stem"

    invoke-direct {v3, v4, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v3
.end method

.method private static blacklist parseIdentifierUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 5
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1118
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/MeasureUnit;->forIdentifier(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1121
    nop

    .line 1122
    return-void

    .line 1119
    :catch_c
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/icu/number/SkeletonSyntaxException;

    const-string v2, "Invalid unit stem"

    invoke-direct {v1, v2, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v1
.end method

.method private static blacklist parseIncrementOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 6
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "str":Ljava/lang/String;
    :try_start_d
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_12} :catch_1a

    .line 1392
    .local v1, "increment":Ljava/math/BigDecimal;
    nop

    .line 1393
    invoke-static {v1}, Landroid/icu/number/Precision;->increment(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;

    move-result-object v2

    iput-object v2, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1394
    return-void

    .line 1390
    .end local v1    # "increment":Ljava/math/BigDecimal;
    :catch_1a
    move-exception v1

    .line 1391
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v3, "Invalid rounding increment"

    invoke-direct {v2, v3, p0, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist parseIntegerStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 5
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1288
    nop

    .line 1289
    const/4 v0, 0x1

    .line 1290
    .local v0, "offset":I
    :goto_2
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1291
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_13

    .line 1292
    add-int/lit8 v0, v0, -0x1

    .line 1293
    goto :goto_16

    .line 1290
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1296
    :cond_16
    :goto_16
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-lt v0, v1, :cond_23

    .line 1299
    invoke-static {v0}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v1

    iput-object v1, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 1300
    return-void

    .line 1297
    :cond_23
    new-instance v1, Landroid/icu/number/SkeletonSyntaxException;

    const-string v2, "Invalid integer stem"

    invoke-direct {v1, v2, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v1
.end method

.method private static blacklist parseIntegerWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 8
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1401
    const/4 v0, 0x0

    .line 1402
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1404
    .local v1, "minInt":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1405
    const/4 v2, -0x1

    .line 1406
    .local v2, "maxInt":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1408
    .end local v2    # "maxInt":I
    :cond_11
    const/4 v2, 0x0

    .line 1410
    .restart local v2    # "maxInt":I
    :goto_12
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ge v0, v3, :cond_28

    .line 1411
    if-eq v2, v4, :cond_28

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_28

    .line 1412
    add-int/lit8 v2, v2, 0x1

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1417
    :cond_28
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 1418
    :goto_2e
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 1419
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-ne v3, v5, :cond_41

    .line 1420
    add-int/lit8 v1, v1, 0x1

    .line 1418
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1426
    :cond_41
    if-eq v2, v4, :cond_44

    .line 1427
    add-int/2addr v2, v1

    .line 1429
    :cond_44
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-lt v0, v3, :cond_5e

    .line 1433
    if-ne v2, v4, :cond_53

    .line 1434
    invoke-static {v1}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    goto :goto_5d

    .line 1436
    :cond_53
    invoke-static {v1}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 1438
    :goto_5d
    return-void

    .line 1430
    :cond_5e
    new-instance v3, Landroid/icu/number/SkeletonSyntaxException;

    const-string v4, "Invalid integer width stem"

    invoke-direct {v3, v4, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v3
.end method

.method private static blacklist parseMeasurePerUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 4
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1106
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 1107
    .local v0, "numerator":Landroid/icu/util/MeasureUnit;
    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasureUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 1108
    iget-object v1, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iput-object v1, p1, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    .line 1109
    iput-object v0, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 1110
    return-void
.end method

.method private static blacklist parseMeasureUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 9
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "firstHyphen":I
    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_12

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1087
    :cond_12
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-eq v0, v1, :cond_59

    .line 1090
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "type":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "subType":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/MeasureUnit;->getAvailable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1093
    .local v3, "units":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/MeasureUnit;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/MeasureUnit;

    .line 1094
    .local v5, "unit":Landroid/icu/util/MeasureUnit;
    invoke-virtual {v5}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1095
    iput-object v5, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 1096
    return-void

    .line 1098
    .end local v5    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_50
    goto :goto_37

    .line 1099
    :cond_51
    new-instance v4, Landroid/icu/number/SkeletonSyntaxException;

    const-string v5, "Unknown measure unit"

    invoke-direct {v4, v5, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4

    .line 1088
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "subType":Ljava/lang/String;
    .end local v3    # "units":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/MeasureUnit;>;"
    :cond_59
    new-instance v1, Landroid/icu/number/SkeletonSyntaxException;

    const-string v2, "Invalid measure unit option"

    invoke-direct {v1, v2, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v1
.end method

.method private static blacklist parseNumberingSystemOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 6
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1450
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "nsName":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    .line 1452
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v1, :cond_16

    .line 1455
    iput-object v1, p1, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 1456
    return-void

    .line 1453
    :cond_16
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v3, "Unknown numbering system"

    invoke-direct {v2, v3, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v2
.end method

.method private static blacklist parseScaleOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 6
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1464
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "str":Ljava/lang/String;
    :try_start_d
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_12} :catch_1a

    .line 1470
    .local v1, "bd":Ljava/math/BigDecimal;
    nop

    .line 1472
    invoke-static {v1}, Landroid/icu/number/Scale;->byBigDecimal(Ljava/math/BigDecimal;)Landroid/icu/number/Scale;

    move-result-object v2

    iput-object v2, p1, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 1473
    return-void

    .line 1468
    .end local v1    # "bd":Ljava/math/BigDecimal;
    :catch_1a
    move-exception v1

    .line 1469
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v3, "Invalid scale"

    invoke-direct {v2, v3, p0, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist parseScientificStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 8
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1238
    nop

    .line 1241
    const/4 v0, 0x1

    .line 1242
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-eq v1, v0, :cond_79

    .line 1245
    const/4 v1, 0x0

    .line 1246
    .local v1, "isEngineering":Z
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_1c

    .line 1247
    const/4 v1, 0x1

    .line 1248
    add-int/lit8 v0, v0, 0x1

    .line 1249
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-eq v2, v0, :cond_1b

    goto :goto_1c

    .line 1250
    :cond_1b
    goto :goto_7a

    .line 1253
    :cond_1c
    :goto_1c
    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 1254
    .local v2, "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_4e

    .line 1255
    add-int/lit8 v0, v0, 0x1

    .line 1256
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-eq v3, v0, :cond_4d

    .line 1259
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_39

    .line 1260
    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_43

    .line 1261
    :cond_39
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_7a

    .line 1262
    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 1267
    :goto_43
    add-int/lit8 v0, v0, 0x1

    .line 1268
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-eq v3, v0, :cond_4c

    goto :goto_4e

    .line 1269
    :cond_4c
    goto :goto_7a

    .line 1257
    :cond_4d
    goto :goto_7a

    .line 1272
    :cond_4e
    :goto_4e
    const/4 v3, 0x0

    .line 1273
    .local v3, "minDigits":I
    :goto_4f
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v0, v4, :cond_63

    .line 1274
    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_62

    .line 1277
    add-int/lit8 v3, v3, 0x1

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 1275
    :cond_62
    goto :goto_7a

    .line 1279
    :cond_63
    if-eqz v1, :cond_6a

    invoke-static {}, Landroid/icu/number/Notation;->engineering()Landroid/icu/number/ScientificNotation;

    move-result-object v4

    goto :goto_6e

    :cond_6a
    invoke-static {}, Landroid/icu/number/Notation;->scientific()Landroid/icu/number/ScientificNotation;

    move-result-object v4

    .line 1280
    :goto_6e
    invoke-virtual {v4, v2}, Landroid/icu/number/ScientificNotation;->withExponentSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/ScientificNotation;

    move-result-object v4

    .line 1281
    invoke-virtual {v4, v3}, Landroid/icu/number/ScientificNotation;->withMinExponentDigits(I)Landroid/icu/number/ScientificNotation;

    move-result-object v4

    iput-object v4, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 1282
    return-void

    .line 1243
    .end local v1    # "isEngineering":Z
    .end local v2    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    .end local v3    # "minDigits":I
    :cond_79
    nop

    .line 1284
    .end local v0    # "offset":I
    :cond_7a
    :goto_7a
    new-instance v0, Landroid/icu/number/SkeletonSyntaxException;

    const-string v1, "Invalid scientific stem"

    invoke-direct {v0, v1, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v0
.end method

.method private static blacklist parseTrailingZeroOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z
    .registers 4
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1377
    const-string v0, "w"

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1378
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    sget-object v1, Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;->HIDE_IF_WHOLE:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    invoke-virtual {v0, v1}, Landroid/icu/number/Precision;->trailingZeroDisplay(Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;)Landroid/icu/number/Precision;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 1379
    const/4 v0, 0x1

    return v0

    .line 1381
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist parseUnitUsageOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V
    .registers 3
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 1125
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->asString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 1128
    return-void
.end method

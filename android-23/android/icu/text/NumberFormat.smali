.class public abstract Landroid/icu/text/NumberFormat;
.super Landroid/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormat$NumberFormatFactory;,
        Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;,
        Landroid/icu/text/NumberFormat$NumberFormatShim;,
        Landroid/icu/text/NumberFormat$Field;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ACCOUNTINGCURRENCYSTYLE:I = 0x7

.field public static final CASHCURRENCYSTYLE:I = 0x8

.field public static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGERSTYLE:I = 0x4

.field public static final INTEGER_FIELD:I = 0x0

.field public static final ISOCURRENCYSTYLE:I = 0x5

.field public static final NUMBERSTYLE:I = 0x0

.field public static final PERCENTSTYLE:I = 0x2

.field public static final PLURALCURRENCYSTYLE:I = 0x6

.field public static final SCIENTIFICSTYLE:I = 0x3

.field static final currentSerialVersion:I = 0x2

.field private static final doubleCurrencySign:[C

.field private static final doubleCurrencyStr:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x20094c40ec82f818L

.field private static shim:Landroid/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private capitalizationSetting:Landroid/icu/text/DisplayContext;

.field private currency:Landroid/icu/util/Currency;

.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private parseStrict:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/text/NumberFormat;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/NumberFormat;->-assertionsDisabled:Z

    #@b
    .line 1592
    const/4 v0, 0x2

    #@c
    new-array v0, v0, [C

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    #@13
    .line 1593
    new-instance v0, Ljava/lang/String;

    #@15
    sget-object v1, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    #@17
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1a
    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    #@1c
    .line 170
    return-void

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1592
    nop

    #@20
    :array_0
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x28

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v0, 0x0

    #@5
    .line 1775
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@8
    .line 1607
    iput-boolean v1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@a
    .line 1625
    iput-byte v3, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@c
    .line 1643
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@e
    .line 1661
    iput-byte v2, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@10
    .line 1679
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@12
    .line 1687
    iput-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@14
    .line 1699
    iput v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@16
    .line 1709
    iput v1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@18
    .line 1719
    iput v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@1a
    .line 1729
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@1c
    .line 1763
    const/4 v0, 0x2

    #@1d
    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@1f
    .line 1785
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@21
    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@23
    .line 1775
    return-void
.end method

.method static createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 21
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    #@0
    .prologue
    .line 1332
    invoke-static/range {p0 .. p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@3
    move-result-object v14

    #@4
    .line 1333
    .local v14, "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    move-object/from16 v0, v16

    #@8
    move-object/from16 v1, p0

    #@a
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@d
    .line 1340
    .local v16, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    const/16 v19, 0x1

    #@f
    move/from16 v0, p1

    #@11
    move/from16 v1, v19

    #@13
    if-eq v0, v1, :cond_0

    #@15
    const/16 v19, 0x5

    #@17
    move/from16 v0, p1

    #@19
    move/from16 v1, v19

    #@1b
    if-ne v0, v1, :cond_3

    #@1d
    .line 1342
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    #@20
    move-result-object v17

    #@21
    .line 1343
    .local v17, "temp":Ljava/lang/String;
    if-eqz v17, :cond_1

    #@23
    .line 1344
    move-object/from16 v14, v17

    #@25
    .line 1350
    .end local v17    # "temp":Ljava/lang/String;
    :cond_1
    const/16 v19, 0x5

    #@27
    move/from16 v0, p1

    #@29
    move/from16 v1, v19

    #@2b
    if-ne v0, v1, :cond_2

    #@2d
    .line 1351
    const-string/jumbo v19, "\u00a4"

    #@30
    sget-object v20, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    #@32
    move-object/from16 v0, v19

    #@34
    move-object/from16 v1, v20

    #@36
    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@39
    move-result-object v14

    #@3a
    .line 1355
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@3d
    move-result-object v8

    #@3e
    .line 1356
    .local v8, "ns":Landroid/icu/text/NumberingSystem;
    if-nez v8, :cond_4

    #@40
    .line 1357
    const/16 v19, 0x0

    #@42
    return-object v19

    #@43
    .line 1340
    .end local v8    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_3
    const/16 v19, 0x7

    #@45
    move/from16 v0, p1

    #@47
    move/from16 v1, v19

    #@49
    if-eq v0, v1, :cond_0

    #@4b
    .line 1341
    const/16 v19, 0x8

    #@4d
    move/from16 v0, p1

    #@4f
    move/from16 v1, v19

    #@51
    if-ne v0, v1, :cond_1

    #@53
    goto :goto_0

    #@54
    .line 1362
    .restart local v8    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_4
    if-eqz v8, :cond_7

    #@56
    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@59
    move-result v19

    #@5a
    if-eqz v19, :cond_7

    #@5c
    .line 1367
    const/4 v3, 0x4

    #@5d
    .line 1369
    .local v3, "desiredRulesType":I
    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    .line 1370
    .local v9, "nsDesc":Ljava/lang/String;
    const-string/jumbo v19, "/"

    #@64
    move-object/from16 v0, v19

    #@66
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@69
    move-result v5

    #@6a
    .line 1371
    .local v5, "firstSlash":I
    const-string/jumbo v19, "/"

    #@6d
    move-object/from16 v0, v19

    #@6f
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@72
    move-result v7

    #@73
    .line 1373
    .local v7, "lastSlash":I
    if-le v7, v5, :cond_6

    #@75
    .line 1374
    const/16 v19, 0x0

    #@77
    move/from16 v0, v19

    #@79
    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    .line 1375
    .local v11, "nsLocID":Ljava/lang/String;
    add-int/lit8 v19, v5, 0x1

    #@7f
    move/from16 v0, v19

    #@81
    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    .line 1376
    .local v12, "nsRuleSetGroup":Ljava/lang/String;
    add-int/lit8 v19, v7, 0x1

    #@87
    move/from16 v0, v19

    #@89
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8c
    move-result-object v13

    #@8d
    .line 1378
    .local v13, "nsRuleSetName":Ljava/lang/String;
    new-instance v10, Landroid/icu/util/ULocale;

    #@8f
    invoke-direct {v10, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@92
    .line 1379
    .local v10, "nsLoc":Landroid/icu/util/ULocale;
    const-string/jumbo v19, "SpelloutRules"

    #@95
    move-object/from16 v0, v19

    #@97
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v19

    #@9b
    if-eqz v19, :cond_5

    #@9d
    .line 1380
    const/4 v3, 0x1

    #@9e
    .line 1387
    .end local v11    # "nsLocID":Ljava/lang/String;
    .end local v12    # "nsRuleSetGroup":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v15, Landroid/icu/text/RuleBasedNumberFormat;

    #@a0
    invoke-direct {v15, v10, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@a3
    .line 1388
    .local v15, "r":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {v15, v13}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    #@a6
    .line 1389
    move-object v6, v15

    #@a7
    .line 1413
    .end local v3    # "desiredRulesType":I
    .end local v5    # "firstSlash":I
    .end local v7    # "lastSlash":I
    .end local v9    # "nsDesc":Ljava/lang/String;
    .end local v10    # "nsLoc":Landroid/icu/util/ULocale;
    .end local v13    # "nsRuleSetName":Ljava/lang/String;
    .end local v15    # "r":Landroid/icu/text/RuleBasedNumberFormat;
    .local v6, "format":Landroid/icu/text/NumberFormat;
    :goto_2
    sget-object v19, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@a9
    move-object/from16 v0, v16

    #@ab
    move-object/from16 v1, v19

    #@ad
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b0
    move-result-object v18

    #@b1
    .line 1414
    .local v18, "valid":Landroid/icu/util/ULocale;
    sget-object v19, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@b3
    move-object/from16 v0, v16

    #@b5
    move-object/from16 v1, v19

    #@b7
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@ba
    move-result-object v2

    #@bb
    .line 1415
    .local v2, "actual":Landroid/icu/util/ULocale;
    move-object/from16 v0, v18

    #@bd
    invoke-virtual {v6, v0, v2}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@c0
    .line 1417
    return-object v6

    #@c1
    .line 1383
    .end local v2    # "actual":Landroid/icu/util/ULocale;
    .end local v6    # "format":Landroid/icu/text/NumberFormat;
    .end local v18    # "valid":Landroid/icu/util/ULocale;
    .restart local v3    # "desiredRulesType":I
    .restart local v5    # "firstSlash":I
    .restart local v7    # "lastSlash":I
    .restart local v9    # "nsDesc":Ljava/lang/String;
    :cond_6
    move-object/from16 v10, p0

    #@c3
    .line 1384
    .restart local v10    # "nsLoc":Landroid/icu/util/ULocale;
    move-object v13, v9

    #@c4
    .restart local v13    # "nsRuleSetName":Ljava/lang/String;
    goto :goto_1

    #@c5
    .line 1391
    .end local v3    # "desiredRulesType":I
    .end local v5    # "firstSlash":I
    .end local v7    # "lastSlash":I
    .end local v9    # "nsDesc":Ljava/lang/String;
    .end local v10    # "nsLoc":Landroid/icu/util/ULocale;
    .end local v13    # "nsRuleSetName":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/icu/text/DecimalFormat;

    #@c7
    move-object/from16 v0, v16

    #@c9
    move/from16 v1, p1

    #@cb
    invoke-direct {v4, v14, v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    #@ce
    .line 1399
    .local v4, "f":Landroid/icu/text/DecimalFormat;
    const/16 v19, 0x4

    #@d0
    move/from16 v0, p1

    #@d2
    move/from16 v1, v19

    #@d4
    if-ne v0, v1, :cond_8

    #@d6
    .line 1400
    const/16 v19, 0x0

    #@d8
    move/from16 v0, v19

    #@da
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@dd
    .line 1401
    const/16 v19, 0x0

    #@df
    move/from16 v0, v19

    #@e1
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@e4
    .line 1402
    const/16 v19, 0x1

    #@e6
    move/from16 v0, v19

    #@e8
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    #@eb
    .line 1405
    :cond_8
    const/16 v19, 0x8

    #@ed
    move/from16 v0, p1

    #@ef
    move/from16 v1, v19

    #@f1
    if-ne v0, v1, :cond_9

    #@f3
    .line 1406
    sget-object v19, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    #@f5
    move-object/from16 v0, v19

    #@f7
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V

    #@fa
    .line 1408
    :cond_9
    move-object v6, v4

    #@fb
    .restart local v6    # "format":Landroid/icu/text/NumberFormat;
    goto :goto_2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 968
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 969
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 971
    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 981
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 982
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 984
    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static final getCurrencyInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 684
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 702
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 693
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 556
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static final getInstance(I)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "style"    # I

    #@0
    .prologue
    .line 588
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 578
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    #@0
    .prologue
    .line 1311
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x8

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 1312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 1313
    const-string/jumbo v1, "choice should be from NUMBERSTYLE to PLURALCURRENCYSTYLE"

    #@b
    .line 1312
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1321
    :cond_1
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/NumberFormat$NumberFormatShim;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 567
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;
    .param p1, "style"    # I

    #@0
    .prologue
    .line 598
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getIntegerInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 641
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 674
    const/4 v0, 0x4

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 658
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getNumberInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 608
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 624
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 616
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected static getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 7
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    #@0
    .prologue
    .line 1484
    const/4 v2, 0x0

    #@1
    .line 1485
    .local v2, "patternKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1506
    sget-boolean v5, Landroid/icu/text/NumberFormat;->-assertionsDisabled:Z

    #@6
    if-nez v5, :cond_0

    #@8
    new-instance v5, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@d
    throw v5

    #@e
    .line 1488
    :pswitch_0
    const-string/jumbo v2, "decimalFormat"

    #@11
    .line 1512
    .local v2, "patternKey":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@14
    .line 1511
    invoke-static {v5, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@1a
    .line 1513
    .local v3, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@1d
    move-result-object v1

    #@1e
    .line 1515
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    const/4 v4, 0x0

    #@1f
    .line 1517
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "NumberElements/"

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const-string/jumbo v6, "/patterns/"

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v3, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v4

    #@46
    .line 1522
    .local v4, "result":Ljava/lang/String;
    :goto_1
    return-object v4

    #@47
    .line 1494
    .end local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v3    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "result":Ljava/lang/String;
    .local v2, "patternKey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "currencyFormat"

    #@4a
    .local v2, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 1497
    .local v2, "patternKey":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "percentFormat"

    #@4e
    .local v2, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 1500
    .local v2, "patternKey":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "scientificFormat"

    #@52
    .local v2, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 1503
    .local v2, "patternKey":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v2, "accountingFormat"

    #@56
    .local v2, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@57
    .line 1507
    .local v2, "patternKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "decimalFormat"

    #@5a
    .local v2, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@5b
    .line 1518
    .restart local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v3    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v4, "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@5c
    .line 1519
    .local v0, "ex":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v6, "NumberElements/latn/patterns/"

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v3, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    .local v4, "result":Ljava/lang/String;
    goto :goto_1

    #@75
    .line 1485
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected static getPattern(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "forLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1429
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getPercentInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 712
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 730
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 721
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getScientificInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 740
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 758
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getScientificInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 749
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;
    .locals 5

    #@0
    .prologue
    .line 944
    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 946
    :try_start_0
    const-string/jumbo v3, "android.icu.text.NumberFormatServiceShim"

    #@7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 947
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@11
    sput-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 959
    :cond_0
    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@15
    return-object v3

    #@16
    .line 953
    :catch_0
    move-exception v1

    #@17
    .line 955
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@19
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 950
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@22
    .line 951
    .local v2, "e":Ljava/util/MissingResourceException;
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1539
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1542
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@6
    const/4 v1, 0x1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 1544
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@b
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@d
    .line 1545
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@11
    .line 1546
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@13
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@15
    .line 1547
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@17
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@19
    .line 1549
    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    .line 1551
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@1f
    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@21
    .line 1557
    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@23
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@25
    if-gt v0, v1, :cond_2

    #@27
    .line 1558
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@29
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2b
    if-le v0, v1, :cond_3

    #@2d
    .line 1560
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2f
    const-string/jumbo v1, "Digit count range invalid"

    #@32
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 1559
    :cond_3
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@38
    if-ltz v0, :cond_2

    #@3a
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@3c
    if-ltz v0, :cond_2

    #@3e
    .line 1562
    iput v2, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@40
    .line 1537
    return-void
.end method

.method public static registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2
    .param p0, "factory"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@0
    .prologue
    .line 1001
    if-nez p0, :cond_0

    #@2
    .line 1002
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "factory must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1004
    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1015
    if-nez p0, :cond_0

    #@2
    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "registryKey must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1019
    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1020
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 1023
    :cond_1
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@13
    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x7f

    #@2
    .line 1575
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@9
    .line 1577
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_1

    #@d
    move v0, v1

    #@e
    :goto_1
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@10
    .line 1579
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@12
    if-le v0, v1, :cond_2

    #@14
    move v0, v1

    #@15
    :goto_2
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@17
    .line 1581
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@19
    if-le v0, v1, :cond_3

    #@1b
    :goto_3
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@1d
    .line 1583
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@20
    .line 1573
    return-void

    #@21
    .line 1576
    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@23
    int-to-byte v0, v0

    #@24
    goto :goto_0

    #@25
    .line 1578
    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@27
    int-to-byte v0, v0

    #@28
    goto :goto_1

    #@29
    .line 1580
    :cond_2
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2b
    int-to-byte v0, v0

    #@2c
    goto :goto_2

    #@2d
    .line 1582
    :cond_3
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2f
    int-to-byte v1, v0

    #@30
    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1071
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@6
    .line 1072
    .local v0, "other":Landroid/icu/text/NumberFormat;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1049
    if-nez p1, :cond_0

    #@4
    return v2

    #@5
    .line 1050
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 1051
    return v1

    #@8
    .line 1052
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 1053
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 1054
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@16
    .line 1055
    .local v0, "other":Landroid/icu/text/NumberFormat;
    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@18
    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@1a
    if-ne v3, v4, :cond_4

    #@1c
    .line 1056
    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@1e
    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@20
    if-ne v3, v4, :cond_4

    #@22
    .line 1057
    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@24
    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@26
    if-ne v3, v4, :cond_4

    #@28
    .line 1058
    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2a
    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2c
    if-ne v3, v4, :cond_4

    #@2e
    .line 1059
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@30
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@32
    if-ne v3, v4, :cond_4

    #@34
    .line 1060
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@36
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@38
    if-ne v3, v4, :cond_4

    #@3a
    .line 1061
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@3c
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@3e
    if-ne v3, v4, :cond_4

    #@40
    .line 1062
    iget-object v3, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@42
    iget-object v4, v0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@44
    if-ne v3, v4, :cond_3

    #@46
    .line 1055
    :goto_0
    return v1

    #@47
    :cond_3
    move v1, v2

    #@48
    .line 1062
    goto :goto_0

    #@49
    :cond_4
    move v1, v2

    #@4a
    .line 1055
    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 292
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 291
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J

    #@0
    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v2, 0x13

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 302
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/FieldPosition;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@d
    .line 303
    .local v1, "pos":Ljava/text/FieldPosition;
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method public final format(Landroid/icu/math/BigDecimal;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 331
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 330
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(Landroid/icu/util/CurrencyAmount;)Ljava/lang/String;
    .locals 3
    .param p1, "currAmt"    # Landroid/icu/util/CurrencyAmount;

    #@0
    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 340
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 339
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 322
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 321
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 313
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 312
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "currAmt"    # Landroid/icu/util/CurrencyAmount;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v2

    #@4
    .local v2, "save":Landroid/icu/util/Currency;
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    #@7
    move-result-object v0

    #@8
    .line 394
    .local v0, "curr":Landroid/icu/util/Currency;
    invoke-virtual {v0, v2}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    .line 395
    .local v1, "same":Z
    if-nez v1, :cond_0

    #@e
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@11
    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, v3, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@18
    .line 397
    if-nez v1, :cond_1

    #@1a
    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@1d
    .line 398
    :cond_1
    return-object p2
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 254
    instance-of v0, p1, Ljava/lang/Long;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 255
    check-cast p1, Ljava/lang/Long;

    #@6
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@9
    move-result-wide v0

    #@a
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 256
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 257
    check-cast p1, Ljava/math/BigInteger;

    #@15
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 258
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 259
    check-cast p1, Ljava/math/BigDecimal;

    #@20
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 260
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 261
    check-cast p1, Landroid/icu/math/BigDecimal;

    #@2b
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 262
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 263
    check-cast p1, Landroid/icu/util/CurrencyAmount;

    #@36
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 264
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    #@3d
    if-eqz v0, :cond_5

    #@3f
    .line 265
    check-cast p1, Ljava/lang/Number;

    #@41
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@44
    move-result-wide v0

    #@45
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 267
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4c
    const-string/jumbo v1, "Cannot format given Object as a Number"

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
.end method

.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    #@0
    .prologue
    .line 539
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 540
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 539
    :goto_0
    return-object v0

    #@b
    .line 540
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@d
    goto :goto_0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    #@2
    return-object v0
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1260
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v0

    #@4
    .line 1261
    .local v0, "c":Landroid/icu/util/Currency;
    if-nez v0, :cond_1

    #@6
    .line 1262
    sget-object v2, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@8
    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v1

    #@c
    .line 1263
    .local v1, "uloc":Landroid/icu/util/ULocale;
    if-nez v1, :cond_0

    #@e
    .line 1264
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@10
    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@13
    move-result-object v1

    #@14
    .line 1266
    :cond_0
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@17
    move-result-object v0

    #@18
    .line 1268
    .end local v1    # "uloc":Landroid/icu/util/ULocale;
    :cond_1
    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1174
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1110
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1206
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1142
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@2
    return v0
.end method

.method public getRoundingMode()I
    .locals 2

    #@0
    .prologue
    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1281
    const-string/jumbo v1, "getRoundingMode must be implemented by the subclass implementation."

    #@5
    .line 1280
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1034
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    mul-int/lit8 v0, v0, 0x25

    #@4
    iget-byte v1, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    #@0
    .prologue
    .line 1086
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@2
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    return v0
.end method

.method public isParseStrict()Z
    .locals 1

    #@0
    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 428
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 429
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@9
    move-result-object v1

    #@a
    .line 430
    .local v1, "result":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 431
    new-instance v2, Ljava/text/ParseException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unparseable number: \""

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const/16 v4, 0x22

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 432
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@2f
    move-result v4

    #@30
    .line 431
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@33
    throw v2

    #@34
    .line 434
    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 457
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p0, v2, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@8
    move-result-object v0

    #@9
    .line 458
    .local v0, "n":Ljava/lang/Number;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    new-instance v1, Landroid/icu/util/CurrencyAmount;

    #@e
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v0, v2}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    #@15
    goto :goto_0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 282
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 2
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 526
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 524
    :cond_0
    return-void
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 0
    .param p1, "theCurrency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 1238
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    #@2
    .line 1237
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 1097
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@2
    .line 1096
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1190
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@7
    .line 1191
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1192
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@11
    .line 1189
    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1126
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@7
    .line 1127
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 1128
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@11
    .line 1125
    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1222
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@7
    .line 1223
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1224
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@11
    .line 1221
    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1158
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@7
    .line 1159
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 1160
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@11
    .line 1157
    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 483
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    .line 482
    return-void
.end method

.method public setParseStrict(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 504
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@2
    .line 503
    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2
    .param p1, "roundingMode"    # I

    #@0
    .prologue
    .line 1294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1295
    const-string/jumbo v1, "setRoundingMode must be implemented by the subclass implementation."

    #@5
    .line 1294
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

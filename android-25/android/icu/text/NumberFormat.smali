.class public abstract Landroid/icu/text/NumberFormat;
.super Landroid/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormat$Field;,
        Landroid/icu/text/NumberFormat$NumberFormatFactory;,
        Landroid/icu/text/NumberFormat$NumberFormatShim;,
        Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
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

.field public static final STANDARDCURRENCYSTYLE:I = 0x9

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
    .line 1516
    const/4 v0, 0x2

    #@c
    new-array v0, v0, [C

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    #@13
    .line 1517
    new-instance v0, Ljava/lang/String;

    #@15
    sget-object v1, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    #@17
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1a
    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    #@1c
    .line 169
    return-void

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1516
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
    .line 1697
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@8
    .line 1531
    iput-boolean v1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@a
    .line 1549
    iput-byte v3, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@c
    .line 1567
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@e
    .line 1585
    iput-byte v2, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@10
    .line 1603
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@12
    .line 1611
    iput-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@14
    .line 1623
    iput v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@16
    .line 1633
    iput v1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@18
    .line 1643
    iput v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@1a
    .line 1653
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@1c
    .line 1686
    const/4 v0, 0x2

    #@1d
    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@1f
    .line 1707
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@21
    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@23
    .line 1697
    return-void
.end method

.method static createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 21
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    #@0
    .prologue
    .line 1252
    invoke-static/range {p0 .. p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@3
    move-result-object v14

    #@4
    .line 1253
    .local v14, "pattern":Ljava/lang/String;
    new-instance v16, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    move-object/from16 v0, v16

    #@8
    move-object/from16 v1, p0

    #@a
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@d
    .line 1260
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
    .line 1262
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    #@20
    move-result-object v17

    #@21
    .line 1263
    .local v17, "temp":Ljava/lang/String;
    if-eqz v17, :cond_1

    #@23
    .line 1264
    move-object/from16 v14, v17

    #@25
    .line 1270
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
    .line 1271
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
    .line 1275
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@3d
    move-result-object v8

    #@3e
    .line 1276
    .local v8, "ns":Landroid/icu/text/NumberingSystem;
    if-nez v8, :cond_4

    #@40
    .line 1277
    const/16 v19, 0x0

    #@42
    return-object v19

    #@43
    .line 1260
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
    .line 1261
    const/16 v19, 0x8

    #@4d
    move/from16 v0, p1

    #@4f
    move/from16 v1, v19

    #@51
    if-eq v0, v1, :cond_0

    #@53
    const/16 v19, 0x9

    #@55
    move/from16 v0, p1

    #@57
    move/from16 v1, v19

    #@59
    if-ne v0, v1, :cond_1

    #@5b
    goto :goto_0

    #@5c
    .line 1282
    .restart local v8    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_4
    if-eqz v8, :cond_7

    #@5e
    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@61
    move-result v19

    #@62
    if-eqz v19, :cond_7

    #@64
    .line 1287
    const/4 v3, 0x4

    #@65
    .line 1289
    .local v3, "desiredRulesType":I
    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    .line 1290
    .local v9, "nsDesc":Ljava/lang/String;
    const-string/jumbo v19, "/"

    #@6c
    move-object/from16 v0, v19

    #@6e
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@71
    move-result v5

    #@72
    .line 1291
    .local v5, "firstSlash":I
    const-string/jumbo v19, "/"

    #@75
    move-object/from16 v0, v19

    #@77
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@7a
    move-result v7

    #@7b
    .line 1293
    .local v7, "lastSlash":I
    if-le v7, v5, :cond_6

    #@7d
    .line 1294
    const/16 v19, 0x0

    #@7f
    move/from16 v0, v19

    #@81
    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    .line 1295
    .local v11, "nsLocID":Ljava/lang/String;
    add-int/lit8 v19, v5, 0x1

    #@87
    move/from16 v0, v19

    #@89
    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8c
    move-result-object v12

    #@8d
    .line 1296
    .local v12, "nsRuleSetGroup":Ljava/lang/String;
    add-int/lit8 v19, v7, 0x1

    #@8f
    move/from16 v0, v19

    #@91
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v13

    #@95
    .line 1298
    .local v13, "nsRuleSetName":Ljava/lang/String;
    new-instance v10, Landroid/icu/util/ULocale;

    #@97
    invoke-direct {v10, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@9a
    .line 1299
    .local v10, "nsLoc":Landroid/icu/util/ULocale;
    const-string/jumbo v19, "SpelloutRules"

    #@9d
    move-object/from16 v0, v19

    #@9f
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v19

    #@a3
    if-eqz v19, :cond_5

    #@a5
    .line 1300
    const/4 v3, 0x1

    #@a6
    .line 1307
    .end local v11    # "nsLocID":Ljava/lang/String;
    .end local v12    # "nsRuleSetGroup":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v15, Landroid/icu/text/RuleBasedNumberFormat;

    #@a8
    invoke-direct {v15, v10, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@ab
    .line 1308
    .local v15, "r":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {v15, v13}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    #@ae
    .line 1309
    move-object v6, v15

    #@af
    .line 1333
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

    #@b1
    move-object/from16 v0, v16

    #@b3
    move-object/from16 v1, v19

    #@b5
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b8
    move-result-object v18

    #@b9
    .line 1334
    .local v18, "valid":Landroid/icu/util/ULocale;
    sget-object v19, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@bb
    move-object/from16 v0, v16

    #@bd
    move-object/from16 v1, v19

    #@bf
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@c2
    move-result-object v2

    #@c3
    .line 1335
    .local v2, "actual":Landroid/icu/util/ULocale;
    move-object/from16 v0, v18

    #@c5
    invoke-virtual {v6, v0, v2}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@c8
    .line 1337
    return-object v6

    #@c9
    .line 1303
    .end local v2    # "actual":Landroid/icu/util/ULocale;
    .end local v6    # "format":Landroid/icu/text/NumberFormat;
    .end local v18    # "valid":Landroid/icu/util/ULocale;
    .restart local v3    # "desiredRulesType":I
    .restart local v5    # "firstSlash":I
    .restart local v7    # "lastSlash":I
    .restart local v9    # "nsDesc":Ljava/lang/String;
    :cond_6
    move-object/from16 v10, p0

    #@cb
    .line 1304
    .restart local v10    # "nsLoc":Landroid/icu/util/ULocale;
    move-object v13, v9

    #@cc
    .restart local v13    # "nsRuleSetName":Ljava/lang/String;
    goto :goto_1

    #@cd
    .line 1311
    .end local v3    # "desiredRulesType":I
    .end local v5    # "firstSlash":I
    .end local v7    # "lastSlash":I
    .end local v9    # "nsDesc":Ljava/lang/String;
    .end local v10    # "nsLoc":Landroid/icu/util/ULocale;
    .end local v13    # "nsRuleSetName":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/icu/text/DecimalFormat;

    #@cf
    move-object/from16 v0, v16

    #@d1
    move/from16 v1, p1

    #@d3
    invoke-direct {v4, v14, v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    #@d6
    .line 1319
    .local v4, "f":Landroid/icu/text/DecimalFormat;
    const/16 v19, 0x4

    #@d8
    move/from16 v0, p1

    #@da
    move/from16 v1, v19

    #@dc
    if-ne v0, v1, :cond_8

    #@de
    .line 1320
    const/16 v19, 0x0

    #@e0
    move/from16 v0, v19

    #@e2
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@e5
    .line 1321
    const/16 v19, 0x0

    #@e7
    move/from16 v0, v19

    #@e9
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@ec
    .line 1322
    const/16 v19, 0x1

    #@ee
    move/from16 v0, v19

    #@f0
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    #@f3
    .line 1325
    :cond_8
    const/16 v19, 0x8

    #@f5
    move/from16 v0, p1

    #@f7
    move/from16 v1, v19

    #@f9
    if-ne v0, v1, :cond_9

    #@fb
    .line 1326
    sget-object v19, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    #@fd
    move-object/from16 v0, v19

    #@ff
    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V

    #@102
    .line 1328
    :cond_9
    move-object v6, v4

    #@103
    .restart local v6    # "format":Landroid/icu/text/NumberFormat;
    goto :goto_2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 905
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 906
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 908
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
    .line 917
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 918
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 920
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
    .line 646
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
    .line 662
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
    .line 654
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
    .line 529
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
    .line 558
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
    .line 549
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
    .line 1231
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x9

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 1232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 1233
    const-string/jumbo v1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    #@b
    .line 1232
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1241
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
    .line 539
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
    .line 567
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
    .line 606
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
    .line 637
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
    .line 622
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
    .line 576
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
    .line 590
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
    .line 583
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
    .locals 8
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    #@0
    .prologue
    .line 1404
    const/4 v3, 0x0

    #@1
    .line 1405
    .local v3, "patternKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1430
    sget-boolean v6, Landroid/icu/text/NumberFormat;->-assertionsDisabled:Z

    #@6
    if-nez v6, :cond_1

    #@8
    new-instance v6, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@d
    throw v6

    #@e
    .line 1408
    :pswitch_0
    const-string/jumbo v3, "decimalFormat"

    #@11
    .line 1436
    .local v3, "patternKey":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@14
    .line 1435
    invoke-static {v6, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@1a
    .line 1437
    .local v4, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@1d
    move-result-object v2

    #@1e
    .line 1439
    .local v2, "ns":Landroid/icu/text/NumberingSystem;
    const/4 v5, 0x0

    #@1f
    .line 1441
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "NumberElements/"

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v2}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    const-string/jumbo v7, "/patterns/"

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v5

    #@46
    .line 1446
    .local v5, "result":Ljava/lang/String;
    :goto_1
    return-object v5

    #@47
    .line 1411
    .end local v2    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "result":Ljava/lang/String;
    .local v3, "patternKey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v6, "cf"

    #@4a
    invoke-virtual {p0, v6}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 1412
    .local v0, "cfKeyValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@50
    const-string/jumbo v6, "account"

    #@53
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_0

    #@59
    const-string/jumbo v3, "accountingFormat"

    #@5c
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@5d
    .local v3, "patternKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "currencyFormat"

    #@60
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 1418
    .end local v0    # "cfKeyValue":Ljava/lang/String;
    .local v3, "patternKey":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "currencyFormat"

    #@64
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 1421
    .local v3, "patternKey":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "percentFormat"

    #@68
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@69
    .line 1424
    .local v3, "patternKey":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "scientificFormat"

    #@6c
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@6d
    .line 1427
    .local v3, "patternKey":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, "accountingFormat"

    #@70
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@71
    .line 1431
    .local v3, "patternKey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "decimalFormat"

    #@74
    .local v3, "patternKey":Ljava/lang/String;
    goto :goto_0

    #@75
    .line 1442
    .restart local v2    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v5, "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@76
    .line 1443
    .local v1, "ex":Ljava/util/MissingResourceException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v7, "NumberElements/latn/patterns/"

    #@7e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    .local v5, "result":Ljava/lang/String;
    goto :goto_1

    #@8f
    .line 1405
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
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
    .line 1350
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
    .line 671
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
    .line 687
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
    .line 679
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
    .line 696
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
    .line 712
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
    .line 704
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
    .line 882
    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 884
    :try_start_0
    const-string/jumbo v3, "android.icu.text.NumberFormatServiceShim"

    #@7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 885
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
    .line 897
    :cond_0
    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@15
    return-object v3

    #@16
    .line 891
    :catch_0
    move-exception v1

    #@17
    .line 893
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
    .line 888
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@22
    .line 889
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
    .line 1463
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1466
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@6
    const/4 v1, 0x1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 1468
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@b
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@d
    .line 1469
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@11
    .line 1470
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@13
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@15
    .line 1471
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@17
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@19
    .line 1473
    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    .line 1475
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@1f
    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@21
    .line 1481
    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@23
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@25
    if-gt v0, v1, :cond_2

    #@27
    .line 1482
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@29
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2b
    if-le v0, v1, :cond_3

    #@2d
    .line 1484
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2f
    const-string/jumbo v1, "Digit count range invalid"

    #@32
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 1483
    :cond_3
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@38
    if-ltz v0, :cond_2

    #@3a
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@3c
    if-ltz v0, :cond_2

    #@3e
    .line 1486
    iput v2, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    #@40
    .line 1461
    return-void
.end method

.method public static registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2
    .param p0, "factory"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@0
    .prologue
    .line 937
    if-nez p0, :cond_0

    #@2
    .line 938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "factory must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 940
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
    .line 951
    if-nez p0, :cond_0

    #@2
    .line 952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "registryKey must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 955
    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 956
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 959
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
    .line 1499
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    #@9
    .line 1501
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_1

    #@d
    move v0, v1

    #@e
    :goto_1
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    #@10
    .line 1503
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@12
    if-le v0, v1, :cond_2

    #@14
    move v0, v1

    #@15
    :goto_2
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    #@17
    .line 1505
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@19
    if-le v0, v1, :cond_3

    #@1b
    :goto_3
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    #@1d
    .line 1507
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@20
    .line 1497
    return-void

    #@21
    .line 1500
    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@23
    int-to-byte v0, v0

    #@24
    goto :goto_0

    #@25
    .line 1502
    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@27
    int-to-byte v0, v0

    #@28
    goto :goto_1

    #@29
    .line 1504
    :cond_2
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2b
    int-to-byte v0, v0

    #@2c
    goto :goto_2

    #@2d
    .line 1506
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
    .line 1004
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@6
    .line 1005
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
    .line 983
    if-nez p1, :cond_0

    #@4
    return v2

    #@5
    .line 984
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 985
    return v1

    #@8
    .line 986
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
    .line 987
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 988
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@16
    .line 989
    .local v0, "other":Landroid/icu/text/NumberFormat;
    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@18
    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@1a
    if-ne v3, v4, :cond_4

    #@1c
    .line 990
    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@1e
    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@20
    if-ne v3, v4, :cond_4

    #@22
    .line 991
    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@24
    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@26
    if-ne v3, v4, :cond_4

    #@28
    .line 992
    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2a
    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2c
    if-ne v3, v4, :cond_4

    #@2e
    .line 993
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@30
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@32
    if-ne v3, v4, :cond_4

    #@34
    .line 994
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@36
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@38
    if-ne v3, v4, :cond_4

    #@3a
    .line 995
    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@3c
    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@3e
    if-ne v3, v4, :cond_4

    #@40
    .line 996
    iget-object v3, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@42
    iget-object v4, v0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@44
    if-ne v3, v4, :cond_3

    #@46
    .line 989
    :goto_0
    return v1

    #@47
    :cond_3
    move v1, v2

    #@48
    .line 996
    goto :goto_0

    #@49
    :cond_4
    move v1, v2

    #@4a
    .line 989
    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 286
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 285
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
    .line 294
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v2, 0x13

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 295
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/FieldPosition;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@d
    .line 296
    .local v1, "pos":Ljava/text/FieldPosition;
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    .line 297
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
    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 321
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 320
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
    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 329
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 328
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
    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 305
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 304
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
    .line 376
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v2

    #@4
    .local v2, "save":Landroid/icu/util/Currency;
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    #@7
    move-result-object v0

    #@8
    .line 377
    .local v0, "curr":Landroid/icu/util/Currency;
    invoke-virtual {v0, v2}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    .line 378
    .local v1, "same":Z
    if-nez v1, :cond_0

    #@e
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@11
    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, v3, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@18
    .line 380
    if-nez v1, :cond_1

    #@1a
    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@1d
    .line 381
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
    .line 250
    instance-of v0, p1, Ljava/lang/Long;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 251
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
    .line 252
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 253
    check-cast p1, Ljava/math/BigInteger;

    #@15
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 254
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 255
    check-cast p1, Ljava/math/BigDecimal;

    #@20
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 256
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 257
    check-cast p1, Landroid/icu/math/BigDecimal;

    #@2b
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 258
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 259
    check-cast p1, Landroid/icu/util/CurrencyAmount;

    #@36
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 260
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    #@3d
    if-eqz v0, :cond_5

    #@3f
    .line 261
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
    .line 263
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
    .line 513
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 514
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 513
    :goto_0
    return-object v0

    #@b
    .line 514
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@d
    goto :goto_0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 1168
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
    .line 1182
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v0

    #@4
    .line 1183
    .local v0, "c":Landroid/icu/util/Currency;
    if-nez v0, :cond_1

    #@6
    .line 1184
    sget-object v2, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@8
    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v1

    #@c
    .line 1185
    .local v1, "uloc":Landroid/icu/util/ULocale;
    if-nez v1, :cond_0

    #@e
    .line 1186
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@10
    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@13
    move-result-object v1

    #@14
    .line 1188
    :cond_0
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@17
    move-result-object v0

    #@18
    .line 1190
    .end local v1    # "uloc":Landroid/icu/util/ULocale;
    :cond_1
    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1100
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@2
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1040
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1130
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1070
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@2
    return v0
.end method

.method public getRoundingMode()I
    .locals 2

    #@0
    .prologue
    .line 1201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1202
    const-string/jumbo v1, "getRoundingMode must be implemented by the subclass implementation."

    #@5
    .line 1201
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 969
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
    .line 1018
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@2
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 452
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    return v0
.end method

.method public isParseStrict()Z
    .locals 1

    #@0
    .prologue
    .line 490
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
    .line 409
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 410
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@9
    move-result-object v1

    #@a
    .line 411
    .local v1, "result":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 412
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
    .line 413
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@2f
    move-result v4

    #@30
    .line 412
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@33
    throw v2

    #@34
    .line 415
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
    .line 437
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p0, v2, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@8
    move-result-object v0

    #@9
    .line 438
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
    .line 277
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
    .line 500
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 501
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    #@a
    .line 499
    :cond_0
    return-void
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 0
    .param p1, "theCurrency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 1160
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    #@2
    .line 1159
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 1028
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    #@2
    .line 1027
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1115
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@7
    .line 1116
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1117
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@11
    .line 1114
    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1055
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@7
    .line 1056
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 1057
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@11
    .line 1054
    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1145
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@7
    .line 1146
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1147
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    #@11
    .line 1144
    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 1085
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@7
    .line 1086
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 1087
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    #@f
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    #@11
    .line 1084
    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 461
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    .line 460
    return-void
.end method

.method public setParseStrict(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 481
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    #@2
    .line 480
    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2
    .param p1, "roundingMode"    # I

    #@0
    .prologue
    .line 1214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1215
    const-string/jumbo v1, "setRoundingMode must be implemented by the subclass implementation."

    #@5
    .line 1214
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

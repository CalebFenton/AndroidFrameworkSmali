.class public abstract Landroid/icu/text/NumberFormat;
.super Landroid/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormat$NumberFormatShim;,
        Landroid/icu/text/NumberFormat$NumberFormatFactory;,
        Landroid/icu/text/NumberFormat$Field;,
        Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api ACCOUNTINGCURRENCYSTYLE:I = 0x7

.field public static final whitelist test-api CASHCURRENCYSTYLE:I = 0x8

.field public static final whitelist test-api CURRENCYSTYLE:I = 0x1

.field public static final whitelist test-api FRACTION_FIELD:I = 0x1

.field public static final whitelist test-api INTEGERSTYLE:I = 0x4

.field public static final whitelist test-api INTEGER_FIELD:I = 0x0

.field public static final whitelist test-api ISOCURRENCYSTYLE:I = 0x5

.field public static final whitelist test-api NUMBERSTYLE:I = 0x0

.field public static final whitelist test-api PERCENTSTYLE:I = 0x2

.field public static final whitelist test-api PLURALCURRENCYSTYLE:I = 0x6

.field public static final whitelist test-api SCIENTIFICSTYLE:I = 0x3

.field public static final whitelist test-api STANDARDCURRENCYSTYLE:I = 0x9

.field static final greylist-max-o currentSerialVersion:I = 0x2

.field private static final greylist-max-o doubleCurrencySign:[C

.field private static final greylist-max-o doubleCurrencyStr:Ljava/lang/String;

.field private static final whitelist serialVersionUID:J = -0x20094c40ec82f818L

.field private static greylist-max-o shim:Landroid/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private greylist-max-o capitalizationSetting:Landroid/icu/text/DisplayContext;

.field private greylist-max-o currency:Landroid/icu/util/Currency;

.field private greylist-max-o groupingUsed:Z

.field private greylist-max-o maxFractionDigits:B

.field private greylist-max-o maxIntegerDigits:B

.field private greylist-max-o maximumFractionDigits:I

.field private greylist-max-o maximumIntegerDigits:I

.field private greylist-max-o minFractionDigits:B

.field private greylist-max-o minIntegerDigits:B

.field private greylist-max-o minimumFractionDigits:I

.field private greylist-max-o minimumIntegerDigits:I

.field private greylist-max-o parseIntegerOnly:Z

.field private greylist-max-o parseStrict:Z

.field private greylist-max-o serialVersionOnStream:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 179
    nop

    .line 1611
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    .line 1612
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    return-void

    nop

    :array_14
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 1792
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 1626
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    .line 1644
    const/16 v1, 0x28

    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1662
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    .line 1680
    const/4 v2, 0x3

    iput-byte v2, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    .line 1698
    const/4 v3, 0x0

    iput-byte v3, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    .line 1706
    iput-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 1718
    iput v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1728
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1738
    iput v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1748
    iput v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1781
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    .line 1802
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1793
    return-void
.end method

.method static greylist-max-o createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .registers 14
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    .line 1357
    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v1, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 1364
    .local v1, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1a

    if-eq p1, v3, :cond_1a

    const/4 v5, 0x7

    if-eq p1, v5, :cond_1a

    if-eq p1, v2, :cond_1a

    const/16 v5, 0x9

    if-ne p1, v5, :cond_21

    .line 1366
    :cond_1a
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v5

    .line 1367
    .local v5, "temp":Ljava/lang/String;
    if-eqz v5, :cond_21

    .line 1368
    move-object v0, v5

    .line 1374
    .end local v5    # "temp":Ljava/lang/String;
    :cond_21
    if-ne p1, v3, :cond_2b

    .line 1375
    const-string v3, "\u00a4"

    sget-object v5, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    :cond_2b
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v3

    .line 1380
    .local v3, "ns":Landroid/icu/text/NumberingSystem;
    if-nez v3, :cond_33

    .line 1381
    const/4 v2, 0x0

    return-object v2

    .line 1386
    :cond_33
    const/4 v5, 0x0

    if-eqz v3, :cond_78

    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1391
    const/4 v2, 0x4

    .line 1393
    .local v2, "desiredRulesType":I
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 1394
    .local v4, "nsDesc":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1395
    .local v7, "firstSlash":I
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1397
    .local v6, "lastSlash":I
    if-le v6, v7, :cond_6c

    .line 1398
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1399
    .local v5, "nsLocID":Ljava/lang/String;
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1400
    .local v8, "nsRuleSetGroup":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1402
    .local v9, "nsRuleSetName":Ljava/lang/String;
    new-instance v10, Landroid/icu/util/ULocale;

    invoke-direct {v10, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v10, "nsLoc":Landroid/icu/util/ULocale;
    const-string v11, "SpelloutRules"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 1404
    const/4 v2, 0x1

    .line 1406
    .end local v5    # "nsLocID":Ljava/lang/String;
    :cond_6b
    goto :goto_6e

    .line 1407
    .end local v8    # "nsRuleSetGroup":Ljava/lang/String;
    .end local v9    # "nsRuleSetName":Ljava/lang/String;
    .end local v10    # "nsLoc":Landroid/icu/util/ULocale;
    :cond_6c
    move-object v10, p0

    .line 1408
    .restart local v10    # "nsLoc":Landroid/icu/util/ULocale;
    move-object v9, v4

    .line 1411
    .restart local v9    # "nsRuleSetName":Ljava/lang/String;
    :goto_6e
    new-instance v5, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {v5, v10, v2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 1412
    .local v5, "r":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {v5, v9}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    .line 1413
    nop

    .line 1414
    .end local v2    # "desiredRulesType":I
    .end local v4    # "nsDesc":Ljava/lang/String;
    .end local v6    # "lastSlash":I
    .end local v7    # "firstSlash":I
    .end local v9    # "nsRuleSetName":Ljava/lang/String;
    .end local v10    # "nsLoc":Landroid/icu/util/ULocale;
    .local v5, "format":Landroid/icu/text/NumberFormat;
    goto :goto_9b

    .line 1415
    .end local v5    # "format":Landroid/icu/text/NumberFormat;
    :cond_78
    new-instance v6, Landroid/icu/text/DecimalFormat;

    invoke-direct {v6, v0, v1, p1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    .line 1423
    .local v6, "f":Landroid/icu/text/DecimalFormat;
    const/4 v7, 0x4

    if-ne p1, v7, :cond_89

    .line 1424
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1425
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1426
    invoke-virtual {v6, v4}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 1428
    :cond_89
    if-ne p1, v2, :cond_90

    .line 1429
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v6, v2}, Landroid/icu/text/DecimalFormat;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V

    .line 1431
    :cond_90
    const/4 v2, 0x6

    if-ne p1, v2, :cond_9a

    .line 1432
    invoke-static {p0}, Landroid/icu/text/CurrencyPluralInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/icu/text/DecimalFormat;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V

    .line 1434
    :cond_9a
    move-object v5, v6

    .line 1439
    .end local v6    # "f":Landroid/icu/text/DecimalFormat;
    .restart local v5    # "format":Landroid/icu/text/NumberFormat;
    :goto_9b
    sget-object v2, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1440
    .local v2, "valid":Landroid/icu/util/ULocale;
    sget-object v4, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v4}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 1441
    .local v4, "actual":Landroid/icu/util/ULocale;
    invoke-virtual {v5, v2, v4}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1443
    return-object v5
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 1001
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_9

    .line 1002
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_9
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 1013
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_9

    .line 1014
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_9
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getCurrencyInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 716
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 738
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 727
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 566
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(I)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "style"    # I

    .line 604
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 592
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .registers 4
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    .line 1336
    if-ltz p1, :cond_f

    const/16 v0, 0x9

    if-gt p1, v0, :cond_f

    .line 1346
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/NumberFormat$NumberFormatShim;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0

    .line 1337
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 579
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;
    .param p1, "style"    # I

    .line 616
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getIntegerInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 667
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 704
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getIntegerInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 686
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getNumberInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 628
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 648
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getNumberInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 638
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method protected static whitelist test-api getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .registers 3
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I

    .line 1466
    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getPatternForStyle(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static greylist-max-o getPattern(Ljava/util/Locale;I)Ljava/lang/String;
    .registers 3
    .param p0, "forLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1456
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPatternForStyle(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .registers 5
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "choice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1479
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    .line 1480
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1481
    .local v1, "nsName":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Landroid/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "nsName"    # Ljava/lang/String;
    .param p2, "choice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "patternKey":Ljava/lang/String;
    packed-switch p2, :pswitch_data_72

    .line 1527
    goto :goto_2b

    .line 1524
    :pswitch_5
    const-string v0, "accountingFormat"

    .line 1525
    goto :goto_2d

    .line 1515
    :pswitch_8
    const-string v0, "currencyFormat"

    .line 1516
    goto :goto_2d

    .line 1521
    :pswitch_b
    const-string v0, "scientificFormat"

    .line 1522
    goto :goto_2d

    .line 1518
    :pswitch_e
    const-string v0, "percentFormat"

    .line 1519
    goto :goto_2d

    .line 1508
    :pswitch_11
    const-string v1, "cf"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, "cfKeyValue":Ljava/lang/String;
    if-eqz v1, :cond_24

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1510
    const-string v2, "accountingFormat"

    goto :goto_26

    :cond_24
    const-string v2, "currencyFormat"

    :goto_26
    move-object v0, v2

    .line 1511
    goto :goto_2d

    .line 1505
    .end local v1    # "cfKeyValue":Ljava/lang/String;
    :pswitch_28
    const-string v0, "decimalFormat"

    .line 1506
    goto :goto_2d

    .line 1528
    :goto_2b
    const-string v0, "decimalFormat"

    .line 1532
    :goto_2d
    nop

    .line 1533
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 1535
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberElements/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/patterns/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1537
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_70

    .line 1538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberElements/latn/patterns/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1541
    :cond_70
    return-object v2

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_28
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_28
        :pswitch_8
        :pswitch_28
        :pswitch_5
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static final whitelist test-api getPercentInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 750
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 772
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 761
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getScientificInstance()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 784
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Landroid/icu/util/ULocale;

    .line 806
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getScientificInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .registers 3
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 795
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;
    .registers 3

    .line 978
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_20

    .line 980
    :try_start_4
    const-string v0, "android.icu.text.NumberFormatServiceShim"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 981
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat$NumberFormatShim;

    sput-object v1, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 990
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_20

    .line 987
    :catch_13
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v0

    .line 985
    .local v0, "e":Ljava/util/MissingResourceException;
    throw v0

    .line 993
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_20
    :goto_20
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1561
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_18

    .line 1563
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1564
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1565
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1566
    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1568
    :cond_18
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 1570
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1576
    :cond_21
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v2, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v2, :cond_38

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-gt v0, v2, :cond_38

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v0, :cond_38

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v0, :cond_38

    .line 1581
    iput v1, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    .line 1582
    return-void

    .line 1579
    :cond_38
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .registers 3
    .param p0, "factory"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    .line 1033
    if-eqz p0, :cond_b

    .line 1036
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o unregister(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "registryKey"    # Ljava/lang/Object;

    .line 1047
    if-eqz p0, :cond_f

    .line 1051
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_8

    .line 1052
    const/4 v0, 0x0

    return v0

    .line 1055
    :cond_8
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1048
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registryKey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_8

    move v0, v1

    goto :goto_b

    .line 1595
    :cond_8
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v0, v0

    :goto_b
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1596
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_13

    move v0, v1

    goto :goto_16

    .line 1597
    :cond_13
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v0, v0

    :goto_16
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    .line 1598
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_1e

    move v0, v1

    goto :goto_21

    .line 1599
    :cond_1e
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v0, v0

    :goto_21
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    .line 1600
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_28

    goto :goto_2b

    .line 1601
    :cond_28
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v0

    :goto_2b
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    .line 1602
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1603
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 1101
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    .line 1102
    .local v0, "other":Landroid/icu/text/NumberFormat;
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1080
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1081
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1082
    return v1

    .line 1083
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1084
    return v0

    .line 1085
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/text/NumberFormat;

    .line 1086
    .local v2, "other":Landroid/icu/text/NumberFormat;
    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v2, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v2, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v2, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v2, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_47

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v2, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_47

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v2, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_47

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    iget-boolean v4, v2, Landroid/icu/text/NumberFormat;->parseStrict:Z

    if-ne v3, v4, :cond_47

    iget-object v3, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    iget-object v4, v2, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-ne v3, v4, :cond_47

    move v0, v1

    :cond_47
    return v0
.end method

.method public final whitelist test-api format(D)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # D

    .line 296
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method public final whitelist test-api format(J)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # J

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 306
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 307
    .local v1, "pos":Ljava/text/FieldPosition;
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist test-api format(Landroid/icu/math/BigDecimal;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Landroid/icu/math/BigDecimal;

    .line 331
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    return-object v0
.end method

.method public final whitelist test-api format(Landroid/icu/util/CurrencyAmount;)Ljava/lang/String;
    .registers 5
    .param p1, "currAmt"    # Landroid/icu/util/CurrencyAmount;

    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    return-object v0
.end method

.method public final whitelist test-api format(Ljava/math/BigDecimal;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/math/BigDecimal;

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    return-object v0
.end method

.method public final whitelist test-api format(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/math/BigInteger;

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public abstract whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract whitelist test-api format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist test-api format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "currAmt"    # Landroid/icu/util/CurrencyAmount;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    .local v0, "save":Landroid/icu/util/Currency;
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    .line 389
    .local v1, "curr":Landroid/icu/util/Currency;
    invoke-virtual {v1, v0}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 390
    .local v2, "same":Z
    if-nez v2, :cond_12

    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 391
    :cond_12
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 392
    if-nez v2, :cond_1e

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 393
    .end local v0    # "save":Landroid/icu/util/Currency;
    .end local v1    # "curr":Landroid/icu/util/Currency;
    .end local v2    # "same":Z
    :cond_1e
    monitor-exit p0

    .line 394
    return-object p2

    .line 393
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 261
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    .line 262
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 263
    :cond_10
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1c

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1c
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_28

    .line 266
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 267
    :cond_28
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_34

    .line 268
    move-object v0, p1

    check-cast v0, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 269
    :cond_34
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v0, :cond_40

    .line 270
    move-object v0, p1

    check-cast v0, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 271
    :cond_40
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_50

    .line 272
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 274
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract whitelist test-api format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .registers 3
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    .line 547
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz v0, :cond_b

    .line 548
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 547
    :goto_d
    return-object v0
.end method

.method public whitelist test-api getCurrency()Landroid/icu/util/Currency;
    .registers 2

    .line 1270
    iget-object v0, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method protected greylist-max-o getEffectiveCurrency()Landroid/icu/util/Currency;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1284
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    .line 1285
    .local v0, "c":Landroid/icu/util/Currency;
    if-nez v0, :cond_18

    .line 1286
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1287
    .local v1, "uloc":Landroid/icu/util/ULocale;
    if-nez v1, :cond_14

    .line 1288
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1290
    :cond_14
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    .line 1292
    .end local v1    # "uloc":Landroid/icu/util/ULocale;
    :cond_18
    return-object v0
.end method

.method public whitelist test-api getMaximumFractionDigits()I
    .registers 2

    .line 1202
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMaximumIntegerDigits()I
    .registers 2

    .line 1142
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumFractionDigits()I
    .registers 2

    .line 1232
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumIntegerDigits()I
    .registers 2

    .line 1172
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getRoundingMode()I
    .registers 3

    .line 1303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1065
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isGroupingUsed()Z
    .registers 2

    .line 1115
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public whitelist test-api isParseIntegerOnly()Z
    .registers 2

    .line 475
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public whitelist test-api isParseStrict()Z
    .registers 2

    .line 524
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)Ljava/lang/Number;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 432
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 433
    .local v1, "result":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_11

    .line 437
    return-object v1

    .line 434
    :cond_11
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public abstract whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public whitelist test-api parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 459
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 460
    .local v0, "n":Ljava/lang/Number;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_15

    :cond_c
    new-instance v1, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    :goto_15
    return-object v1
.end method

.method public final whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 288
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 4
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 534
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_a

    .line 535
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 537
    :cond_a
    return-void
.end method

.method public whitelist test-api setCurrency(Landroid/icu/util/Currency;)V
    .registers 2
    .param p1, "theCurrency"    # Landroid/icu/util/Currency;

    .line 1262
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    .line 1263
    return-void
.end method

.method public whitelist test-api setGroupingUsed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 1125
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    .line 1126
    return-void
.end method

.method public whitelist test-api setMaximumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1217
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1218
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_11

    .line 1219
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1220
    :cond_11
    return-void
.end method

.method public whitelist test-api setMaximumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1157
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1158
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_11

    .line 1159
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1160
    :cond_11
    return-void
.end method

.method public whitelist test-api setMinimumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1247
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1248
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_11

    .line 1249
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1250
    :cond_11
    return-void
.end method

.method public whitelist test-api setMinimumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1187
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1188
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_11

    .line 1189
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1190
    :cond_11
    return-void
.end method

.method public whitelist test-api setParseIntegerOnly(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 490
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 491
    return-void
.end method

.method public whitelist test-api setParseStrict(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 515
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    .line 516
    return-void
.end method

.method public whitelist test-api setRoundingMode(I)V
    .registers 4
    .param p1, "roundingMode"    # I

    .line 1316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

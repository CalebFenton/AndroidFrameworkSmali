.class public Landroid/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormatSymbols$CacheData;,
        Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;
    }
.end annotation


# static fields
.field public static final whitelist test-api CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final whitelist test-api CURRENCY_SPC_INSERT:I = 0x2

.field public static final whitelist test-api CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final greylist-max-o DEF_DECIMAL_SEPARATOR:C = '.'

.field private static final greylist-max-o DEF_DIGIT_CHARS_ARRAY:[C

.field private static final greylist-max-o DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o DEF_GROUPING_SEPARATOR:C = ','

.field private static final greylist-max-o DEF_MINUS_SIGN:C = '-'

.field private static final greylist-max-o DEF_PERCENT:C = '%'

.field private static final greylist-max-o DEF_PERMILL:C = '\u2030'

.field private static final greylist-max-o DEF_PLUS_SIGN:C = '+'

.field private static final greylist-max-o LATIN_NUMBERING_SYSTEM:Ljava/lang/String; = "latn"

.field private static final greylist-max-o NUMBER_ELEMENTS:Ljava/lang/String; = "NumberElements"

.field private static final greylist-max-o SYMBOLS:Ljava/lang/String; = "symbols"

.field private static final greylist-max-o SYMBOL_DEFAULTS:[Ljava/lang/String;

.field private static final greylist-max-o SYMBOL_KEYS:[Ljava/lang/String;

.field private static final greylist-max-o cachedLocaleData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o currentSerialVersion:I = 0xa

.field private static final whitelist serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private greylist-max-o NaN:Ljava/lang/String;

.field private greylist-max-o actualLocale:Landroid/icu/util/ULocale;

.field private blacklist approximatelyString:Ljava/lang/String;

.field private transient greylist-max-o codePointZero:I

.field private transient greylist-max-o currency:Landroid/icu/util/Currency;

.field private greylist-max-o currencyPattern:Ljava/lang/String;

.field private greylist-max-o currencySpcAfterSym:[Ljava/lang/String;

.field private greylist-max-o currencySpcBeforeSym:[Ljava/lang/String;

.field private greylist-max-o currencySymbol:Ljava/lang/String;

.field private greylist-max-o decimalSeparator:C

.field private greylist-max-o decimalSeparatorString:Ljava/lang/String;

.field private greylist-max-o digit:C

.field private greylist-max-o digitStrings:[Ljava/lang/String;

.field private greylist-max-o digits:[C

.field private greylist-max-o exponentMultiplicationSign:Ljava/lang/String;

.field private greylist-max-o exponentSeparator:Ljava/lang/String;

.field private greylist-max-o exponential:C

.field private greylist-max-o groupingSeparator:C

.field private greylist-max-o groupingSeparatorString:Ljava/lang/String;

.field private greylist-max-o infinity:Ljava/lang/String;

.field private greylist-max-o intlCurrencySymbol:Ljava/lang/String;

.field private greylist-max-o minusSign:C

.field private greylist-max-o minusString:Ljava/lang/String;

.field private greylist-max-o monetaryGroupingSeparator:C

.field private greylist-max-o monetaryGroupingSeparatorString:Ljava/lang/String;

.field private greylist-max-o monetarySeparator:C

.field private greylist-max-o monetarySeparatorString:Ljava/lang/String;

.field private greylist-max-o padEscape:C

.field private greylist-max-o patternSeparator:C

.field private greylist-max-o perMill:C

.field private greylist-max-o perMillString:Ljava/lang/String;

.field private greylist-max-o percent:C

.field private greylist-max-o percentString:Ljava/lang/String;

.field private greylist-max-o plusSign:C

.field private greylist-max-o plusString:Ljava/lang/String;

.field private greylist-max-o requestedLocale:Ljava/util/Locale;

.field private greylist-max-o serialVersionOnStream:I

.field private greylist-max-o sigDigit:C

.field private greylist-max-o ulocale:Landroid/icu/util/ULocale;

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;

.field private greylist-max-o zeroDigit:C


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSYMBOL_KEYS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->loadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 1238
    const-string v12, "approximatelySign"

    const-string v13, "list"

    const-string v0, "decimal"

    const-string v1, "group"

    const-string v2, "percentSign"

    const-string v3, "minusSign"

    const-string v4, "plusSign"

    const-string v5, "exponential"

    const-string v6, "perMille"

    const-string v7, "infinity"

    const-string v8, "nan"

    const-string v9, "currencyDecimal"

    const-string v10, "currencyGroup"

    const-string v11, "superscriptingExponent"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    .line 1259
    const-string v9, "8"

    const-string v10, "9"

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    .line 1262
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_84

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    .line 1278
    nop

    .line 1279
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1280
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1281
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1282
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1283
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1285
    const/16 v0, 0x2030

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\u00d7"

    const-string v13, "~"

    const-string v6, "E"

    const-string v8, "\u221e"

    const-string v9, "NaN"

    const/4 v10, 0x0

    const/4 v11, 0x0

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    .line 1889
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    return-void

    :array_84
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 55
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 56
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1884
    const/16 v1, 0xa

    iput v1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1900
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1884
    const/16 v1, 0xa

    iput v1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1900
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    .line 80
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 63
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 64
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 75
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    .line 76
    return-void
.end method

.method public static whitelist test-api forNumberingSystem(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 161
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static whitelist test-api forNumberingSystem(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 143
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 178
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 195
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCachedLocaleData(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 1345
    if-nez p1, :cond_4

    move-object v0, p0

    goto :goto_e

    :cond_4
    const-string v0, "numbers"

    invoke-virtual {p1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1346
    .local v0, "keyLocale":Landroid/icu/util/ULocale;
    :goto_e
    sget-object v1, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    return-object v1
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/DecimalFormatSymbols;
    .registers 1

    .line 93
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 125
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 109
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static blacklist getLocalizedPatternSeparator(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 1337
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->getCachedLocaleData(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    .line 1338
    .local v0, "data":Landroid/icu/text/DecimalFormatSymbols$CacheData;
    iget-object v1, v0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    return-object v1
.end method

.method private greylist-max-o initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .registers 3
    .param p1, "spcInfo"    # Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 1463
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->getBeforeSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1464
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->getAfterSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1465
    return-void
.end method

.method private greylist-max-o initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 1354
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1355
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    .line 1358
    invoke-static {p1, p2}, Landroid/icu/text/DecimalFormatSymbols;->getCachedLocaleData(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    .line 1360
    .local v0, "data":Landroid/icu/text/DecimalFormatSymbols$CacheData;
    iget-object v1, v0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Landroid/icu/util/ULocale;

    iget-object v2, v0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1361
    iget-object v1, v0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1362
    iget-object v1, v0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    .line 1365
    .local v1, "numberElements":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparatorString(Ljava/lang/String;)V

    .line 1366
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparatorString(Ljava/lang/String;)V

    .line 1368
    const/16 v3, 0x3b

    iput-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    .line 1369
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    .line 1370
    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    .line 1371
    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPlusSignString(Ljava/lang/String;)V

    .line 1372
    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 1373
    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    .line 1374
    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 1375
    const/16 v3, 0x8

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 1376
    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 1377
    const/16 v3, 0xa

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    .line 1378
    const/16 v3, 0xb

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setExponentMultiplicationSign(Ljava/lang/String;)V

    .line 1379
    const/16 v3, 0xc

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setApproximatelySignString(Ljava/lang/String;)V

    .line 1381
    const/16 v3, 0x23

    iput-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    .line 1382
    const/16 v3, 0x2a

    iput-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    .line 1383
    const/16 v3, 0x40

    iput-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 1385
    sget-object v3, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    invoke-interface {v3, v4, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v2

    .line 1386
    .local v2, "displayInfo":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    invoke-virtual {v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1388
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencyOrNull(Landroid/icu/util/Currency;Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;)V

    .line 1389
    return-void
.end method

.method private static greylist-max-o loadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .registers 14
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 1394
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    .line 1395
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    .line 1396
    .local v2, "digits":[Ljava/lang/String;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getRadix()I

    move-result v3

    if-ne v3, v1, :cond_40

    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v3

    if-nez v3, :cond_40

    .line 1397
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1398
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1400
    .local v3, "digitString":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_26
    if-ge v4, v1, :cond_3b

    .line 1401
    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 1402
    .local v6, "cp":I
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 1403
    .local v7, "nextOffset":I
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 1404
    move v5, v7

    .line 1400
    .end local v6    # "cp":I
    .end local v7    # "nextOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1406
    .end local v4    # "i":I
    .end local v5    # "offset":I
    :cond_3b
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1407
    .local v3, "nsName":Ljava/lang/String;
    goto :goto_44

    .line 1409
    .end local v3    # "nsName":Ljava/lang/String;
    :cond_40
    sget-object v2, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    .line 1410
    const-string v3, "latn"

    .line 1415
    .restart local v3    # "nsName":Ljava/lang/String;
    :goto_44
    nop

    .line 1416
    const-string v4, "android/icu/impl/data/icudata"

    invoke-static {v4, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 1418
    .local v4, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    .line 1420
    .local v5, "validLocale":Landroid/icu/util/ULocale;
    sget-object v6, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 1423
    .local v6, "numberElements":[Ljava/lang/String;
    new-instance v7, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;

    invoke-direct {v7, v6}, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;-><init>([Ljava/lang/String;)V

    .line 1425
    .local v7, "sink":Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;
    :try_start_5b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberElements/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "symbols"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_7d
    .catch Ljava/util/MissingResourceException; {:try_start_5b .. :try_end_7d} :catch_7e

    .line 1429
    goto :goto_7f

    .line 1426
    :catch_7e
    move-exception v8

    .line 1432
    :goto_7f
    const/4 v8, 0x0

    .line 1433
    .local v8, "hasNull":Z
    array-length v9, v6

    const/4 v10, 0x0

    move v11, v10

    :goto_83
    if-ge v11, v9, :cond_8e

    aget-object v12, v6, v11

    .line 1434
    .local v12, "entry":Ljava/lang/String;
    if-nez v12, :cond_8b

    .line 1435
    const/4 v8, 0x1

    .line 1436
    goto :goto_8e

    .line 1433
    .end local v12    # "entry":Ljava/lang/String;
    :cond_8b
    add-int/lit8 v11, v11, 0x1

    goto :goto_83

    .line 1439
    :cond_8e
    :goto_8e
    if-eqz v8, :cond_9d

    const-string v9, "latn"

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9d

    .line 1440
    const-string v9, "NumberElements/latn/symbols"

    invoke-virtual {v4, v9, v7}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 1444
    :cond_9d
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9e
    sget-object v11, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v11, v11

    if-ge v9, v11, :cond_b0

    .line 1445
    aget-object v11, v6, v9

    if-nez v11, :cond_ad

    .line 1446
    sget-object v11, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    aget-object v11, v11, v9

    aput-object v11, v6, v9

    .line 1444
    :cond_ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_9e

    .line 1452
    .end local v9    # "i":I
    :cond_b0
    const/16 v9, 0x9

    aget-object v11, v6, v9

    if-nez v11, :cond_ba

    .line 1453
    aget-object v10, v6, v10

    aput-object v10, v6, v9

    .line 1455
    :cond_ba
    aget-object v9, v6, v1

    if-nez v9, :cond_c3

    .line 1456
    const/4 v9, 0x1

    aget-object v9, v6, v9

    aput-object v9, v6, v1

    .line 1459
    :cond_c3
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {v1, v5, v2, v6}, Landroid/icu/text/DecimalFormatSymbols$CacheData;-><init>(Landroid/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1481
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1484
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 1487
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 1488
    const/16 v0, 0x45

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    .line 1490
    :cond_10
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    .line 1491
    const/16 v0, 0x2a

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    .line 1492
    const/16 v0, 0x2b

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 1493
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1500
    :cond_25
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_30

    .line 1506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1508
    :cond_30
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3d

    .line 1510
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    .line 1512
    :cond_3d
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_46

    .line 1514
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 1516
    :cond_46
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_60

    .line 1518
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez v0, :cond_53

    .line 1519
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1521
    :cond_53
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 1522
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1524
    :cond_5b
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1526
    :cond_60
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7d

    .line 1528
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 1529
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1531
    :cond_71
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 1532
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1535
    :cond_7d
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8b

    .line 1536
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    if-nez v0, :cond_8b

    .line 1537
    const-string v0, "\u00d7"

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1540
    :cond_8b
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v1, 0x9

    const/16 v2, 0xa

    if-ge v0, v1, :cond_125

    .line 1542
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    if-nez v0, :cond_dd

    .line 1543
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-eqz v0, :cond_be

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    array-length v0, v0

    if-ne v0, v2, :cond_be

    .line 1545
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 1546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ac
    if-ge v0, v2, :cond_bd

    .line 1547
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .end local v0    # "i":I
    :cond_bd
    goto :goto_dd

    .line 1550
    :cond_be
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 1551
    .local v0, "digit":C
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v1, :cond_c8

    .line 1552
    new-array v1, v2, [C

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    .line 1554
    :cond_c8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c9
    if-ge v1, v2, :cond_dd

    .line 1555
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v0, v3, v1

    .line 1556
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1557
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    .line 1554
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 1563
    .end local v0    # "digit":C
    .end local v1    # "i":I
    :cond_dd
    :goto_dd
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    if-nez v0, :cond_e9

    .line 1564
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 1566
    :cond_e9
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    if-nez v0, :cond_f5

    .line 1567
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 1569
    :cond_f5
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    if-nez v0, :cond_101

    .line 1570
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 1572
    :cond_101
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    if-nez v0, :cond_10d

    .line 1573
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 1575
    :cond_10d
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    if-nez v0, :cond_119

    .line 1576
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 1578
    :cond_119
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    if-nez v0, :cond_125

    .line 1579
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 1582
    :cond_125
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v0, v2, :cond_12d

    .line 1584
    const-string v0, "~"

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->approximatelyString:Ljava/lang/String;

    .line 1587
    :cond_12d
    iput v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1590
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    .line 1593
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method private blacklist setCurrencyOrNull(Landroid/icu/util/Currency;Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;)V
    .registers 5
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "displayInfo"    # Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    .line 863
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    .line 865
    if-nez p1, :cond_10

    .line 866
    const-string v0, "XXX"

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 867
    const-string v0, "\u00a4"

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 869
    return-void

    .line 872
    :cond_10
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 873
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object v0

    .line 876
    .local v0, "formatInfo":Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    if-eqz v0, :cond_36

    .line 877
    iget-object v1, v0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryDecimalSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 878
    iget-object v1, v0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    .line 879
    iget-object v1, v0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 881
    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1159
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1161
    :catch_5
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1173
    instance-of v0, p1, Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1174
    return v1

    .line 1176
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 1177
    return v0

    .line 1179
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/icu/text/DecimalFormatSymbols;

    .line 1180
    .local v2, "other":Landroid/icu/text/DecimalFormatSymbols;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    const/4 v4, 0x2

    if-gt v3, v4, :cond_32

    .line 1181
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v2, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1182
    return v1

    .line 1184
    :cond_20
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v2, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1185
    return v1

    .line 1180
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1189
    .end local v3    # "i":I
    :cond_32
    iget-object v3, v2, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v3, :cond_49

    .line 1190
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_37
    const/16 v4, 0xa

    if-ge v3, v4, :cond_48

    .line 1191
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v4, v4, v3

    iget-char v5, v2, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v5, v3

    if-eq v4, v5, :cond_45

    .line 1192
    return v1

    .line 1190
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .end local v3    # "i":I
    :cond_48
    goto :goto_54

    .line 1195
    :cond_49
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1196
    return v1

    .line 1199
    :cond_54
    :goto_54
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1206
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1208
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1209
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1210
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v3, v4, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1214
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->approximatelyString:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->approximatelyString:Ljava/lang/String;

    .line 1215
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1216
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_f2

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v4, v2, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v3, v4, :cond_f2

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1219
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    move v1, v0

    goto :goto_f3

    :cond_f2
    nop

    .line 1199
    :goto_f3
    return v1
.end method

.method public blacklist getApproximatelySignString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->approximatelyString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCodePointZero()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iget v0, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    return v0
.end method

.method public whitelist test-api getCurrency()Landroid/icu/util/Currency;
    .registers 2

    .line 833
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method public greylist-max-o getCurrencyPattern()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 993
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 800
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDecimalSeparator()C
    .registers 2

    .line 440
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public whitelist test-api getDecimalSeparatorString()Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDigit()C
    .registers 2

    .line 592
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public whitelist test-api getDigitStrings()[Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDigitStringsLocal()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDigits()[C
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public whitelist test-api getExponentMultiplicationSign()Ljava/lang/String;
    .registers 2

    .line 1000
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getExponentSeparator()Ljava/lang/String;
    .registers 2

    .line 1018
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getGroupingSeparator()C
    .registers 2

    .line 388
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public whitelist test-api getGroupingSeparatorString()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getInfinity()Ljava/lang/String;
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 816
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-r getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 1927
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    .line 1928
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 1927
    :goto_9
    return-object v0
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 1142
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api getMinusSign()C
    .registers 2

    .line 668
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public whitelist test-api getMinusSignString()Ljava/lang/String;
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMonetaryDecimalSeparator()C
    .registers 2

    .line 889
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public whitelist test-api getMonetaryDecimalSeparatorString()Ljava/lang/String;
    .registers 2

    .line 907
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMonetaryGroupingSeparator()C
    .registers 2

    .line 940
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return v0
.end method

.method public whitelist test-api getMonetaryGroupingSeparatorString()Ljava/lang/String;
    .registers 2

    .line 958
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNaN()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPadEscape()C
    .registers 2

    .line 1044
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    return v0
.end method

.method public whitelist test-api getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "itemType"    # I
    .param p2, "beforeCurrency"    # Z

    .line 1097
    if-ltz p1, :cond_11

    const/4 v0, 0x2

    if-gt p1, v0, :cond_11

    .line 1101
    if-eqz p2, :cond_c

    .line 1102
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1104
    :cond_c
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1099
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown currency spacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPatternSeparator()C
    .registers 2

    .line 609
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public whitelist test-api getPerMill()C
    .registers 2

    .line 491
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public whitelist test-api getPerMillString()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPercent()C
    .registers 2

    .line 542
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public whitelist test-api getPercentString()Ljava/lang/String;
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPlusSign()C
    .registers 2

    .line 725
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    return v0
.end method

.method public whitelist test-api getPlusSignString()Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSignificantDigit()C
    .registers 2

    .line 371
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    return v0
.end method

.method public whitelist test-api getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 1150
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getZeroDigit()C
    .registers 2

    .line 205
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1227
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 1228
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v1, v2

    .line 1229
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, v2

    .line 1230
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist setApproximatelySignString(Ljava/lang/String;)V
    .registers 4
    .param p1, "approximatelySignString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    if-eqz p1, :cond_5

    .line 792
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->approximatelyString:Ljava/lang/String;

    .line 793
    return-void

    .line 790
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input plus sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCurrency(Landroid/icu/util/Currency;)V
    .registers 5
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 852
    if-eqz p1, :cond_18

    .line 855
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 856
    return-void

    .line 858
    :cond_b
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    .line 859
    .local v0, "displayInfo":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencyOrNull(Landroid/icu/util/Currency;Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;)V

    .line 860
    return-void

    .line 853
    .end local v0    # "displayInfo":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .line 808
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public whitelist test-api setDecimalSeparator(C)V
    .registers 3
    .param p1, "decimalSeparator"    # C

    .line 448
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 449
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public whitelist test-api setDecimalSeparatorString(Ljava/lang/String;)V
    .registers 4
    .param p1, "decimalSeparatorString"    # Ljava/lang/String;

    .line 473
    if-eqz p1, :cond_18

    .line 476
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    goto :goto_17

    .line 481
    :cond_13
    const/16 v0, 0x2e

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 483
    :goto_17
    return-void

    .line 474
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input decimal separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDigit(C)V
    .registers 2
    .param p1, "digit"    # C

    .line 600
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    .line 601
    return-void
.end method

.method public whitelist test-api setDigitStrings([Ljava/lang/String;)V
    .registers 11
    .param p1, "digitStrings"    # [Ljava/lang/String;

    .line 305
    if-eqz p1, :cond_70

    .line 308
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_68

    .line 314
    new-array v0, v1, [Ljava/lang/String;

    .line 315
    .local v0, "tmpDigitStrings":[Ljava/lang/String;
    new-array v2, v1, [C

    .line 316
    .local v2, "tmpDigits":[C
    const/4 v3, -0x1

    .line 317
    .local v3, "tmpCodePointZero":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    const/4 v5, 0x0

    if-ge v4, v1, :cond_50

    .line 318
    aget-object v6, p1, v4

    .line 319
    .local v6, "digitStr":Ljava/lang/String;
    if-eqz v6, :cond_48

    .line 322
    aput-object v6, v0, v4

    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1f

    .line 325
    const/4 v5, -0x1

    .line 326
    .local v5, "cp":I
    const/4 v7, 0x0

    .local v7, "cc":I
    goto :goto_29

    .line 328
    .end local v5    # "cp":I
    .end local v7    # "cc":I
    :cond_1f
    aget-object v7, p1, v4

    invoke-static {v7, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 329
    .restart local v5    # "cp":I
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    .line 331
    .restart local v7    # "cc":I
    :goto_29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_43

    .line 334
    const/4 v8, 0x1

    if-ne v7, v8, :cond_38

    if-eqz v2, :cond_38

    .line 335
    int-to-char v8, v5

    aput-char v8, v2, v4

    goto :goto_39

    .line 337
    :cond_38
    const/4 v2, 0x0

    .line 340
    :goto_39
    if-nez v4, :cond_3d

    .line 341
    move v3, v5

    goto :goto_45

    .line 342
    :cond_3d
    add-int v8, v3, v4

    if-eq v5, v8, :cond_45

    .line 343
    const/4 v3, -0x1

    goto :goto_45

    .line 348
    :cond_43
    const/4 v3, -0x1

    .line 349
    const/4 v2, 0x0

    .line 317
    .end local v5    # "cp":I
    .end local v6    # "digitStr":Ljava/lang/String;
    .end local v7    # "cc":I
    :cond_45
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 320
    .restart local v6    # "digitStr":Ljava/lang/String;
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "The input digit string array contains a null element"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v4    # "i":I
    .end local v6    # "digitStr":Ljava/lang/String;
    :cond_50
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 354
    iput v3, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    .line 356
    if-nez v2, :cond_61

    .line 358
    sget-object v1, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    aget-char v1, v1, v5

    iput-char v1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 359
    sget-object v1, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    goto :goto_67

    .line 361
    :cond_61
    aget-char v1, v2, v5

    iput-char v1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 362
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    .line 364
    :goto_67
    return-void

    .line 309
    .end local v0    # "tmpDigitStrings":[Ljava/lang/String;
    .end local v2    # "tmpDigits":[C
    .end local v3    # "tmpCodePointZero":I
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of digit strings is not 10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input digit string array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setExponentMultiplicationSign(Ljava/lang/String;)V
    .registers 2
    .param p1, "exponentMultiplicationSign"    # Ljava/lang/String;

    .line 1007
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1008
    return-void
.end method

.method public whitelist test-api setExponentSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "exp"    # Ljava/lang/String;

    .line 1029
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1030
    return-void
.end method

.method public whitelist test-api setGroupingSeparator(C)V
    .registers 3
    .param p1, "groupingSeparator"    # C

    .line 397
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 398
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public whitelist test-api setGroupingSeparatorString(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupingSeparatorString"    # Ljava/lang/String;

    .line 422
    if-eqz p1, :cond_18

    .line 425
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    goto :goto_17

    .line 430
    :cond_13
    const/16 v0, 0x2c

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 432
    :goto_17
    return-void

    .line 423
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input grouping separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInfinity(Ljava/lang/String;)V
    .registers 2
    .param p1, "infinity"    # Ljava/lang/String;

    .line 638
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public whitelist test-api setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .line 824
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 825
    return-void
.end method

.method final greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 1949
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-ne v2, v0, :cond_12

    .line 1956
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 1957
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    .line 1958
    return-void

    .line 1951
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMinusSign(C)V
    .registers 3
    .param p1, "minusSign"    # C

    .line 678
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    .line 679
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public whitelist test-api setMinusSignString(Ljava/lang/String;)V
    .registers 4
    .param p1, "minusSignString"    # Ljava/lang/String;

    .line 703
    if-eqz p1, :cond_18

    .line 706
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 707
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_17

    .line 711
    :cond_13
    const/16 v0, 0x2d

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    .line 713
    :goto_17
    return-void

    .line 704
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input minus sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setMonetaryDecimalSeparator(C)V
    .registers 3
    .param p1, "sep"    # C

    .line 897
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 898
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public whitelist test-api setMonetaryDecimalSeparatorString(Ljava/lang/String;)V
    .registers 4
    .param p1, "sep"    # Ljava/lang/String;

    .line 922
    if-eqz p1, :cond_18

    .line 925
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 927
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto :goto_17

    .line 930
    :cond_13
    const/16 v0, 0x2e

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 932
    :goto_17
    return-void

    .line 923
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input monetary decimal separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setMonetaryGroupingSeparator(C)V
    .registers 3
    .param p1, "sep"    # C

    .line 948
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 949
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 950
    return-void
.end method

.method public whitelist test-api setMonetaryGroupingSeparatorString(Ljava/lang/String;)V
    .registers 4
    .param p1, "sep"    # Ljava/lang/String;

    .line 973
    if-eqz p1, :cond_18

    .line 976
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 978
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_17

    .line 981
    :cond_13
    const/16 v0, 0x2c

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 983
    :goto_17
    return-void

    .line 974
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input monetary grouping separator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setNaN(Ljava/lang/String;)V
    .registers 2
    .param p1, "NaN"    # Ljava/lang/String;

    .line 657
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 658
    return-void
.end method

.method public whitelist test-api setPadEscape(C)V
    .registers 2
    .param p1, "c"    # C

    .line 1058
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    .line 1059
    return-void
.end method

.method public whitelist test-api setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .registers 7
    .param p1, "itemType"    # I
    .param p2, "beforeCurrency"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .line 1124
    if-ltz p1, :cond_25

    const/4 v0, 0x2

    if-gt p1, v0, :cond_25

    .line 1128
    if-eqz p2, :cond_16

    .line 1129
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    goto :goto_24

    .line 1132
    :cond_16
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 1135
    :goto_24
    return-void

    .line 1126
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown currency spacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setPatternSeparator(C)V
    .registers 2
    .param p1, "patternSeparator"    # C

    .line 618
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    .line 619
    return-void
.end method

.method public whitelist test-api setPerMill(C)V
    .registers 3
    .param p1, "perMill"    # C

    .line 499
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    .line 500
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public whitelist test-api setPerMillString(Ljava/lang/String;)V
    .registers 4
    .param p1, "perMillString"    # Ljava/lang/String;

    .line 524
    if-eqz p1, :cond_18

    .line 527
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    goto :goto_17

    .line 532
    :cond_13
    const/16 v0, 0x2030

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    .line 534
    :goto_17
    return-void

    .line 525
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input permille string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setPercent(C)V
    .registers 3
    .param p1, "percent"    # C

    .line 550
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public whitelist test-api setPercentString(Ljava/lang/String;)V
    .registers 4
    .param p1, "percentString"    # Ljava/lang/String;

    .line 575
    if-eqz p1, :cond_18

    .line 578
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    goto :goto_17

    .line 583
    :cond_13
    const/16 v0, 0x25

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    .line 585
    :goto_17
    return-void

    .line 576
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input percent sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setPlusSign(C)V
    .registers 3
    .param p1, "plus"    # C

    .line 737
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 738
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public whitelist test-api setPlusSignString(Ljava/lang/String;)V
    .registers 4
    .param p1, "plusSignString"    # Ljava/lang/String;

    .line 762
    if-eqz p1, :cond_18

    .line 765
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 767
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    goto :goto_17

    .line 770
    :cond_13
    const/16 v0, 0x2b

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 772
    :goto_17
    return-void

    .line 763
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The input plus sign is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSignificantDigit(C)V
    .registers 2
    .param p1, "sigDigit"    # C

    .line 379
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 380
    return-void
.end method

.method public whitelist test-api setZeroDigit(C)V
    .registers 6
    .param p1, "zeroDigit"    # C

    .line 228
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 232
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 233
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    .line 236
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 237
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char p1, v0, v2

    .line 240
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_24
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3a

    .line 241
    add-int v1, p1, v0

    int-to-char v1, v1

    .line 242
    .local v1, "d":C
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 243
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v1, v2, v0

    .line 240
    .end local v1    # "d":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 247
    .end local v0    # "i":I
    :cond_3a
    iput p1, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    .line 248
    return-void
.end method
